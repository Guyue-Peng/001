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