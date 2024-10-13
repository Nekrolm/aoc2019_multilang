package main

import (
	"bytes"
	"container/heap"
	"container/list"
	"embed"
	"fmt"
)

//go:embed input.txt
//go:embed test.txt
var in_fs embed.FS

// 1. Compute shortests distances for each key pair ignoring doors
// 2. Compute set of keys needed to travel from one key to another
// 3. Brute force the solution, trying all available rotes, rejecting bad ones

type Point struct {
	x int
	y int
}

type DistanceRequirements struct {
	distance          int
	keys_requirements uint32
}

func to_lower_byte(b byte) byte {
	return b - byte('A') + byte('a')
}

// '#' means wall
// '.' is an empty tile
// Any capital latin on the way from start must be inserted into keys_requirements for the corresponding tile
func bfs(start Point, maze [][]byte, wp2id map[byte]int) [][]DistanceRequirements {
	directions := []Point{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}

	rows := len(maze)
	cols := len(maze[0])

	// Initialize the result matrix and visited array
	result := make([][]DistanceRequirements, rows)
	for i := range result {
		result[i] = make([]DistanceRequirements, cols)
		for j := range result[i] {
			result[i][j].distance = -1 // -1 to signify unvisited
			result[i][j].keys_requirements = 0
		}
	}

	// BFS queue
	queue := list.New()
	queue.PushBack(start)
	result[start.x][start.y].distance = 0

	for queue.Len() > 0 {
		// Pop the first element in the queue
		front := queue.Remove(queue.Front()).(Point)
		currentDistance := result[front.x][front.y].distance
		currentKeys := result[front.x][front.y].keys_requirements

		// Explore neighbors in 4 directions
		for _, direction := range directions {
			next := Point{front.x + direction.x, front.y + direction.y}

			// Check if the next position is within bounds
			if next.x < 0 || next.x >= rows || next.y < 0 || next.y >= cols {
				continue
			}

			next_tile := maze[next.x][next.y]

			// If it's a wall or already visited, skip it
			if next_tile == '#' || result[next.x][next.y].distance != -1 {
				continue
			}

			// Initialize the keys and distance for the next tile
			result[next.x][next.y].distance = currentDistance + 1
			result[next.x][next.y].keys_requirements = currentKeys

			// If the tile contains a capital letter, add it to key requirements
			if next_tile >= 'A' && next_tile <= 'Z' {
				result[next.x][next.y].keys_requirements |= 1 << wp2id[to_lower_byte(next_tile)]
			}

			// Add the next tile to the BFS queue
			queue.PushBack(next)
		}
	}
	return result
}

func make_waypoints(maze [][]byte) map[byte]Point {
	waypoints := make(map[byte]Point)
	for x, row := range maze {
		for y, tile := range row {
			switch tile {
			case byte('.'):
				continue
			case byte('#'):
				continue
			default:
				waypoints[tile] = Point{x: x, y: y}
			}
		}
	}
	return waypoints
}

func make_waypoint_to_id(waypoints map[byte]Point) map[byte]int {

	waypoint_to_id := make(map[byte]int)
	no_items := 0
	for wp := range waypoints {
		if wp == byte('@') || (wp >= byte('a') && wp <= byte('z')) {
			waypoint_to_id[wp] = no_items
			no_items++
		}
	}
	return waypoint_to_id
}

func can_pass(requirements uint32,
	collected_keys uint32) bool {
	return (requirements & collected_keys) == requirements
}

func estimate_min_steps(distances [][]DistanceRequirements,
	visited_ids uint32,
	next_id int,
	number_of_vertex int,
) int {
	number_of_vertex_to_visit := number_of_vertex - 1

	min_len := 81 * 81

	for from := 0; from < number_of_vertex; from++ {
		if visited_ids&(1<<from) != 0 {
			number_of_vertex_to_visit--
			continue
		}
		for to := 0; to < number_of_vertex; to++ {
			if visited_ids&(1<<to) != 0 || to == next_id || to == from {
				continue
			}
			edge_len := distances[from][to].distance
			min_len = min(min_len, edge_len)
		}
	}

	// fmt.Printf("Min edge: %d\n", min_len)

	return min_len * max(number_of_vertex_to_visit, 0)

}


