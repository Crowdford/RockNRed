
$data modify storage bbl:pldata sudo_root.working_data.oneshot.characters.current.scores append value {i:"$(score)",value:$(value)}

$say $(score), $(value)
