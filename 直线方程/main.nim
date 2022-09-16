import strutils
import strformat
#[
type
  方程系数 = object
    A,B,C: int
]#
type
  point = object
    x,y: int

# 已知两点求K
proc get_k(p1,p2:point):float =
  var k = (p2.y - p1.y) / (p2.x - p1.x)
  return k

# 暂时不能是负数参数 报错： Error: attempting to call routine: 'point'
echo get_k(point(x:0,y:3),point(x:2,y:0))
#var p1 = point()