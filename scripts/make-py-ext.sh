# import
dir=$(dirname $(dirname $0))
. $dir/utils/args.sh
### 


cpp_handler() {
	local file_name=$1
	local program_name=${file_name%%.cpp}
	local args=${@##$file_name}
	echo "g++ $file_name -o $program_name`python3-config --extension-suffix` \\
	`python3 -m pybind11 --includes` \\
	$args -shared -fpic -std=c++14"
	g++ $file_name -o $program_name`python3-config --extension-suffix` \
		`python3 -m pybind11 --includes` \
		$args -shared -fpic -std=c++14
}


option=$1
args=$(args_from_2th_index $@)
case "$option" in
	"cpp") cpp_handler $args
		;;
	*) echo "make-py-ext does not support \"$option\""
		;;
esac
