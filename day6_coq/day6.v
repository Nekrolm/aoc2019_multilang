Require Import List.
Import ListNotations.
Require Import NArith.
Require Import Nnat.

(* Coq doesn't support IO. Put the puzzle input in definitions below *)

Inductive vertex:  Type := 
| V_SAN
| V_YOU
.

Definition eq_vertex (v1 v2 : vertex) : bool :=
match v1, v2 with
| V_SAN, V_SAN => true
| V_YOU, V_YOU => true
| _, _ => false
end.

Definition neq_vertex (v1 v2: vertex) := negb (eq_vertex v1 v2).

Infix "=" := eq_vertex (at level 70, no associativity).
Infix "<>" := neq_vertex (at level 70, no associativity).

Definition next (v: vertex) : list vertex := 
match v with
| V_SAN => []
| V_YOU => [V_SAN]
end.

Definition adjucent (v: vertex) : list vertex := 
match v with
| V_SAN => [V_YOU]
| V_YOU => [V_SAN]
end.


Definition list_sum (l: list N) := fold_right N.add 0%N l.

Fixpoint Solve (max_d: nat) (start: vertex) (acc_d: N) :N := 
    match max_d with
       | 0 => acc_d
       | S d => let child_solutions := map (fun n => Solve d n (acc_d + 1)) (next start)
            in acc_d + list_sum child_solutions
    end.

(* Compute Solve 1200 V_COM 0. *)

Fixpoint traverse (max_d: nat) (cur: vertex) (prev: vertex) (dest: vertex): N :=
    match max_d with
    | 0 => 99999%N
    | S d => if cur = dest then
                0%N
             else
                let next_vert_list := filter (fun v => v <> prev) (adjucent cur) in
                    let steps := map (fun v => traverse d v cur dest) next_vert_list in
                    1 + fold_right N.min 99999%N steps
    end.

(* And substract 2 from the result *)
Compute traverse 1200 V_YOU V_YOU V_SAN. 
