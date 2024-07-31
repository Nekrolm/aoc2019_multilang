(defvar Tape #(1 9 10 3 2 3 11 0 99 30 40 50))

(defun eval_op_impl (op arg1 arg2)
    (case op
       (1 (+ arg1 arg2))
       (2 (* arg1 arg2))
    )
)

(defun exec_op (tape op arg1_idx arg2_idx output_idx) 
    (setq arg1 (svref tape arg1_idx))
    (setq arg2 (svref tape arg2_idx))
    (setf (svref tape output_idx) (eval_op_impl op arg1 arg2))
)

(defun run_tape (tape)
    (loop named run
        for idx from 0 to (- (length tape) 1) by 4
        do 
        (setq op (svref tape idx))
        (if (= op 99) (return-from run))
        (setq arg1_idx (svref tape (+ idx 1)))
        (setq arg2_idx (svref tape (+ idx 2)))
        (setq output_idx (svref tape (+ idx 3)))
        (exec_op tape op arg1_idx arg2_idx output_idx)
    )
    tape
)


(defun generate_input_pairs (N)
    (loop for x from 0 to N
        append (loop for y from 0 to N
            collect (list x y)
        )
    )
)

(defun solve (tape)
    (loop for x_y in (generate_input_pairs 99) do
        (setq local_tape (copy-seq Tape))
        (destructuring-bind (noun verb) x_y
            (setf (svref local_tape 1) noun)
            (setf (svref local_tape 2) verb)
            (let ((output (svref (run_tape local_tape) 0)))
                (if (= output 19690720)
                    (return-from solve (+ (* 100 noun) verb))
                )
            )
        )
    )
)

(print (solve Tape))