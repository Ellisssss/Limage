close all;clear all;clc;

path = 'E:\FaceRecognition\test\';
% ����test�ļ����µ��������ļ��С�
subFolders = dir(path);
foldersLen = size(subFolders,1);
for i = 3:foldersLen
    subFolder = [path,subFolders(i).name];
    disp(['----------',subFolder,'----------'])
    %     �������ļ����µ������ļ���
    files = dir(subFolder);
    copyfile([subFolder,'\',files(4).name],['E:\FaceRecognition\train\train_',subFolders(i).name,'.bmp']);
end