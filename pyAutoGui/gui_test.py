"""
Do today:

Check to see if the file exists, skip the test as a fail if it doesn't$
try for finding the image, if it isn't found, the test fails rather than the software
 crashing

"""

""" Program description:
It uses images to find buttons and press them.
Ideally it would be searching for text, but I can't get that to work
  (greyscalling?)
"""

import pyautogui
import pydirectinput
import subprocess
import time
import sys
import os
from datetime import datetime
from colorama import init as colorama_init
from colorama import Fore
from colorama import Style

from pathlib import Path

"""
This could read the files automatically, but the back button
would need to be used more than once (encode as a number?)
contents = []
with open('image_list.txt',"r",encoding="utf-16") as fp:
     for line in fp:            
        contents.append(line)
print(contents[0])
print(contents[2])
quit()

"""

colorama_init()

# --- Config ---
# detect which OS this is running on and change accordingly?
# I think I need a linux machine (or Mono for windows builds)

# Get-ChildItem C:\Users\ryan\Downloads\LearnJapanese\pyAutoGui\images\ | ForEach-Object { "t$($_.BaseName.ToUpper()) = 'images\$($_.Name)'" } > image_list.txt
# list the images

# Path to your images folder
#folder_path = r"C:\Users\ryan\Downloads\LearnJapanese\pyAutoGui\images"

# Output file
#output_file = "image_list.txt"

# Get list of files and format the output
#with open(output_file, 'w', encoding='utf-8') as f:
#    for filename in os.listdir(folder_path):
#        if os.path.isfile(os.path.join(folder_path, filename)):
#           line = f"_{filename.upper()} = '{filename}'\n"
#            f.write(line)


# GAME_PATH = r"C:\Users\ryan\Downloads\LearnJapanese\Build\LearnJapanese.exe"
GAME_PATH = r"..\Build\LearnJapanese.exe"
CONFIDENCE = 0.85
TIMEOUT = 3  # seconds
SCREENSHOTS_DIR = 'screenshots'
move_duration = 0.1

# possibly move these to separate files.
# --- button images

# fails this test
_00_Image_Exits_Test = r'images\00_Image_Exits_Test.png'

# misc buttons
_00_BTN_BACK = r'images\00_BTN_back.png'
_00_BTN_DOWN_ARROW = r'images\00_BTN_down_arrow.png'
_00_BTN_LEFT_ARROW = r'images\00_BTN_left_arrow.png'
_00_BTN_QUESTIONMARK = r'images\00_BTN_questionmark.png'
_00_BTN_QUITGAME = r'images\00_BTN_quitgame.png'
_00_BTN_RIGHT_ARROW = r'images\00_BTN_right_arrow.png'
_00_BTN_UP_ARROW = r'images\00_BTN_up_arrow.png'
_00_SER_SEARCH_TEXT = r'images\00_SER_search_text.png'

_00_BTN_FLIPCARD = r'images\00_BTN_Flipcard.png'
_00_BTN_FLIPCARD_MISSING = r'images\00_BTN_flipcard_missing.png'

#_00_DLG1_Vocab = r'images\00_DLG1_Vocab.png'
#_00_DLG2_Vocab = r'images\00_DLG2_Vocab.png'

_00_SCH_AdjectiveResult = r'images\00_SCH_AdjectiveResult.png'
_00_SCH_AdverbsResult = r'images\00_SCH_AdverbsResult.png'
_00_SCH_VerbsResult = r'images\00_SCH_VerbsResult.png' # File not found
_00_SCH_NounsResult = r'images\00_SCH_NounsResult.png' # File not found
_00_SCH_VocabResult = r'images\00_SCH_VocabResult.png' 

# dialog boxes
_00_DLG1_Adjectives = r'images\00_DLG1_Adjectives.png'
_00_DLG2_Adjectives = r'images\00_DLG2_Adjectives.png'


_00_SCR_Cow = r'images\00_SCR_Cow.png'

