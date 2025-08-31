# Digital Image Processing with MATLAB

This repository showcases foundational concepts in digital image processing, implemented using MATLAB. The scripts were developed as part of a university course on the subject, providing practical examples of key image analysis techniques.

## Project Files

1. image-grayscale-and-histogram.m

This script demonstrates basic image manipulation and analysis. It covers the following core functionalities:

    - **Image Loading and Display:** Reads and visualizes an input image.
    - **Grayscale Conversion:** Converts a color image to its grayscale equivalent.
    - **Intensity Histogram:** Computes and plots the intensity histogram, providing insight into the image's tonal distribution.

2. image-segmentation-and-edge-detection.m

This script delves into more advanced image analysis techniques, focusing on segmentation and edge detection. It includes implementations of:

    - **Otsu's Global Thresholding:** A method for automatically determining a binary threshold to separate an image into foreground and background.
    - **Adaptive Thresholding:** An approach that handles uneven illumination by computing a threshold for local regions of the image.
    - **Canny Edge Detection:** A widely used and robust algorithm for detecting a wide range of edges in an image.
    - **Watershed Segmentation:** A region-based segmentation technique that separates connected regions based on intensity "basins" and "watershed lines."

Each script is thoroughly commented to explain the purpose of each code section and the underlying image processing concepts.
