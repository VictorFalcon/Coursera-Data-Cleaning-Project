
There two types of measues time-based and frequency-based in this experiment. These two types are referenced in the name of the measurement(variable) by a beginning appended word "time"or "frequency" to the name of the variable.
A variable with mean in its name referred to the mean of the measurement.Similary a variable with std toward the end of the name referred to a standard deviation of the measure.
A variable name  ending with the letter X,Y or Z indicates that the measurement was made the X,Y or Z axis of the space reference.

Units of variables:
Measurements are normalized and bounded within [-1,1]
acceleration on X,Y,or Z axis and on total body are in standard gravity units 'g'(gravity of earth=9.80665m/seg2)
Gyroscope units are in rad/seg

For the purpose of the this project Inertial Signals data were excluded as they do not include any mean or standard deviation of measurement.This project goal is to obtained a summarized mean and standard deviation by the subjects and the activities of the experiment.

The steps followed to clean the source data are explained in details
through R scripts in the "README.md" file.

Variables names
 [1] subject                                        
 [2] activity                                       
 [3] timeBodyAccelerometermeanX                     
 [4] timeBodyAccelerometermeanY                     
 [5] timeBodyAccelerometermeanZ                     
 [6] timeGravityAccelerometermeanX                  
 [7] timeGravityAccelerometermeanY                  
 [8] timeGravityAccelerometermeanZ                  
 [9] timeBodyAccelerometerJerkmeanX                 
[10] timeBodyAccelerometerJerkmeanY                 
[11] timeBodyAccelerometerJerkmeanZ                 
[12] timeBodyGyroscopemeanX                         
[13] timeBodyGyroscopemeanY                         
[14] timeBodyGyroscopemeanZ                         
[15] timeBodyGyroscopeJerkmeanX                     
[16] timeBodyGyroscopeJerkmeanY                     
[17] timeBodyGyroscopeJerkmeanZ                     
[18] timeBodyAccelerometerMagnitudemean             
[19] timeGravityAccelerometerMagnitudemean          
[20] timeBodyAccelerometerJerkMagnitudemean         
[21] timeBodyGyroscopeMagnitudemean                 
[22] timeBodyGyroscopeJerkMagnitudemean             
[23] frequencyBodyAccelerometermeanX                
[24] frequencyBodyAccelerometermeanY                
[25] frequencyBodyAccelerometermeanZ                
[26] frequencyBodyAccelerometermeanFreqX            
[27] frequencyBodyAccelerometermeanFreqY            
[28] frequencyBodyAccelerometermeanFreqZ            
[29] frequencyBodyAccelerometerJerkmeanX            
[30] frequencyBodyAccelerometerJerkmeanY            
[31] frequencyBodyAccelerometerJerkmeanZ            
[32] frequencyBodyAccelerometerJerkmeanFreqX        
[33] frequencyBodyAccelerometerJerkmeanFreqY        
[34] frequencyBodyAccelerometerJerkmeanFreqZ        
[35] frequencyBodyGyroscopemeanX                    
[36] frequencyBodyGyroscopemeanY                    
[37] frequencyBodyGyroscopemeanZ                    
[38] frequencyBodyGyroscopemeanFreqX                
[39] frequencyBodyGyroscopemeanFreqY                
[40] frequencyBodyGyroscopemeanFreqZ                
[41] frequencyBodyAccelerometerMagnitudemean        
[42] frequencyBodyAccelerometerMagnitudemeanFreq    
[43] frequencyBodyAccelerometerJerkMagnitudemean    
[44] frequencyBodyAccelerometerJerkMagnitudemeanFreq
[45] frequencyBodyGyroscopeMagnitudemean            
[46] frequencyBodyGyroscopeMagnitudemeanFreq        
[47] frequencyBodyGyroscopeJerkMagnitudemean        
[48] frequencyBodyGyroscopeJerkMagnitudemeanFreq    
[49] timeBodyAccelerometerstdX                      
[50] timeBodyAccelerometerstdY                      
[51] timeBodyAccelerometerstdZ                      
[52] timeGravityAccelerometerstdX                   
[53] timeGravityAccelerometerstdY                   
[54] timeGravityAccelerometerstdZ                   
[55] timeBodyAccelerometerJerkstdX                  
[56] timeBodyAccelerometerJerkstdY                  
[57] timeBodyAccelerometerJerkstdZ                  
[58] timeBodyGyroscopestdX                          
[59] timeBodyGyroscopestdY                          
[60] timeBodyGyroscopestdZ                          
[61] timeBodyGyroscopeJerkstdX                      
[62] timeBodyGyroscopeJerkstdY                      
[63] timeBodyGyroscopeJerkstdZ                      
[64] timeBodyAccelerometerMagnitudestd              
[65] timeGravityAccelerometerMagnitudestd           
[66] timeBodyAccelerometerJerkMagnitudestd          
[67] timeBodyGyroscopeMagnitudestd                  
[68] timeBodyGyroscopeJerkMagnitudestd              
[69] frequencyBodyAccelerometerstdX                 
[70] frequencyBodyAccelerometerstdY                 
[71] frequencyBodyAccelerometerstdZ                 
[72] frequencyBodyAccelerometerJerkstdX             
[73] frequencyBodyAccelerometerJerkstdY             
[74] frequencyBodyAccelerometerJerkstdZ             
[75] frequencyBodyGyroscopestdX                     
[76] frequencyBodyGyroscopestdY                     
[77] frequencyBodyGyroscopestdZ                     
[78] frequencyBodyAccelerometerMagnitudestd         
[79] frequencyBodyAccelerometerJerkMagnitudestd     
[80] frequencyBodyGyroscopeMagnitudestd             
[81] frequencyBodyGyroscopeJerkMagnitudestd         

The source data includes the details of the experiment is availabel at : 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