# splash screen buttons
_01_BTN_START_GAME = r'images\01_BTN_start_game.png'
_01_HLP_START_GAME = r'images\01_HLP_start_game.png'
_01_QMK_SPLASHSCREEN = r'images\01_QMK_splashscreen.png'
_01_SPL_SPLASHSCREEN = r'images\01_SPL_SplashScreen.png'

# Main menu
_02_BTN_HIRAGANA = r'images\02_BTN_hiragana.png'
_02_BTN_KANJI = r'images\02_BTN_kanji.png'
_02_BTN_KATAKANA = r'images\02_BTN_katakana.png'
_02_BTN_VOCABGRAMMAR = r'images\02_BTN_VocabGrammar.png' # File not found

# Hiragana/katakana/kanji menu
_03_BTN_FLIPCARDS = r'images\03_BTN_flipcards.png'
_03_BTN_MISSING_KANA = r'images\03_BTN_missing_kana.png'
_03_BTN_VOCAB_LIST = r'images\03_BTN_vocab_list.png'
_03_BTN_WORD_BUILDER = r'images\03_BTN_word_builder.png'

# Hiragana/katakana/kanji flipcards
_04_BTN_GOJUON = r'images\04_BTN_gojuon.png'
_04_BTN_HANDAKUTEN = r'images\04_BTN_handakuten.png'
_04_BTN_YOON = r'images\04_BTN_yoon.png'

# kanji radical/kanji list
_05_BTN_100KANJI = r'images\05_BTN_100Kanji.png'
_05_BTN_RADICALLIST = r'images\05_BTN_RadicalList.png'
_05_SCREEN_RADICAL_FREQUENCY = r'images\05_screen_radical_frequency.png'
_05_SCR_RADICALS_01 = r'images\05_SCR_Radicals_01.png'
_05_SCR_RADICALS_02 = r'images\05_SCR_Radicals_02.png'
_05_SCR_KANJI_01 = r'images\05_SCR_Kanji_01.png'
_05_SCR_KANJI_02 = r'images\05_SCR_Kanji_02.png'

# search
# click on the search button
# enter some text and press enter
# check for scroll buttons and result buttons
_00_SER_SEARCH_TEXT = r'images\00_SER_search_text.png'
_00_SER_SEARCHRESULT = r'images\00_SER_SearchResult.png'
_00_SER_SEARCHRESULT_MOUSEOVER = r'images\00_SER_SearchResult_MouseOver.png'
_00_SER_SEARCHRESULT_DIALOG = r'images\00_SER_SearchResultDialog.png'

# Word builder


# Vocab & Grammar button
_08_BTN_VOCABULARY = r'images\08_BTN_Vocabulary.png'


# Vocab/Grammar
_09_BTN_ADVERBS = r'images\09_BTN_Adverbs.png'
_09_HLP_ADVERBS = r'images\09_HLP_Adverbs.png'
_09_SPL_ADVERBS = r'images\09_SPL_Adverbs.png'

_10_BTN_ADJECTIVES = r'images\10_BTN_Adjectives.png'
_10_HLP_ADJECTIVES = r'images\10_HLP_Adjectives.png'
_10_SPL_ADJECTIVES = r'images\10_SPL_Adjectives.png'
_10_DLG1_Adverbs = r'images\10_DLG1_Adverbs.png'
_10_DLG2_Adjectives = r'images\10_DLG2_Adjectives.png'

_11_BTN_NOUNS = r'images\11_BTN_Nouns.png'
_11_HLP_NOUNS = r'images\11_HLP_Nouns.png'
_11_SPL_NOUNS = r'images\11_SPL_Nouns.png'

_12_BTN_VERBS = r'images\12_BTN_Verbs.png'
_12_HLP_VERBS = r'images\12_HLP_Verbs.png'
_12_SPL_VERBS = r'images\12_SPL_Verbs.png'

