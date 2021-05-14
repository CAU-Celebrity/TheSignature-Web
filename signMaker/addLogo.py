import cv2
import os

def putLogo(imgPath,str_number):
    image = cv2.imread(imgPath)
    print(image.shape)
    x = int(image.shape[1]/11)
    y = int(image.shape[0]/5)*3
    imageWithLogo = cv2.putText(image, "The Signature", (x, y), cv2.FONT_HERSHEY_SCRIPT_COMPLEX, fontScale=1.2, thickness=2,color=(220,220,220))

    logoImgDir = './signMaker/static/logo_result/'
    if os.path.isdir(logoImgDir)==False:
        os.mkdir(logoImgDir)

    cv2.imwrite(logoImgDir + 'handwriting_name' + str(str_number) + '.jpg', imageWithLogo)

    # cv2.imshow('imageWithLogo', imageWithLogo)
    # cv2.waitKey(0)
    # cv2.destroyAllWindows()


# putLogo('signMaker/static/ml_result/handwriting_name03.jpg',1)


