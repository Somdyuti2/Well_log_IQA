# Image Quality Assessment of Scanned Well logs Using [NIQE](https://ieeexplore.ieee.org/document/6353522/)



## Dataset
`Well_log_pristines` - 157 images from the 'acceptable' category to be used as training data.

`Test` - 72 images to be used as test data   
├───`Acceptable` - contains 36 well log images from the 'acceptable' category.   
└───`Unacceptable` - contains 36 well log images from the 'unacceptable category.   

## Training
Create training set by spliting train data into 512×512 chunks:  
`niqe/split.m`  

Train NIQE model:  
`niqe/train.m`  

## Usage
Use trained NIQE model to predict NIQE scores on test well log image data:  
`niqe\get_NIQE_scores`

 Plot the NIQE scores for the two categories:  
 `niqe\plots.m`


