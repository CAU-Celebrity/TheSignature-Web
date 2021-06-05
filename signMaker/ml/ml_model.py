import tensorflow as tf
import matplotlib.pyplot as plt
plt.switch_backend('agg')
from PIL import Image
import numpy as np
import cv2
import os
import sys
sys.path.insert(
    1, '/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/')
# sys.path.insert(
#     1, '/Users/parksohyun/2021Capstone/TheSignature/signMaker/')
import applyAlpha
import addLogo

# 1. 이름 입력 받기
# name = input()
# name = name.replace(" ", "").lower()


def get_hangul_index(char_index):
  start_index = [0, 171, 291, 432, 560, 646, 773, 902, 1031, 1104, 1267, 1353, 1561, 1696, 1778, 1890, 1997, 2103, 2208]
  for index in range(0, len(start_index)):
    if index < len(start_index) - 1:
      if start_index[index] <= char_index < start_index[index+1]:
        return (index, char_index - start_index[index])
    else:
      return (index, char_index - 2208)


# 2. 모델로 각 알파벳 생성
def generate(name, num):
  if name[num].encode().isalpha():
    # GAN-ENG
    # model_name = 'C:/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/ml/gan-eng/' + name[num] + '-generator'
    # model = tf.keras.models.load_model(model_name, compile=False)
    # new_generated_image = model(tf.random.normal([16, 100]), training=False)
    # plt.imshow(new_generated_image[1, :, :, 0] * 127.5 + 127.5, cmap='gray')
    # plt.axis('off')
    # plt.savefig('./signMaker/static/ml_result/original'+str(num)+'.jpg')

    # CGAN-ENG
    is_upper = name[num].isupper()
    if is_upper:
      model_name = 'C:/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/ml/cgan-english/eng-upper-generator'
      # model_name = 'D:/TheSignature-Web/signMaker/ml/cgan-english/eng-upper-generator'
      # model_name = '/Users/parksohyun/2021Capstone/TheSignature/signMaker/ml/cgan-english/eng-upper-generator'

    else:
      model_name = 'C:/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/ml/cgan-english/eng-lower-generator2'
      # model_name = 'D:/TheSignature-Web/signMaker/ml/cgan-english/eng-lower-generator2'
      # model_name = '/Users/parksohyun/2021Capstone/TheSignature/signMaker/ml/cgan-english/eng-lower-generator2'

    sub_num = ord(name[num].lower()) - 97
    new_model = tf.keras.models.load_model(model_name, compile=False)
    noise = np.random.normal(0, 1, (1, 100))
    sampled_labels = np.arange(sub_num, sub_num + 1).reshape(-1, 1)
    gen_imgs = new_model.predict([noise, sampled_labels])
    gen_imgs = 0.5 * gen_imgs + 0.5

    plt.imshow(gen_imgs[0, :, :, 0], cmap='gray')
    plt.axis('off')
    plt.imsave('./signMaker/static/ml_result/original'+str(num)+'.jpg', gen_imgs[0, :, :, 0])

    return 0
    
  else:
    # Hangul
    f = open("C:/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/ml/2350-common-hangul.txt",'rt', encoding='UTF8')
    # f = open("D:/TheSignature-Web/signMaker/ml/2350-common-hangul.txt",'rt', encoding='UTF8')
    # f = open("/Users/parksohyun/2021Capstone/TheSignature/signMaker/ml/2350-common-hangul.txt",'rt', encoding='UTF8')

    charset = f.readlines()
    char = name[num] + "\n"
    char_index = charset.index(char)
    (gen_num, sub_num) = get_hangul_index(char_index)
    model_name = '/Users/1102k/Desktop/workspace/TheSignature-Web/signMaker/ml/cgan-hangul/' + str(gen_num) + '-generator'
    # model_name = '/Users/parksohyun/2021Capstone/TheSignature/signMaker/ml/cgan-hangul/' + str(gen_num) + '-generator'
    # model_name = 'D:/TheSignature-Web/signMaker/ml/cgan-hangul/' + str(gen_num) + '-generator'
    new_model = tf.keras.models.load_model(model_name, compile=False)
    noise = np.random.normal(0, 1, (1, 100))
    sampled_labels = np.arange(sub_num, sub_num + 1).reshape(-1, 1)
    gen_imgs = new_model.predict([noise, sampled_labels])
    gen_imgs = 0.5 * gen_imgs + 0.5

    plt.imshow(gen_imgs[0, :, :, 0], cmap='gray')
    plt.axis('off')
    plt.imsave('./signMaker/static/ml_result/original'+str(num)+'.jpg', gen_imgs[0, :, :, 0])

    return 1


