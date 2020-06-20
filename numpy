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
