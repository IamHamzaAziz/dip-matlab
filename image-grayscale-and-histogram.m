% Below MATLAB code performs the following tasks:
% 1. Reads an original image
% 2. Displays the original image
% 3. Converts the image to grayscale
% 4. Displays the grayscale image
% 5. Calculates and displays the intensity histogram of the grayscale image

% Clear the workspace and command window for a clean start
clear;
clc;
close all;

% Read and Display Original Image
% Define a sample image file path
% You should replace this with the actual path to your image (image should be in imdata folder)
image_path = fullfile('complete_path_to_image', 'sample_image.jpg'); 

% Read the image from the specified path.
% Note: The image must be in a supported format (e.g., .jpg, .png, .bmp)
original_image = imread(image_path);

% Create a new figure to display the images
figure('Name', 'Image Processing Results');

% Create the first subplot and display the original image
subplot(2, 2, 1);
imshow(original_image);
title('Original Image');

% Convert to Grayscale and Display
% Convert the original image to grayscale
% The 'rgb2gray' function is used for this conversion
grayscale_image = rgb2gray(original_image);

% Create the second subplot and display the grayscale image
subplot(2, 2, 2);
imshow(grayscale_image);
title('Grayscale Image');

% Calculate and Display Intensity Histogram
% Calculate the intensity histogram of the grayscale image
% The 'imhist' function computes the histogram of the image
subplot(2, 2, 3);
imhist(grayscale_image);
title('Intensity Histogram of Grayscale Image');