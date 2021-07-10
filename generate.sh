NAME="RPCT_REPEAT";
MAX=128;

echo "#define ${NAME}_1(EXPR) EXPR(1)"
for i in {2..128}; do
    j=$((i-1));
    echo "#define ${NAME}_$i(EXPR) ${NAME}_$j(EXPR) EXPR($i)"
done

echo "#define $NAME(N, EXPR) ${NAME}_##N(EXPR)"

# output:
# #define RPCT_REPEAT_1(EXPR) EXPR(1)
# #define RPCT_REPEAT_2(EXPR) RPCT_REPEAT_1(EXPR) EXPR(2)
# #define RPCT_REPEAT_3(EXPR) RPCT_REPEAT_2(EXPR) EXPR(3)
# #define RPCT_REPEAT_4(EXPR) RPCT_REPEAT_3(EXPR) EXPR(4)
# ...
# #define RPCT_REPEAT(N, EXPR) RPCT_REPEAT_##N(EXPR)