# need dialog image for this
_13_BTN_VOCABSEARCH = r'images\13_BTN_VocabSearch.png'
_13_SPL_VOCAB = r'images\13_SPL_Vocab.png'
_13_DLG1_ADVERBS = r'images\13_DLG1_Adverbs.png'
#

# Vocab/Grammar
_08_BTN_GRAMMAR = r'images\08_BTN_Grammar.png'


_99_BTN_SHOW_CLUE = r'images\99_btn_show_clue.png'
_99_SCREEN_FLIPCARD = r'images\99_screen_flipcard.png'
#_99_SCREEN_GOJUON = r'images\99_screen_gojuon.png'
#_99_SCREEN_HANDAKUTEN = r'images\99_screen_handakuten.png'
#_99_SCREEN_MISSING_FLIPCARD = r'images\99_screen_missing_flipcard.png'
_99_SCREEN_RADICAL_FREQUENCY = r'images\99_screen_radical_frequency.png'
_99_SCREEN_YOON = r'images\99_screen_yoon.png'


# --- Setup ---
if not os.path.exists(SCREENSHOTS_DIR):
    os.makedirs(SCREENSHOTS_DIR)

# --- Helper Functions ---
def wait_for_image(image_path, timeout=TIMEOUT, confidence=CONFIDENCE):
    start_time = time.time()
    # print(f" Waiting for {image_path}")
    while time.time() - start_time < timeout:
        try:            
            location = pyautogui.locateCenterOnScreen(image_path, confidence=confidence)
        except:
            # print(f"{Fore.RED} Image{image_path} not found{Style.RESET_ALL}")
            return None
            
        if location:
            return location
        time.sleep(1)    
    
def click_image(image_path, timeout=TIMEOUT, test_name=""):
    location = wait_for_image(image_path, timeout)
    if ( find_button(image_path, timeout=TIMEOUT, test_name="") != False):
        print(f"Looking for {image_path} as {test_name} test")
        pyautogui.moveTo(location, duration=move_duration)
        pyautogui.mouseDown()        
        time.sleep(0.5) 
        pyautogui.mouseUp()
        print(f" Clicked {image_path}  in {test_name}")
        return True

def mouseover_image(image_path, timeout=TIMEOUT, test_name=""):    
    location = find_image(image_path, timeout=TIMEOUT, test_name="")
    if  location:
        print(f"Mousing over {image_path} as {test_name} test")
        pyautogui.moveTo(location, duration=move_duration)
        return True
    else:
        return False
    
def find_image(image_path, timeout=TIMEOUT, test_name=""):
    location = wait_for_image(image_path, timeout)
    if location:        
        print(f" Found {image_path}")
        return location
    else:
        print(f"{Fore.RED}  Failed to find {image_path}{Style.RESET_ALL} on screen")
        # print(f" Failed to find {image_path}")
        # capture_screenshot(test_name)
        return False

def find_mouseover_image(image_path, timeout=TIMEOUT, test_name=""):    
    # find the mouse over image
    location = wait_for_image(image_path, timeout) 
    
    # if it exists, find the next mouse over image
    if location:
        pyautogui.moveTo(location, duration=move_duration)
        print(f"Found {image_path} for {test_name} test")
        
        # images\01_BTN_start_game.png
        help_image = image_path.replace("BTN", "HLP")     
        print(f"Looking for: mouseover {help_image} for {test_name} test")
        mouseover_location = wait_for_image(help_image, timeout)        
        if mouseover_location:     
            return True
        else:
            return False
    else:
        print(f"{Fore.RED} Failed to mouse over {image_path} for {test_name} test{Style.RESET_ALL}")
        capture_screenshot(test_name)
        return False

def find_button(image_path, timeout=TIMEOUT, test_name=""):
    # find_button(image_path, timeout, test_name)    
    location = wait_for_image(image_path, timeout)
    if location:
        return True
    else:
        print(f"{Fore.RED} Failed to find {image_path} button for {test_name} test {Style.RESET_ALL}")
        #print(f" Failed to find {image_path} button for {test_name} test")
        capture_screenshot(test_name)
        return False
           
