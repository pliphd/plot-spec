function Position = CenterFig(figWidth, figHeight, Units)
%CENTERFIG make figure in the center of monitor
% 
% $Author:  Peng Li, Ph.D.
%           MBP, Div Sleep Med, BWH & HMS
% $Date:    Apr 21, 2016
% $Modif.:  Mar 09, 2019
%               Accept figure units as inputs
% 

screenUn = get(0, 'Units');
set(0, 'Units', Units);
screensz = get(0, 'ScreenSize');
figLeft  = (screensz(3) - figWidth)/2;
figBot   = (screensz(4) - figHeight)/2;
set(0, 'Units', screenUn);

Position = [figLeft figBot figWidth figHeight];