# 노이즈 제거
def denoise(num):
  image = cv2.imread('./signMaker/static/ml_result/original'+str(num)+'.jpg', 0)
  converted_img = cv2.cvtColor(image, cv2.COLOR_GRAY2BGR)
  dst = cv2.fastNlMeansDenoisingColored(converted_img,None,25,10,7,21)
  return dst


 # 3. 알파벳 이미지 공백 없게 자르기
def crop_image(image):
  blur = cv2.GaussianBlur(image, ksize=(3,3), sigmaX=0)
  ret, thresh1 = cv2.threshold(blur, 127, 255, cv2.THRESH_BINARY)
  edged = cv2.Canny(blur, 10, 250)
  kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (7,7))
  closed = cv2.morphologyEx(edged, cv2.MORPH_CLOSE, kernel)
  contours, _ = cv2.findContours(closed.copy(),cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
  total = 0
  contours_xy = np.array(contours)
  x_min, x_max = 0,0
  value = list()
  for i in range(len(contours_xy)):
    for j in range(len(contours_xy[i])):
      value.append(contours_xy[i][j][0][0])
      x_min = min(value)
      x_max = max(value)
 
  y_min, y_max = 0,0
  value = list()
  for i in range(len(contours_xy)):
    for j in range(len(contours_xy[i])):
      value.append(contours_xy[i][j][0][1])
      y_min = min(value)
      y_max = max(value)

  x = x_min
  y = y_min
  w = x_max-x_min
  h = y_max-y_min

  img_trim = image[y:y+h, x:x+w]

  return img_trim


# 4. 알파벳 이미지들 하나로 합쳐서 저장
merged_image = np.zeros((2, 2))

def merge_image(single_image, num, language):
  global merged_image

  if num == 0:
    merged_image = np.zeros((2, 2))

  if len(merged_image) < len(single_image):
    width = len(merged_image[0])
    height = len(single_image)
    new_merged_image = np.full((height, width), 255)
    if language == 0:
      new_merged_image[height-len(merged_image):,:] = merged_image
    else:
      start = int((height-len(merged_image))/2)
      new_merged_image[start:start+len(merged_image),:] = merged_image
    merged_image = np.concatenate((new_merged_image, single_image), axis=1)

  else:
    width = len(single_image[0])
    height = len(merged_image)
    new_single_image = np.full((height, width), 255)
    if language == 0:
      new_single_image[height-len(single_image):,:] = single_image
    else:
      start = int((height-len(single_image))/2)
      new_single_image[start:start+len(single_image),:] = single_image
    merged_image = np.concatenate((merged_image, new_single_image), axis=1)


# 최종 결과물 저장
def makeResult(name, str_number):
  for num in range(len(name)):
    language = generate(name, num)
    cropped = crop_image(denoise(num))
    # plt.imsave('./signMaker/static/ml_result/crop'+str(num)+'.jpg', cropped)
    _, single_image = cv2.threshold(cropped, 100, 255, cv2.THRESH_BINARY)
    single_image = cv2.cvtColor(single_image, cv2.COLOR_BGR2GRAY)
    merge_image(single_image, num, language)

  image = Image.fromarray(merged_image.astype('uint8'), 'L')
  image.save('./signMaker/static/ml_result/handwriting_name' + str_number + '.png')
  applyAlpha.applyAlphaValue('./signMaker/static/ml_result/handwriting_name' + str_number + '.png', str_number)
  addLogo.putLogo('./signMaker/static/ml_result/handwriting_name' + str_number + '.png', str_number)



# makeResult('서율아', '1')
# makeResult('안녕안녕', '2')
# makeResult('중간발표싫어', '3')
# makeResult('cau', '1')
# makeResult('yula', '2')
# makeResult('Doesitwork', '3')
# makeResult('아졸려', '4')