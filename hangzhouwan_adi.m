clear;clc;close all;

pathRoot = '/Volumes/midDisk/hangzhouwan-2016Q1-tidy/netmanager_b';
% pathRoot = 'F:\hangzhouwan-2016Q1-tidy\netmanager_b';

sensorNum = [1:55];
dateStart = '2016-01-01';
dateEnd = '2016-03-31';
sensorTrainRatio = 40/100;
% sensorPSize = 10;

% %% []
% sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,sensorTrainRatio,[]);
% 
% %% s1
% step = [1];
% sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,[],[], step);
% 
%% s2
% sensorTrainRatio = 20/100;
step = [3];
sensor = adi3p5(pathRoot,sensorNum,dateStart,dateEnd,sensorTrainRatio,[],step);

% %% s3
% step = [3];
% sensor = adi(pathRoot,sensorNum,dateStart,dateEnd,[],[], step);
