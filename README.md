- The objective of the data collection process is the improvement of the classification performance of learned model for HAR (Human Activity Recognition) purpose using smartphone which contains sensors such as gyroscopes, accelerometeres and microphones instead of number of different "purpose sensors" against the previous available version which had less features.

- Types of human activity that were involved in the experiment are standing, sitting, laying down, walking downstairs and upstairs. Number of people performed this experiment are 30.

- Number of instances in the training and testing data are 10299. Number of features that are used to represent each instance are 561. Features that are extracted are the data collected from the mobile phone sensors such as gyroscope and accelerometer. The data consists of tri-axial linear acceleration and tri-axial angular velocity of subjects wearing the device at specified part of the body.

- The machine learning model that is used in the experiment is "multiclass support vector machine". The model is trained on the data collected from cell phone's gyroscope and accelerometer sensors which provided more number of features as compared to the data that was previously held. The maximum accuracy that is achieved by multiclass SVM is 96%.

- The dataset includes the following files:
=========================================

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
- The gyroscope units are rad/seg.
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A

