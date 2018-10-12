# NumberRecognitionSystem

## Overview
This is a project about Number Recognition System.
The topic is from a programming assignment of my class "Advanced Topics in AI".
I will use MATLAB to build a simple system to recognise number 1, 2, 4, 5.

## Tutorial
% I show you how to run the matlab code

% First, open Matlab

% Question 4.1
% My student id is 1155114524, so I record 1,2,4,5 in Mandarin
% Fs=48kHz and bps=16
% you can see the file in my directory

% Question 4.2
% I record another 1,2,4,5 as test set

% Question 4.3
% (a),(b)
% I do these two question in wav2jpg.m, I pick s5A.wav
% You can run command 'wav2jpg' in command window
% to plot time domain and save the image 's5A.jpg'

% Question 4.4
% (a)
% You can run command 'printSEtime' in command window
% then you can see the start time(T1) and end time(T2) ms

% (b)
% I write the function getSegment to find a segment

% (c)
% You can run command 'plotFTSeg' in command window
% then you can see the frequency domain, and image 'fourier_s5A.jpg' was saved

% (d)
% You can run command 'plotPreEmphasis' in command window
% then you can see the images of original Seg1 and pre-emphasis signal Pem_Seg1

% (e)
% You can run command 'printLPCparam' in command window
% then you can see 10 LPC parameters

% Question 4.5
% (a)
% You can run command 'convMFCC' in command window
% then you can see the MFCC matrix and its size

% (b)
% You can run command 'minDistance' in command window
% then you can see the minimal distance value

% (c)
% You can run command 'plotComparisonTable' in command window
% then you can see the comparison matrix table, 
% I compare 1,2,4,5 sequentially and you will find that
% the value of diagonal is small than others


% (d)
% You can run command 'plotOptimalPath' in command window
% then you can see the optimal path on the accumulated matrix diagram
% By the way, I save the image named 'optimal_path.jpg' manually
