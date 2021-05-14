import cv2
import os

def applyAlphaValue(imgPath, str_number):
    image = cv2.imread(imgPath)
    image = cv2.cvtColor(image, cv2.COLOR_BGR2BGRA)
    for i in range(0, image.shape[0]):
        for k in range(0, image.shape[1]):
            if (image[i][k] == [255, 255, 255, 255])[0]:
                image[i][k] = [0, 0, 0, 0]

    alphaImgDir = './signMaker/static/alpha_result/'
    if os.path.isdir(alphaImgDir)==False:
        os.mkdir(alphaImgDir)

    cv2.imwrite(alphaImgDir + 'handwriting_name' + str(str_number) + '.png', image)