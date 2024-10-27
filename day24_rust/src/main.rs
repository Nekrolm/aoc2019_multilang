use bevy::{
    math::bounding::{Aabb2d, BoundingCircle, BoundingVolume, IntersectsVolume},
    prelude::*,
    sprite::MaterialMesh2dBundle,
};


const INIT: &str = r#"
..#.#..#.#
.#.##.#.##
...#....#.
...##...##
#.####.###
..#.#..#.#
.#.##.#.##
...#....#.
...##...##
#.####.###
"#;

const ROWS: usize = 10;
const COLS: usize = 10;


type Grid = [[bool; COLS]; ROWS];

fn make_grid() -> Grid {
    INIT.trim()
        .split("\n")
        .take(ROWS)
        .map(|line| {
            let row: [bool; COLS] = line
                .chars()
                .take(COLS)
                .map(|c| c == '#')
                .collect::<Vec<_>>()
                .try_into()
                .unwrap();
            row
        })
        .collect::<Vec<_>>()
        .try_into()
        .unwrap()
}

fn evolve(grid: Grid) -> Grid {
    const OFS: [(usize, usize); 4] = [( 0_usize.wrapping_sub(1), 0), (1, 0), (0, 0_usize.wrapping_sub(1)), (0, 1)];


    let count_alive = |i:usize, j: usize| -> usize {
        OFS.into_iter().filter_map(|(di, dj)| {
            let ii = di.wrapping_add(i);
            let jj = dj.wrapping_add(j);
            grid.get(ii).and_then(|row| row.get(jj))
            .map(|&x| x as usize)
        })
        .sum()
    };

    let mut result = Grid::default();
    for i in 0..ROWS {
        for j in 0..COLS {
            let alive_around = count_alive(i, j);
            result[i][j] = match grid[i][j] {
                true if alive_around == 1 => true,
                false if alive_around == 1 || alive_around == 2 => true,
                _ => false,
            }
        }
    }
    result
}

fn rating(grid: &Grid) -> usize {
    grid.into_iter().flatten().enumerate().map(|(idx, &val)| {
        (val as usize) << idx
    }).sum()
}

// fn main() {
//     let mut seen = vec![false; 1 << 25];
//     let mut grid = make_grid();
//     while !std::mem::replace(&mut seen[rating(&grid)], true) {
//         grid = evolve(grid)
//     }
//     println!("{}", rating(&grid));
// }


const BACKGROUND_COLOR: Color = Color::srgb(0.9, 0.9, 0.9);
const BUG_COLOR: Color = Color::srgb(0.0, 0.0, 0.0);


#[derive(Bundle)]
struct CellBundle(SpriteBundle);

#[derive(Component, Copy, Clone)]
struct Cell((usize, usize));

#[derive(Resource, Deref, DerefMut)]
struct TileGrid(Grid);

fn update_cells(grid: Res<TileGrid>, mut query: Query<(&mut Sprite, &Cell), With<Cell>>,) {
    for  (mut sprite, cell) in query.iter_mut() {
        let &Cell((i, j)) = cell;
        let alive = grid.0[i][j];
        sprite.color = if alive {
            BUG_COLOR
        } else {
            BACKGROUND_COLOR
        };
    }
}


// Add the game's entities to our world
fn setup(
    mut commands: Commands,
) {
    // Camera
    commands.spawn(Camera2dBundle::default());

    for i in 0..ROWS {
        for j in 0..COLS {
            commands.spawn(
                (
                    SpriteBundle {
                        transform: Transform {
                            translation: Vec3::new(
                                j as f32 - COLS as f32 / 2.0 ,
                                i as f32 - ROWS as f32 / 2.0,
                                0.0
                            ) * 35.0,
                            scale: Vec3::new(30., 30., 0.),
                            ..Default::default()
                        },
                        sprite: Sprite {
                            color: BACKGROUND_COLOR,
                            ..Default::default()
                        },
                        ..Default::default()
                    },
                    Cell((i, j))
                )
            );
        }
    }
}

fn update_grid(mut grid: ResMut<TileGrid>) {
    *grid = TileGrid(evolve(grid.0))
}



fn main() {
    App::new()
        .add_plugins(DefaultPlugins)
        .insert_resource(TileGrid(make_grid()))
        .insert_resource(Time::<Fixed>::from_duration(std::time::Duration::from_secs(1)))
        .add_systems(Startup, setup)
        // Add our gameplay simulation systems to the fixed timestep schedule
        .add_systems(
            FixedUpdate,
            (
                update_grid,
                update_cells
            )
                // `chain`ing systems together runs them in order
                .chain(),
        )
        .run();
}
