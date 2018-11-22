# Image Quality Assessment of Scanned Well logs Using [NIQE](https://ieeexplore.ieee.org/document/6353522/)

Characterizes the quality of scanned well log images as 'acceptable' or 'unacceptable' for further processing and information retrieval using a image statistics IQA model (NIQE). 

## Dataset
`Well_log_pristines` - 157 images from the 'acceptable' category to be used as training data.

`Test` - Contains data for evaluating trained model
`dataset_A'
├───`Acceptable` - contains 36 well log images from the 'acceptable' category.   
└───`Unacceptable` - contains 36 well log images from the 'unacceptable category.   

`dataset_B'  
├───`Acceptable` - contains 64 well log images from the 'acceptable' category.   
└───`Unacceptable` - contains 64 well log images from the 'unacceptable category.     


## Training
Create training set by spliting train data into 512×512 chunks:  
`niqe/split.m`  

Train NIQE model:  
`niqe/train.m`  

## Usage
Use trained NIQE model to predict NIQE scores on test well log image data:  
`niqe/get_NIQE_scores`

 Plot the NIQE scores for the two categories:  
 `niqe/plots.m`


