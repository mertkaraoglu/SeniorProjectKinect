clear all; close all; clc;

rgbImage = videoinput('kinect', 1);
depthImage = videoinput('kinect', 2);

srcDepth = getselectedsource(depthImage);

start([rgbImage depthImage]);

[imgColor, ts_color, metaData_Color] = getdata(rgbImage);
[imgDepth, ts_depth, metaData_Depth] = getdata(depthImage);

image_sym = fliplr(imgColor(:, :, 1:3));

imwrite(uint8(image_sym), 'rgb_1_22.png');

%% Calibration

stereoCameraCalibrator('folder1','folder2',58,'millimeters');