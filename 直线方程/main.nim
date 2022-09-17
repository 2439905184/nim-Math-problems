import strutils
import strformat

type
  Point = object
    x,y: int

# 已知两点求K
proc get_k(p1,p2:Point):float =
  var k = (p2.y - p1.y) / (p2.x - p1.x)
  return k
# 如果报错 需要这样写: Point(x: 0,y: 0 )
echo get_k(Point(x:0,y:3),Point(x:2,y:0))