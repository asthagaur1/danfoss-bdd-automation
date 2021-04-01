# -*- coding: utf-8 -*-

import names
import os
from PIL import Image
import subprocess
import sys
from skimage.measure import compare_ssim
from skimage.transform import resize
from scipy.ndimage import imread
import imagehash

# get two images - resize both to 1024 x 1024

def PixelCompare(image1, image2, mode = "pct", alpha = .01):


    hash0 = imagehash.average_hash(Image.open(image1)) 
    hash1 = imagehash.average_hash(Image.open(image2)) 
    cutoff = 2
    test.log(str(hash0))
    test.log(str(hash1))
    test.log(str(hash0-hash1))
    
    if hash0 - hash1 < cutoff:
        test.log('images are similar')
    else:
        test.log('images are not similar')


# def imageCompare(image1, image2):
#     img_a = resize(imread(image1), (2**10, 2**10))
#     img_b = resize(imread(image2), (2**10, 2**10))
# 
# # score: {-1:1} measure of the structural similarity between the images
#     score, diff = compare_ssim(img_a, img_b, full=True,multichannel=True)
#     print(score)
#     return score

def main():
    startApplication("KoolProg")
    mouseClick(waitForObject(names.koolProg_imgSetParams_Image))
    snooze(20)
#     product_information_imgProductimage_Image
    widget = waitForObject(":product_information_imgProductimage_Image")
    image = grabWidget(widget)
    image.save("screenshot1.png", "PNG")
    testData.get("screenshot1.png")
    im = Image.open("screenshot1.png")
    im.save("screenshot1.jpg")
    PixelCompare("screenshot1.png", "ETC1H1_ProductImage.jpg")
