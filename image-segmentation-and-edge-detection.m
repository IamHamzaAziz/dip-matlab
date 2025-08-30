% This MATLAB script demonstrates various image segmentation and edge detection techniques
% It performs the following operations:
% 1. Reads an original image and converts it to grayscale if necessary
% 2. Applies Otsu's method for global thresholding
% 3. Applies adaptive thresholding (block-based)
% 4. Performs edge detection using the Canny operator
% 5. Performs region-based segmentation using the Watershed transform
% 6. Displays all the results in a single figure for comparison

% Clear the workspace and command window for a clean start
clear;
clc;
close all;

% Read and Pre-process Image
% Define a sample image file path
% Replace this with the actual path to your image image (image should be in imdata folder)
image_path = fullfile('sample_images', 'me.jpg');

% Read the image from the specified path
img = imread(image_path);

% Check if the image is color (3 planes) and convert it to grayscale
if size(img, 3) == 3
    grayImage = rgb2gray(img);
else
    grayImage = img; % If it's already grayscale, no conversion is needed.
end

% Image Segmentation and Edge Detection Techniques

% 1. Global Thresholding with Otsu's Method
% The 'graythresh' function automatically determines an optimal threshold level using Otsu's method
% 'im2bw' (or the equivalent thresholding logic) converts the grayscale image to a binary image.
thresholdLevel = graythresh(grayImage);
otsuImage = im2bw(grayImage, thresholdLevel); % im2bw is older, but widely used. Alternative: `grayImage > thresholdLevel * 255`.

% 2. Adaptive Thresholding
% The 'im2bw' (or 'imbinarize') function with a block-based method handles varying illumination.
adaptiveImage = imbinarize(grayImage, 'adaptive', 'Sensitivity', 0.5); % 'imbinarize' is the modern alternative to 'im2bw'.

% 3. Edge Based Segmentation using Canny Operator
% The 'edge' function with the 'canny' method is a popular and robust edge detection algorithm.
edgeImage = edge(grayImage, 'canny');

% 4. Region Based Segmentation with Watershed Transform
% The Watershed algorithm segments an image based on its topography.
% First, we compute the gradient magnitude of the image, which highlights region boundaries.
gradientImage = imgradient(grayImage);
% The 'watershed' function applies the transform to the gradient image to find the segmented regions.
L = watershed(gradientImage);
watershedImage = label2rgb(L);

% Display Results
% Create a figure to display all the processed images side by side.
figure('Name', 'Image Segmentation and Edge Detection Results');

% Subplot 1: Original Grayscale Image
subplot(2, 3, 1);
imshow(grayImage);
title('Original Grayscale Image');

% Subplot 2: Otsu's Thresholding
subplot(2, 3, 2);
imshow(otsuImage);
title('Otsu Thresholded Image');

% Subplot 3: Adaptive Thresholding
subplot(2, 3, 3);
imshow(adaptiveImage);
title('Adaptive Thresholded Image');

% Subplot 4: Canny Edge Detection
subplot(2, 3, 4);
imshow(edgeImage);
title('Edge Detection (Canny)');

% Subplot 5: Region-Based Segmentation (Watershed)
subplot(2, 3, 5);
imshow(watershedImage);
title('Region Based Segmentation (Watershed)');