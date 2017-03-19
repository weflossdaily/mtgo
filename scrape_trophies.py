import pyautogui
import time

# switch to mtgo
pyautogui.moveTo(889, 123);
time.sleep(0.1);
pyautogui.click();
time.sleep(0.1);
pyautogui.click();
time.sleep(0.5);

try:
# while scroll isn't at bottom
	while True:
		# cap a screen
		pyautogui.hotkey('command','shiftleft','4')
		pyautogui.moveTo(1132, 62)
		pyautogui.dragTo(1420, 582,duration=0.5)
		# scroll the screen
		pyautogui.moveTo(1423, 578)
		for i in range(1,40):
			pyautogui.click()
			time.sleep(0.05)

except KeyboardInterrupt:
	print('\nDone.')