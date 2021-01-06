##
#
# 用 OpenResty 中的 resty 执行 lua 文件, 方便使用 OpenResty 提供的三方库
#
# 为写测试代码而存在
#
##

local lua_file=$1
if [ -f $lua_file ]; then
    resty -e "$(cat $lua_file)"
else
    echo "not found $lua_file"
fi
