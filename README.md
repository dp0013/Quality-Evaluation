# Quality_Evaluation
Predict if microchip passes inspection based on results of 2 tests

===== DESCRIPTION ===== 
 
These are OCTAVE files (i.e., similar to MATLAB), largely based on matrix operations implementing logistic regression, similar to the College Admission Predicter project.  However, this project uses regularization to predict if a given microchip will pass inspection based on the results of two prior tests.  The total size of the data (sample) set (X) is 118 x 2, with each row representing the results of two tests for each of the 118 samples.
 
 
===== HOW TO USE =====

Type (without quotes) "qualityEval" in the Octave Command-Line Interface (CLI).  You will first see a plot of the test data in Figure 1, accompanied by both the computed and expected costs and gradients of the first 5 samples in the CLI; these were calculated with initial theta values of zero.  Next, you will see the computed and expected costs and gradients for the first 5 samples with test thetas set to 1 and lambda set to 10.  A final plot will be shown in Figure 2 that displays the resulting decision boundary for the respective lambda value.

NOTE:  The value of lambda is critical here as adjsting lambda will effectively change the decision boundary and, thus, the training accuracy.  For example, a lambda of 0.5 will result in 82.20% training accuracy, while a lambda of 10 yields 74.58%, and a lambda of 1 yields 83.1%.


===== CREDIT =====

This project was based on week 4 programming assignment of Coursera's Machine Learning course by Stanford University's Andrew Ng.  Enjoy! 