def capture_screenshot(test_name):
    """Capture a screenshot if a test fails."""
    timestamp = datetime.now().strftime("%Y%m%d-%H%M%S")
    filename = os.path.join(SCREENSHOTS_DIR, f"fail-{test_name}-{timestamp}.png")
    pyautogui.screenshot(filename)
    print(f" Screenshot saved: {filename}")

def move_mouse_to():
    print("moving the mouse")
    location = (200,200)
    pyautogui.moveTo(location, duration=move_duration * 3)
    
# detect if an image has changes once clicked on (flipcards) 
# def detect_image_change
# find a partial match for the flipcards and then click on it

# def_search_for_text
# find a search box
# if it exists 
#   click on the search box
# type some text in eg "cat"
# make sure the text is entererd
# press enter or click on the search button to search
# check for result buttons.
# depending on the test, 
#  check to see if the arrows are there 
#  or if they work
#   the search results should change.
# Go to the end/start of the search results as well.

# def drag_to_image
# drag a card to somewhere (another card image)

# def find_random_card_in area
# find a random card in an area

# def does_button_exist (see find image path above)
# check if a button exists or not
 
# Missing Card test.
# find the missing cards on the screen.
# find the cards to drag on the RHS
# make a list. 
# sarting with first card
#  drag the card to the qmark
#  check if it changes and the dragged card goes blank
# if it does, keep going.
# Once the 5 cards are moved, 
#  check to see if the list has been refreshed (so need to store the card images somewhere)
# you could look for the top card which has a gap and then work your way down, either by knowing where the cards are (hard coded) or 

# PyAutoGUI will correctly interpret the alpha channel, meaning transparent areas of the image will not be considered when searching for a match.
# So I can just have it look for the image stack.

# generic tests:
# General tests:
#QMark - checks for mouse over text
#Splash text - (even blank) exists
#Cow talking text  - (even blank)
#Room Title - exists

# Numbers are by room, eg 1_splash, 2_main_menu etc
# Search and dragging will take a little extra time

def check_image_exists(button_image):
    my_file = Path(button_image)
    if my_file.is_file():
        return True
    return False    

# --- Tests ---
def test_press_button(button_image, name_of_test):
    # press the named button
    if check_image_exists(button_image):
        return click_image(button_image, test_name=name_of_test)
    return False

def test_check_background(button_image, name_of_test):
    # checks to see if there is a background image or splash text    
    return find_image(button_image, test_name=name_of_test)    

def test_check_mouseover(button_image, name_of_test):
    # checks to see if there is a background image or splash text
    return find_mouseover_image(button_image, test_name=name_of_test)

def test_move_mouse(button_image, name_of_test):
    # just move the mouse to the image
    return mouseover_image(button_image, test_name=name_of_test)

#def test_quit_game():
#    return click_image(QUIT_BUTTON_IMAGE, test_name="quit_game")

