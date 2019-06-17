# Image-Compression-using-K-Means
Applying K-means to image compression.In a straightforward 24-bit color representation of an image,2 each pixel is repre-sented as three 8-bit unsigned integers (ranging from 0 to 255) that specify
the red, green and blue intensity values. 

This encoding is often refered to as the RGB encoding. Our image contains thousands of colors, and in this part of the exercise, you will reduce the number of colors to 16 colors.


I use K-means algorithm to select the 16 colors that will be used to represent the compressed image. Every pixel in the original image is treated as a data example and use the K-means
algorithm to find the 16 colors that best group (cluster) the pixels in the 3- dimensional RGB space

Datasets are provided as part of the project.

## Requirements
Matlab
