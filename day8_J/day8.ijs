input =: 'Put your input here'
n =: $input

images =: 0 { (0 |: > ((n % (25 * 6)) ; 6 ; 25)) ($,) input

images

zeros_mask =: ((*/)@: $) ($,) ('0' = ])
zeros_cnt =: (+/)@: zeros_mask

ones_mask =: ((*/)@: $) ($,) ('1' = ])
ones_cnt =: (+/)@: ones_mask

twos_mask =: ((*/)@: $) ($,) ('2' = ])
twos_cnt =: (+/)@: twos_mask

indexes =: i. (0 { ($ images))
get_image =: monad define 
	y { images
)

boxed_images =: get_image &.> indexes

zeros_in_images =: > (zeros_cnt &.> boxed_images)
ones_in_images =: > (ones_cnt &.> boxed_images)
twos_in_images =: > (twos_cnt &.> boxed_images)

min_zeros =: <. / zeros_in_images
min_mask =: min_zeros = zeros_in_images

part_one_answer =: +/ ((min_mask * ones_in_images) * (min_mask * twos_in_images))

part_one_answer

display =: |. boxed_images

draw =: [ ^: ('2'= ])

draw_boxed =: dyad define 
    <((>x) draw"0 (>y))
)

result =:  >(draw_boxed/display)

result