func all_visited(mask uint32, n int) bool {
	return (mask + 1) == 1<<n
}

type State struct {
	keys       uint32
	current_id int
}

// An Item is something we manage in a priority queue.
type Item struct {
	value    State // The value of the item; arbitrary.
	distance int   // The priority of the item in the queue.
	estimate int
	// The index is needed by update and is maintained by the heap.Interface methods.
	index int // The index of the item in the heap.
}

// A PriorityQueue implements heap.Interface and holds Items.
type PriorityQueue []*Item

func (pq PriorityQueue) Len() int { return len(pq) }

func (pq PriorityQueue) Less(i, j int) bool {
	return pq[i].distance+pq[i].estimate < pq[j].distance+pq[j].estimate
}

func (pq PriorityQueue) Swap(i, j int) {
	pq[i], pq[j] = pq[j], pq[i]
	pq[i].index = i
	pq[j].index = j
}

func (pq *PriorityQueue) Push(x any) {
	n := len(*pq)
	item := x.(*Item)
	item.index = n
	*pq = append(*pq, item)
}

func (pq *PriorityQueue) Pop() any {
	old := *pq
	n := len(old)
	item := old[n-1]
	old[n-1] = nil  // don't stop the GC from reclaiming the item eventually
	item.index = -1 // for safety
	*pq = old[0 : n-1]
	return item
}

// update modifies the priority and value of an Item in the queue.
func (pq *PriorityQueue) update(item *Item, value State, distance int) {
	item.value = value
	item.distance = distance
	heap.Fix(pq, item.index)
}

func solve_with_pq(distances [][]DistanceRequirements,
	n int,
	start_id int,
) int {
	pq := make(PriorityQueue, 0)
	heap.Init(&pq)
	best_state := make(map[uint64]*Item)
	start_item := &Item{
		value:    State{keys: 1 << start_id, current_id: start_id},
		distance: 0,
	}
	best_state[(1<<start_id)|(uint64(start_id)<<32)] = start_item
	heap.Push(&pq, start_item)

	for pq.Len() > 0 {
		cur_state := heap.Pop(&pq).(*Item)
		if all_visited(cur_state.value.keys, n) {
			return cur_state.distance
		}

		visited_ids := cur_state.value.keys
		current_id := cur_state.value.current_id
		for next_id := 0; next_id < n; next_id++ {
			if visited_ids&(1<<uint32(next_id)) == 0 {
				next_keys := visited_ids | (1 << uint32(next_id))
				if can_pass(distances[current_id][next_id].keys_requirements, visited_ids) {
					new_distance := cur_state.distance + distances[current_id][next_id].distance
					item, visited := best_state[uint64(next_keys)|uint64(next_id)<<32]
					if visited && item.distance > new_distance {
						pq.update(item, State{
							keys:       next_keys,
							current_id: next_id,
						}, new_distance)
					} else if !visited {
						new_item := &Item{
							value: State{
								keys:       next_keys,
								current_id: next_id,
							},
							distance: new_distance,
						}
						heap.Push(&pq, new_item)
						best_state[uint64(next_keys)|uint64(next_id)<<32] = new_item
					}
				}
			}
		}
	}

	return -42
}

func main() {
	data, _ := in_fs.ReadFile("test.txt")
	// data, _ := in_fs.ReadFile("input.txt")

	maze := bytes.Split(data, []byte("\n"))

	// fmt.Printf("File Read\n")
	wp := make_waypoints(maze)
	// fmt.Printf("Made waypoints")
	wp2id := make_waypoint_to_id(wp)

	// fmt.Printf("made waypoints2id\n")

	distance_requirements := make([][]DistanceRequirements, len(wp2id))
	for point_name, id := range wp2id {
		start_coord := wp[point_name]
		distance_requirements[id] = make([]DistanceRequirements, len(wp2id))
		// fmt.Printf("processing: %c\n", point_name)
		all_distances := bfs(start_coord, maze, wp2id)
		for dst_point_name, dst_id := range wp2id {
			dst_coord := wp[dst_point_name]
			distance_requirements[id][dst_id] = all_distances[dst_coord.x][dst_coord.y]
		}
	}

	best_solution := solve_with_pq(distance_requirements, len(wp2id), wp2id[byte('@')])
	fmt.Printf("min steps: %d\n", best_solution)
}
