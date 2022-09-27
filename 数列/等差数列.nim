# 例题1：等差数列{an}中,a1=2 a3=6，则a7=？
proc answer1():float = 
  const a1 = 2
  const a3 = 6
  #[
  a3 = a1 + 2d = 6
  a1 + 2d = 6]#
  var 二倍公差 = a3 - a1
  var 公差 = 二倍公差 / 2
  var a7 = a1 + 6 * 公差
  return a7

# 例题2：a5=-1,a8=2 求a1与d
proc answer2():seq[float] = 
  const a5 = -1
  const a8 = 2
  #[a5 = a1 + 4d
  a8 = a1 + 7d ]#
  var 三倍公差 = 3
  var d = 3 / 三倍公差
  #方程组
  #{a1 + 四倍公差 = -1
  #{a1 + d * 4 = -1
  var a1 = -1 - 4 * d
  var mresult:seq[float] = @[]
  mresult.add(a1)
  mresult.add(d)
  return mresult

echo answer1()
echo answer2()