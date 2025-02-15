#!/usr/bin/env fish

# Define the screenshot path
set screenshot_path ~/.cache/com.pot-app.desktop/pot_screenshot_cut.png

# Ensure the directory exists
mkdir -p (dirname $screenshot_path)
if test -f $screenshot_path
    rm $screenshot_path
end

# Run flameshot to take a screenshot and save it to the specified path
flameshot gui -s -p $screenshot_path

# Check if the screenshot was successfully saved
if test -f $screenshot_path
    echo "Screenshot saved to $screenshot_path"
    # Send the request to the specified URL
    curl "127.0.0.1:60828/ocr_recognize?screenshot=false"
else
    echo "Failed to save screenshot to $screenshot_path"
end
