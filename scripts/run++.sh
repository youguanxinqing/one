# import
dir=$(dirname $(dirname $0))
. $dir/utils/args.sh
### 


file_name=$1
args=$(args_from_2th_index $@)

program_name=${file_name%%.cpp}

echo "cmd:" "g++ $file_name -o $program_name $args -std=c++14"
echo ""
g++ $file_name -o $program_name $args -std=c++14 && ./$program_name 

