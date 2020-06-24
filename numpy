import numpy as np
a=np.arange(24).reshape ((2,3,4)) #两个向量组 每个向量组三个行向量 每个行向量四个维度
#a=a[:,1,-3] 
            #此行代码在ipython输入a[:,1,-3]即可实现 输出为array([ 5, 17])  默认输出为行向量
            # ：的意思的全部选取 此处为选取两个向量组的全部。 1代表选取第1+1行向量。-3代表选择从右至左第三个                      
#a=a[:,1:3,:]                      
            # 选取全部向量组 每个向量组选择第二到第三行（1：3）=【1，3）列全部选取  
#a=a[:,:,::2]                      
            #向量组全部选取 行向量全部选取 列向量隔二选一含第一列             
#a=a.mean()
            #求A向量组的平均值 标量运算
# a=np.??? 意味着原数据的改变 在ipython中np.?? 并不改变原有的数据 
#b>b       其结果是两组向量进行对应的比较结果仅有 ture and false两项 bool型数据


print (a)
Created on Sat Jun 20 13:12:18 2020

@author: pengg
"""

import numpy as np
#np.savetxt(frame, array,fmt='%.18e',delimiter=None)
a=np.arange(100).reshape(5,20)
np.savetxt('a.csv',a,fmt='%d',delimiter=',')
print(a)
  
#np.loadtxt(frame,dtype=np.float32,delimiter=none,unpack=flase)
  # frame文件字串符的或产生器 可以是.gz .bz2的压缩文件， dtype数据类型 delimiter 分割字串符 默认空格
  # 如果是ture 读取属性将会分别写入不同变量 
#np.fromfile(frame,dtype=float,count=-1,sep='')
  #count 读入元素个数 -1表示读取整个文件 数据分割字串符， 如果是字串 写入文件为二进制， 
a.tofile("b.bat",sep=",",format='%d')
c=np.fromfile("b.bat",dtype=np.int,sep=",")
c=np.fromfile("b.bat",dtype=np.int, sep=",").reshape(5,10,2)
#行变列 数变为向量组
 #Numpy文件的存储 
np.save('a.npy',a) 
 #frame 文件名， 以.npy为扩展名 数组变量 
b=np.load("a.npy") 
  #加载文件 
b=np.random.randint(100,200,(3,4))
 #每次输出的结果都不同 
np.random.randint(100,200,(3,4))
 #每次输出的结果都一样 
b=np.random.randint(100,200,(8,))
 #一维向量8列 
np.random.choice(b,(3,2))
 # 在数组中重复抽取数据 
np.random.choice(b,(3,2),replace=False)
 #不重复抽取 

# u=np.random.uniform(0,10,(3,4))
# np.mean(a,axis=1) np.mean(a,axis=0)
  #axis 有且仅可以为0 和 1  1代表仅在行向量内部进行计算 第二维度， 0代表在各个行向量互相进行计算非向量内部  

#a=np.random.randint(0,20,(5)) 
     # array([ 9, 17,  0,  7, 19])
#np.gradient(a)
     #array([ 8. , -4.5, -5. ,  9.5, 12. ]) 二到四个数的计算方式（0-9）/2存在两侧的值 两侧的计算 
     # （17-9）/ 1 右减左除以跨度 
#二维数组存在两个梯度  array([[12,  2, 24, 18,  6],  
                            #[49, 10, 33, 49, 10],
                            #[19, 15, 24, 26, 12]])
#[array([[ 37. ,   8. ,   9. ,  31. ,   4. ],    外层函数的梯度 行向量之间的计算 不涉及行向量内部计算 
        #[  3.5,   6.5,   0. ,   4. ,   3. ],
        #[-30. ,   5. ,  -9. , -23. ,   2. ]]),
 #array([[-10. ,   6. ,   8. ,  -9. , -12. ],   内层梯度计算 行向量内部计算 
        #[-39. ,  -8. ,  19.5, -11.5, -39. ],
        #[ -4. ,   2.5,   5.5,  -6. , -14. ]])]


