# 例题1：等差数列{an}中,a1=2 a3=6，则a7=？
proc answer1():float = 
  const a1 = 2
  const a3 = 6
  #[a2 = a1 + d
  a3 = a1 + 2d = 6
  a1 + 2d = 6]#
  var 二倍公差 = 6 - a1
  var 公差 = 二倍公差 / 2
  var a7 = a1 + 6 * 公差
  return a7

# 例题2：
echo answer1()