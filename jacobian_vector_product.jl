using Zygote

# Let's define our function
f(x1, x2, x3) = [x1^2 + x2 + x3, x1 - x2 + x3]
# val is the value of function `f` at point (x1,x2,x3)
val, pb_f = Zygote.pullback(f, [2,3,1]...)
# pb_f function takes the change in output and gives back the corresponding change in input
# For instance a change of [1,0] observed in output requires a change in input by [4,1,1]
pb_f([1,0])