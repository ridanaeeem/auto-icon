import argparse
from PIL import Image

def resize(image_path):
    img = Image.open(image_path)
    width, height = img.size

    # If the image is taller (height > width), add transparent bars on the left and right
    if height > width:
        new_width = height  # Make width equal to height
        new_img = Image.new("RGBA", (new_width, height), (0, 0, 0, 0))  # New square image with transparent background
        paste_position = ((new_width - width) // 2, 0)  # Center the image horizontally
        new_img.paste(img, paste_position)
    
    # If the image is wider (width > height), add transparent bars on the top and bottom
    elif width > height:
        new_height = width  # Make height equal to width
        new_img = Image.new("RGBA", (width, new_height), (0, 0, 0, 0))  # New square image with transparent background
        paste_position = (0, (new_height - height) // 2)  # Center the image vertically
        new_img.paste(img, paste_position)

    # If the image is already square, no changes are needed
    else:
        new_img = img

    # Save the modified image
    new_img.save(image_path)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Resize an image to a square with transparent bars")
    parser.add_argument("image_path", type=str, help="Path to the image")
    args = parser.parse_args()

    resize(args.image_path)