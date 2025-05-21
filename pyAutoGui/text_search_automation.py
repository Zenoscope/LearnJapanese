#
# run the game and click on buttons using text instead of images text
#

import pyautogui
import pytesseract
from PIL import ImageGrab, ImageDraw, ImageFont, Image
import time

GAME_PATH = r"C:\Users\ryan\Downloads\LearnJapanese\Build\LearnJapanese.exe"

# target_text = "2022-01-07"
# target_text = "Update"
# target_text = "Update Tesseract"
target_text = "quit"

CONFIDENCE = 0.8

# Set the path to tesseract.exe if it's not in your PATH environment variable
# Example: 
pytesseract.pytesseract.tesseract_cmd = r'C:\Program Files\Tesseract-OCR\tesseract.exe'
time.sleep(5)
# Capture the entire screen or a region

# Capture a specific region (bbox)
x1 = 128
x2 = 1480
y1 = 80
y2 = 840
bbox = (x1, y1, x2, y2)
screenshot = ImageGrab.grab(bbox=bbox)
draw = ImageDraw.Draw(screenshot)

#xy = (10,10,20,20)
#draw.rectangle(xy, outline="red", width=1)
#screenshot.show()


# Convert the image to string using pytesseract
text_data = pytesseract.image_to_data(screenshot, output_type=pytesseract.Output.DICT, lang='eng',config='--psm 7')
# text = pytesseract.image_to_string(img, lang='eng', config='--psm 7')

# The text you want to detect

# use a bitmap font
# font = ImageFont.load("arial.pil")
fnt = ImageFont.truetype("C:/Program Files/GameMaker/Fonts/OpenSans-Regular.ttf", 40)

# Loop through all detected text to find coordinates of the target text
for i, text in enumerate(text_data['text']):
    if target_text.strip():
        print(f"Word: '{target_text}', Confidence: {text_data['conf'][i]}, Position: ({text_data['left'][i]}, {text_data['top'][i]}) ,({text_data['width'][i]}, {text_data['height'][i]})")
        xy = (text_data['left'][i],text_data['top'][i],text_data['left'][i] + text_data['width'][i],text_data['top'][i] + text_data['height'][i])
        conf=text_data['conf'][i]
        if conf > 93:
            draw.rectangle(xy, outline="red", width=1)
            text_loc=(text_data['left'][i],text_data['top'][i])    
            draw.text(text_loc,"conf",font=fnt,fill="red")
    
    #          quit
    
    # location = pyautogui.locateCenterOnScreen(image_path, CONFIDENCE)
    
    if target_text.lower() in text.lower():
        x = text_data['left'][i]
        y = text_data['top'][i]
        width = text_data['width'][i]
        height = text_data['height'][i]
        
        # Calculate the center of the text
        center_x = x + width // 2
        center_y = y + height // 2
        # Move the mouse to the center of the text and click
        pyautogui.moveTo(center_x, center_y)
        pyautogui.click()
        print(f"Clicked on text '{target_text}' at ({center_x}, {center_y})")
        break
else:
    print(f"Text '{target_text}' not found on the screen.")

screenshot.show()
