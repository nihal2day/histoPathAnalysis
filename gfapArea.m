function results = gfapArea(I)
% AUTHOR: NIHAL SATYADEV
% Function defines area stained by GFAP (Astrocytes)

%This value represents the number of microns/pixel. This can be found in
%QuPath
px2um = 0.4527

%Masks created to remove white background and define stain
croppedI = whiteClear1(I);
astrocyteI = gfapMask_final(I);

props = regionprops("table",croppedI,"Area")
areaPixels = sum(props.Area);
areaMicroMeters = round(areaPixels * px2um * px2um);

results.totalArea = areaMicroMeters;

props = regionprops("table",astrocyteI,"Area");
areaPixels = sum(props.Area);
areaMicroMeters = round(areaPixels * px2um * px2um);

results.astrocyteArea = areaMicroMeters;

format long;
results.astrocyteTotalRatio = results.astrocyteArea/results.totalArea;

end
