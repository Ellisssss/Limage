close all;clear all;clc;

path = 'E:\FaceRecognition\test\';
% ����test�ļ����µ��������ļ��С�
subFolders = dir(path);
foldersLen = size(subFolders,1);
for i = 3:foldersLen
    subFolder = [path,subFolders(i).name];
    disp(['----------',subFolder,'----------'])
%     �������ļ����µ������ļ���
    files = dir([subFolder,'\*.BMP']);
    filesLen = size(files,1);
    for j = 1:filesLen
        disp(['----------',files(j).name,'----------'])
%         ��ȡ�ļ���(��ȥ�ļ���չ��)��
        fileFullName = files(j).name;
        fileNameIndex = strfind(fileFullName,'.');
        fileName = fileFullName(1:fileNameIndex - 1);
%         �������ļ���
        movefile([subFolder,'\',fileFullName],[subFolder,'\','test_',fileName,'.bmp']);
    end
end






