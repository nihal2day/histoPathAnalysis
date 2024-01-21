function results = lamp1Area(I)
% AUTHOR: NIHAL SATYADEV
% Updated 11/8/22
% Function defines area stained by LAMP
% As compared to previous mask (lamp1Mask)

%This value represents the number of microns/pixel. This can be found in
%QuPath
px2um = 0.4527

%Masks created to remove white background and define stain
croppedI = whiteClear1(I);
lampI = lamp1Mask_updated_final(I);
%lamp1Mask_updated was changed to current threshold

props = regionprops("table",croppedI,"Area")
areaPixels = sum(props.Area);
areaMicroMeters = round(areaPixels * px2um * px2um);

results.totalArea = areaMicroMeters;

props = regionprops("table",lampI,"Area");


areaPixels = sum(props.Area);
areaMicroMeters = round(areaPixels * px2um * px2um);

results.lampTotalArea = areaMicroMeters;


format long;
results.lampTotalRatio = results.lampTotalArea/results.totalArea;


end
