from PIL import ImageGrab

# Capture the entire screen
screen_image = ImageGrab.grab()

# Capture a specific region (bbox)
x1 = 128
x2 = 1480
y1 = 80
y2 = 840
bbox = (x1, y1, x2, y2)
region_image = ImageGrab.grab(bbox=bbox)

# Display the captured images
screen_image.show()
region_image.show()
print('Captured the snapshot successfully...')