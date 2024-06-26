#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed. Please install it first."
    exit 1
fi

# Replace 'input_image.jpg' and 'output_image.png' with your file paths
input_image="/home/croco/source/croco-br.github.io/IA/black-logo-1024.jpeg"
output_image="introduction-visual.png"

# Resize the image to 30x30
convert "$input_image" -resize 511x496\! "$output_image"

echo "Image resized successfully!"
