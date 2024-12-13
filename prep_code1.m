clc;
clear all;
close all;
Categories = ["10","11","12","13","14","16","17","18","19"];
base_input_dir = "nature_water_sounds/nature_water_sounds/";
base_output_dir = "cwt_1/";
for cat=1:length(Categories)
Img_file_Loc = base_output_dir + Categories(cat) + "/";
mkdir(Img_file_Loc);
csv_files_loc =  base_input_dir+Categories(cat) + "/";
data_dir = dir(csv_files_loc + "*.wav");

for i = 1:length(data_dir)
    [data,fs] =audioread(csv_files_loc + data_dir(i).name);
    data_1 = reshape (data, [],10);
for j = 1:10
            datal = data_1(:, j);
            cwt(datal, fs); % Apply continuous wavelet transform
            set(gca, 'Visible', 'off'); % Hide axis
            Img = getframe(gca);
            imwrite(Img.cdata, Img_file_Loc + Categories(cat) + "_" + i + "_" + j + ".png");
            close
        end
    end
end