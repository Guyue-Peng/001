#pythondraw.py
import turtle   #绘图库 调用函数 走过的轨迹变成了图像
turtle.setup(650,350,200,200) #窗体的宽高 窗体的起始XY
turtle.penup() #画笔起
turtle.fd(-250) #海龟前进 BK后退
turtle.pendown()#画笔落
turtle.pensize(25)#画笔宽
turtle.pencolor("blue")#画笔颜色
turtle.seth(-40) #seth 当前的行进方向角度
for i in range(4): #循环语句 for 0 range循环次数   （2，6）=2345不到6
    turtle.circle(40,80) #半径 角度 直线FD 曲线cicle
    turtle.circle(-40,80)
turtle.circle(40,80/2)
turtle.fd(40)
turtle.circle(16,180)
turtle.fd(40 * 2/3)
turtle.done()
