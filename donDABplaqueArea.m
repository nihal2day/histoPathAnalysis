function results = donDABplaqueArea(I)
% AUTHOR: NIHAL SATYADEV
% Function defines area stained by 6E10 (Plaques)
% Calculates total stain as well as individual stain areas

%MUST EDIT THIS VALUE%
px2um = 0.4527

%CALCULATESTAINS
croppedI = whiteClear1(I);
plaqueI = donDABMask1(I);

% 
props = regionprops("table",croppedI,"Area");
areaPixels = sum(props.Area);
areaMicroMeters = round(areaPixels * px2um * px2um);

results.totalArea = areaMicroMeters;

props = regionprops("table",plaqueI,"Area");
areaPixels = sum(props.Area);
areaMicroMeters = round(areaPixels * px2um * px2um);

results.plaque_indiv = props.Area * px2um * px2um;

results.plaqueArea = areaMicroMeters;

format long;
results.plaqueTotalRatio = results.plaqueArea/results.totalArea;

end

