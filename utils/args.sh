
# ##
# 参数提取
# eg: args=(1 2 3 4) -> args=(2 3 4)
# ##
args_from_2th_index() {
    local first=1
    local agrs=""
    for arg in $@; do
        if [ $first -eq 1 ]; then
            local first=0
        else
            local args+=" $arg"
        fi
    done
    echo $args
}