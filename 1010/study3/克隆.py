# 浅copy
a = [1,2,3,4]
b = [1,2,3,4,[1,2,3,4]]
c = b.copy()
# c = b
b[0] = 11
b[4][0] = 111
print(c)
print("____________________")
#
import copy
a = [1,2,3,4]
b = [1,2,3,4,a]
c = copy.deepcopy(b)
b[0] = 11
b[4][0] = 111
a[1] = 222
print(c)
a = 1
b = 1
a = "11111111111111111111111111111"
b = "11111111111111111111111111111"
a = [1,2]
b = [1,2]
print(id(a))
print(id(b))

