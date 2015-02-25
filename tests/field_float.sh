# added 2015-02-25 by singh.janmejay
# This file is part of the liblognorm project, released under ASL 2.0
source ./exec.sh $0 "float field"
add_rule 'rule=:here is a number %num:float% in floating pt form'
execute 'here is a number 15.9 in floating pt form'
assert_output_json_eq '{"num": "15.9"}'

reset_rules

add_rule 'rule=:here is a negative number %num:float% for you'
execute 'here is a negative number -4.2 for you'
assert_output_json_eq '{"num": "-4.2"}'
