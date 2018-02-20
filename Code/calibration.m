clear all; close all; clc;

rgbImage = videoinput('kinect', 1);
depthImage = videoinput('kinect', 2);

srcDepth = getselectedsource(depthImage);

start([rgbImage depthImage]);

[imgColor, ts_color, metaData_Color] = getdata(rgbImage);
[imgDepth, ts_depth, metaData_Depth] = getdata(depthImage);

imwrite(uint8(imgColor(:, :, 1:3)), 'rgb_1_10.png');

%% Calibration

stereoCameraCalibrator('folder1','folder2',33,'millimeters');