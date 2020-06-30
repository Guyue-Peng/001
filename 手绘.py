#pip install pillow

from PIL import Image
import numpy as np
a=np.asarray(Image.open("C:/Users/pengg/Desktop/photo.jpg").convert('L')).astype('float')

depth=10.                              #(0-100)
grad = np.gradient(a)                  #取图像灰度的梯度值
grad_x,grad_y =grad                    #分别取横纵图像的梯度值
grad_x = grad_x*depth/100.
grad_y = grad_y*depth/100.
A=np.sqrt(grad_x**2 + grad_y**2+1.) #
uni_x =grad_x/A
uni_y =grad_y/A
uni_z =1./A

vec_el=np.pi/2.2
vec_az=np.pi/4.
dx=np.cos(vec_el)*np.cos(vec_az)
dy=np.cos(vec_el)*np.sin(vec_az)
dz=np.sin(vec_el)

b=255*(dx*uni_x +dy*uni_y +dz*uni_z)
b=b.clip(0,255)

im=Image.fromarray(b.astype('uint8'))
im.save('C:/Users/pengg/Desktop/photo,1.jpg')