# --- Main Runner ---
def main():
    print(" Launching game...")
    try:
        game_process = subprocess.Popen(GAME_PATH)
    except Exception as e:
        print(f" Failed to launch game: {e}")
        sys.exit(1)
    time.sleep(5)
    results = {}

    #
    # Run tests
    #
    mouseover_test = False
    hiragana_test = False
    katakana_test = False
    kanji_test = False
    vocabAndGrammar_test = True
    
    # always fails!
    #results['Check image exists - fail'] = test_press_button(_00_Image_Exits_Test, "_00_Image_Exits_Test")
    
    ### splash screen ### these are the most basic tests
    if mouseover_test:
        results['Start - screen background'] = test_check_background(_01_SPL_SPLASHSCREEN, "SPL_SPLASHSCREEN")
        results['Start - Mouse over'] = test_check_mouseover(_01_BTN_START_GAME, "1_BTN_START_GAME")
    
    results['Start - Press qmark'] = test_press_button(_00_BTN_QUESTIONMARK, "_00_BTN_QUESTIONMARK")  
    results['Start - Press start'] = test_press_button(_01_BTN_START_GAME, "1_BTN_START_GAME")
   
    ###
  
    
     ### main menu
    if mouseover_test: 
        results['Main menu - Hiragana mouse over'] = test_check_mouseover(_02_BTN_HIRAGANA, "_02_BTN_HIRAGANA")
        results['Main menu - Katakana mouse over'] = test_check_mouseover(_02_BTN_KATAKANA, "_02_BTN_KATAKANA")
        results['Main menu - Kanji mouse over'] = test_check_mouseover(_02_BTN_KANJI, "_02_BTN_KANJI")
        results['Main menu - Vocab and Grammar mouse over'] = test_check_mouseover(_02_BTN_VOCABGRAMMAR, "_02_BTN_VocabGrammar")
    
    
    ### hiragana
    if hiragana_test:
        results['Main menu - Hiragana - go!'] = test_press_button(_02_BTN_HIRAGANA, "_02_BTN_HIRAGANA")
        #
        if mouseover_test:
            results['Hiragana - FLIPCARDS'] = test_check_mouseover(_03_BTN_FLIPCARDS, "_03_BTN_FLIPCARDS")
            results['Hiragana - MISSING_KANA'] = test_check_mouseover(_03_BTN_MISSING_KANA, "_03_BTN_MISSING_KANA")
            results['Hiragana - VOCAB_LIST'] = test_check_mouseover(_03_BTN_VOCAB_LIST, "_03_BTN_VOCAB_LIST")
            results['Hiragana - WORD_BUILDER'] = test_check_mouseover(_03_BTN_WORD_BUILDER, "_03_BTN_WORD_BUILDER")
 
        ## Flipcards
        results['Hiragana - FLIPCARDS - go!'] = test_press_button(_03_BTN_FLIPCARDS, "_03_BTN_FLIPCARDS")
        #    
        results['Hiragana - GOJUON'] = test_check_mouseover(_04_BTN_GOJUON, "_04_BTN_GOJUON")
        results['Hiragana - HANDAKUTEN'] = test_check_mouseover(_04_BTN_HANDAKUTEN, "_04_BTN_HANDAKUTEN")
        results['Hiragana - YOON'] = test_check_mouseover(_04_BTN_YOON, "_04_BTN_YOON")    
        results['Hiragana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

         ## Missing
        results['Hiragana - Missing kana - go!'] = test_press_button(_03_BTN_MISSING_KANA,"_03_BTN_MISSING_KANA")
        #
        results['Hiragana - GOJUON'] = test_check_mouseover(_04_BTN_GOJUON, "_04_BTN_GOJUON")
        results['Hiragana - HANDAKUTEN'] = test_check_mouseover(_04_BTN_HANDAKUTEN, "_04_BTN_HANDAKUTEN")
        results['Hiragana - YOON'] = test_check_mouseover(_04_BTN_YOON, "_04_BTN_YOON")    
        results['Hiragana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

         ## VOCAB_LIST
        results['Hiragana - VOCAB_LIST - go!'] = test_press_button(_03_BTN_VOCAB_LIST, "_03_BTN_VOCAB_LIST")
        # 
        results['Hiragana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

         ## WORD_BUILDER
        results['Hiragana - WORD_BUILDER - go!'] = test_press_button(_03_BTN_WORD_BUILDER, "_03_BTN_WORD_BUILDER")
        # 
        results['Hiragana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
        results['Hiragana - Back to main menu'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
    
    
    ### Katakana
    if katakana_test:
        results['Main menu - Katakana - go!'] = test_press_button(_02_BTN_KATAKANA, "_02_BTN_KATAKANA")
        
        if mouseover_test:
            results['Katakana - FLIPCARDS'] = test_check_mouseover(_03_BTN_FLIPCARDS, "_03_BTN_FLIPCARDS")
            results['Katakana - MISSING_KANA'] = test_check_mouseover(_03_BTN_MISSING_KANA, "_03_BTN_MISSING_KANA")
            results['Katakana - VOCAB_LIST'] = test_check_mouseover(_03_BTN_VOCAB_LIST, "_03_BTN_VOCAB_LIST")
            results['Katakana - WORD_BUILDER'] = test_check_mouseover(_03_BTN_WORD_BUILDER, "_03_BTN_WORD_BUILDER")
     
        ## Flipcards
        results['Katakana - FLIPCARDS - go!'] = test_press_button(_03_BTN_FLIPCARDS, "_03_BTN_FLIPCARDS")
        #    
        results['Katakana - GOJUON'] = test_check_mouseover(_04_BTN_GOJUON, "_04_BTN_GOJUON")
        results['Katakana - HANDAKUTEN'] = test_check_mouseover(_04_BTN_HANDAKUTEN, "_04_BTN_HANDAKUTEN")
        results['Katakana - YOON'] = test_check_mouseover(_04_BTN_YOON, "_04_BTN_YOON")    
        results['Katakana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

         ## Missing
        results['Katakana - Missing kana - go!'] = test_press_button(_03_BTN_MISSING_KANA,"_03_BTN_MISSING_KANA")
        #
        results['Katakana - GOJUON'] = test_check_mouseover(_04_BTN_GOJUON, "_04_BTN_GOJUON")
        results['Katakana - HANDAKUTEN'] = test_check_mouseover(_04_BTN_HANDAKUTEN, "_04_BTN_HANDAKUTEN")
        results['Katakana - YOON'] = test_check_mouseover(_04_BTN_YOON, "_04_BTN_YOON")    
        results['Katakana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

         ## VOCAB_LIST
        results['Katakana - VOCAB_LIST - go!'] = test_press_button(_03_BTN_VOCAB_LIST, "_03_BTN_VOCAB_LIST")
        # check scroll buttons (up, down) work:
        #  Count changes
        #  top results scroll out of the way.
            
        # check search works for fewer and more than one result
        # more than result_count:
        # scroll arrows disappear
        # 
        
        # 
        results['Katakana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

         ## WORD_BUILDER
        results['Katakana - WORD_BUILDER - go!'] = test_press_button(_03_BTN_WORD_BUILDER, "_03_BTN_WORD_BUILDER")
        # 
        results['Katakana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
        results['Katakana - Back to main menu'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

    
    ### Kanji
    if kanji_test:
        results['Main menu - Kanji - go!'] = test_press_button(_02_BTN_KANJI, "_02_BTN_KANJI")
        
        if mouseover_test:
            results['Kanji - 100KANJI'] = test_check_mouseover(_05_BTN_100KANJI, "_05_BTN_100KANJI")
            results['Kanji - RADICALLIST'] = test_check_mouseover(_05_BTN_RADICALLIST, "_05_BTN_RADICALLIST")
            results['Kanji - VOCAB_LIST'] = test_check_mouseover(_03_BTN_VOCAB_LIST, "_03_BTN_VOCAB_LIST")
            results['Kanji - WORD_BUILDER'] = test_check_mouseover(_03_BTN_WORD_BUILDER, "_03_BTN_WORD_BUILDER")
        """
            
        """
        # radical list
        results['Kanji - Press RADICALLIST'] = test_press_button(_05_BTN_RADICALLIST, "_05_BTN_RADICALLIST")
        results['Kanji Radicals - radical_frequency'] = test_check_background(_05_SCREEN_RADICAL_FREQUENCY, "_05_SCREEN_RADICAL_FREQUENCY")
        # go left, should stay the same
        results['Kanji Radicals - Press LEFT_ARROW'] = test_press_button(_00_BTN_LEFT_ARROW, "_00_BTN_LEFT_ARROW")
        results['Kanji Radicals - _RADICALS_01'] = test_check_background(_05_SCR_RADICALS_01, "_05_SCR_RADICALS_01")
        # go right, it should be different
        results['Kanji Radicals - Press RIGHT_ARROW'] = test_press_button(_00_BTN_RIGHT_ARROW, "_00_BTN_RIGHT_ARROW")
        results['Kanji Radicals - RADICALS_02'] = test_check_background(_05_SCR_RADICALS_02, "_05_SCR_RADICALS_02")
        results['Katakana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
        """
        
        # 100 kanji
        """
        results['Kanji - Press 100KANJI'] = test_press_button(_05_BTN_100KANJI, "_05_BTN_100KANJI")
        # go left, should stay the same
        results['Kanji 100 - Press LEFT_ARROW'] = test_press_button(_00_BTN_LEFT_ARROW, "_00_BTN_LEFT_ARROW")
        results['Kanji 100 - _05_SCR_KANJI_01'] = test_check_background(_05_SCR_KANJI_01, "_05_SCR_KANJI_01")
        # go right, it should be different
        results['Kanji 100 - Press RIGHT_ARROW'] = test_press_button(_00_BTN_RIGHT_ARROW, "_00_BTN_RIGHT_ARROW")
        results['Kanji 100 - _05_SCR_KANJI_02'] = test_check_background(_05_SCR_KANJI_02, "_05_SCR_KANJI_02")
        results['Katakana - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
        
        # should probably check the end of the kanji list doesn't crash out too, by clicking heaps
        # make a click function wrapper with a loop.

        # Word builder
        results['Kanji - Press Word Builder'] = test_press_button(_03_BTN_WORD_BUILDER, "_03_BTN_WORD_BUILDER")
        # check if it makes it there:
        # results['Kanji 100 - _05_SCR_KANJI_02'] = test_check_background(_05_SCR_KANJI_02, "_05_SCR_KANJI_02")
        results['Kanji - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")

    if vocabAndGrammar_test:
        # Vocab &Grammar button
        if hiragana_test or katakana_test or kanji_test:
            results['Vocab & grammar - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
            
        results['Vocab ^ grammar - Go!'] = test_press_button(_02_BTN_VOCABGRAMMAR, "_02_BTN_VOCABGRAMMAR")

        # Vocab button
        results['Vocab'] = test_press_button(_08_BTN_VOCABULARY, "_08_BTN_VOCABULARY")
        
        ## Vocab/Grammar
        # check mouse overs first
        if mouseover_test:
            results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
            
            results['Adjectives - Help'] = test_check_mouseover(_10_BTN_ADJECTIVES, "_10_BTN_ADJECTIVES")
            # wtf can't find it
            results['Adverbs - Help'] = test_check_mouseover(_09_BTN_ADVERBS, "_09_BTN_ADVERBS")
            results['Nouns - Help'] = test_check_mouseover(_11_BTN_NOUNS, "_11_BTN_NOUNS")
            results['Verbs - Help'] = test_check_mouseover(_12_BTN_VERBS, "_12_BTN_VERBS")
            results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")    
        
        """
        # Adjectives
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        results['Adjectives - Press button'] = test_press_button(_10_BTN_ADJECTIVES, "_10_BTN_ADJECTIVES")
        # Dialogs
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")    
        results['Adjectives - _00_SCH_AdjectiveResult'] = test_press_button(_00_SCH_AdjectiveResult, "_00_SCH_AdjectiveResult")
        #time.sleep(5)
        # i'm fine with skipping this one.
        #results['Adjectives - 00_DLG1_Adjectives'] = test_check_background(_00_DLG1_Adjectives, "00_DLG1_Adjectives")
        results['Adjectives - 00_DLG2_Adjectives'] = test_check_background(_00_DLG2_Adjectives, "00_DLG2_Adjectives")
        results['Adjectives - 00_DLG2_Adjectives'] = test_press_button(_00_DLG2_Adjectives, "00_DLG2_Adjectives")
        
        
        # Adverbs
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        results['Adverbs - Go!'] = test_press_button(_09_BTN_ADVERBS, "_09_BTN_ADVERBS")
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        #results['Adverbs - _00_SCH_AdjectiveResult'] = test_press_button(_00_SCH_AdverbsResult, "_00_SCH_AdverbsResult")        
        #results['Adverbs - _00_SCH_AdverbsResult'] = test_check_background(_00_SCH_AdverbsResult, "00_SCH_AdverbsResult")
        results['Adverbs - _00_SCH_AdverbsResult'] = test_press_button(_00_SCH_AdverbsResult, "00_SCH_AdverbsResult")
        """
        
        # Nouns
        """
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")        
        results['Nouns - Press button'] = test_press_button(_11_BTN_NOUNS, "_11_BTN_NOUNS")
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        #results['Adjectives - _00_SCH_AdjectiveResult'] = test_press_button(_00_SCH_AdjectiveResult, "_00_SCH_AdjectiveResult")

        results['Nouns - _00_SCH_NounsResult'] = test_press_button(_00_SCH_NounsResult, "00_SCH_NounsResult")
        results['Nouns - _00_SCH_NounsResult'] = test_check_background(_00_SCH_NounsResult, "00_SCH_NounsResult")
        results['Nouns - _00_SCH_NounsResult'] = test_press_button(_00_SCH_NounsResult, "00_SCH_NounsResult")
        """
        
        """
        # Verbs
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        results['Verbs - Press button'] = test_press_button(_12_BTN_VERBS, "_12_BTN_VERBS")
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        results['Verbs - result click'] = test_press_button(_00_SCH_VerbsResult, "00_SCH_VerbsResult")
        results['Verbs - _00_SCH_VerbsResult'] = test_check_background(_00_SCH_VerbsResult, "00_SCH_VerbsResult")
        results['Verbs - result click'] = test_press_button(_00_SCH_VerbsResult, "00_SCH_VerbsResult")
        """
        
        """
        # Vocab search
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        results['Vocab - Press button'] = test_press_button(_13_BTN_VOCABSEARCH, "_13_BTN_VocabSearch")
        results['Vocab - _00_SCH_VerbsResult'] = test_check_background(_00_SCH_VocabResult, "00_SCH_VocabResult")
        results['Vocab - _00_SCH_VerbsResult'] = test_press_button(_00_SCH_VocabResult, "00_SCH_VocabResult")
        """
        results['MouseOverReset'] = test_move_mouse(_00_SCR_Cow, "_00_SCR_Cow")
        results['Vocab & grammar - Press back'] = test_press_button(_00_BTN_BACK, "_00_BTN_BACK")
        
        ###Vocab and Grammar
        results['Grammar - go!'] = test_press_button(_08_BTN_GRAMMAR, "_08_BTN_Grammar")
        
    time.sleep(3)    
    
    #results['Quit Game'] = test_quit_game()
    #time.sleep(3)


    if game_process.poll() is None:
        print("Game still running. Terminating manually...")
        game_process.terminate()

     # --- Results ---
    print("\nTEST RESULTS:")
    all_passed = True
    for test, passed in results.items():
        status = "passed" if passed else "not passed"
        if passed:
           print(f"{Fore.GREEN}{status} {test}{Style.RESET_ALL}")
        else:
           print(f"{Fore.RED}{status} {test}{Style.RESET_ALL}")        
        if not passed:
            all_passed = False

    if all_passed:
        # print("\nAll tests passed!")
        print(f"{Fore.GREEN}All tests passed!{Style.RESET_ALL}")
        sys.exit(0)
    else:
        print("\nSome tests failed. Check screenshots for details!")
        sys.exit(1) 

if __name__ == "__main__":
    main()
