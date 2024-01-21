# CNS Histopathological Analysis
Code written for Aulston et al "Long term rescue of Alzheimer’s deficits in vivo by one-time gene-editing of App C-terminus."

Code serves to characterize the area of 6E10, LAMP1, and GFAP staining of rodent brains

## Files

whiteClear1.m -- removes whitespace behind brain slice using MATLAB "color thresholding" feature

xxxMask_final.m -- creates threshold for isolating xxx stain using MATLAB "color thresholding" feature

xxxArea.m -- calculates the area for xxx stain in micron squared and as a % of the total brain region

1yr AAV con xxx.tif -- sample images to use to run code

### System requirements
Operates on PC or MAC

### Installation Guide
Requires MATLAB, no further installations required
MATLAB can be expected to be installed within 10 minutes

### Demo
1. Open MATLAB
2. Locate files
3. Place images on top right panel
4. Utilize command prompt to run xxxArea.m with associated image. Sample code below
>> lamp1Area(IMAGENAME.tif)
5. Expected output: values associated with the amount of area stained for given file
6. Expected runtime: 30seconds to 5 minutes for single image

### Instructions for use
as above