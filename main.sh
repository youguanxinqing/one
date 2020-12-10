# import
one_of_path=$0
one_of_dir=$(dirname $one_of_path)
. $one_of_dir/utils/args.sh
###


args=$(args_from_2th_index $*)

sub_cmd=$1
sub_cmd_script="${sub_cmd}.sh"
sub_cmd_path="$one_of_dir/scripts/$sub_cmd_script"


if [ -f "$sub_cmd_path" ]; then
    sh=$(echo $SHELL)
    $sh $sub_cmd_path $args
else
    echo "not support sub cmd: \"$sub_cmd\""
fi