
# ##
# 参数提取
# eg: args=(1 2 3 4) -> args=(2 3 4)
# ##
args_from_2th_index() {
    local first=1
    local args=""
    for arg in $@; do
        if [ $first -eq 1 ]; then
            first=0
        else
            args="$args $arg"
        fi
    done
    echo $args
}
