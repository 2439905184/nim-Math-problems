# 小学到中学的基础方差公式：( n*(样本数据-平均数)^2) ) / n  n表示样本格式
import strutils
import math

var data:seq[float] = @[]
# 求平均数
proc get_eq(p_data:seq):float = 
    var n:int = len(p_data)
    var ping_jun_shu:float
    var sum_result:float = 0
    for element in p_data:
      sum_result += element
    ping_jun_shu = sum_result / float(n)
    return ping_jun_shu

# 计算分式上面的一段
proc get_up(p_data:seq, p_eq:float):float =
  var up:float = 0
  for element in p_data:
    # 这里的加法就是 n*
    up += (element - p_eq)^2
  return up

proc calc(): float =
    var n:int = len (data)
    var eq = get_eq(data)
    var up = get_up(data,eq)
    var r = up / float(n)
    return r


echo "请输入样本数据，输入完成按回车"
echo "如果想结束输入并计算结果 请输入end并回车"
while true:
  var input = stdin.readLine()
  if input == "end":
    echo "输入的所有样本数据", data
    echo "结果",calc()
    break
  else:
    try:
      var number:float = strutils.parseFloat(input)
      data.add(number)
      # echo "第二次循环的值", number
    except ValueError:
      # 这里是字符串
      echo "你输入了不支持的字符串命令,引发了parseFloat()无法正确解析为float类型的异常"
      echo "请重新输入"
      echo "目前程序内部的样本数组为 " , data