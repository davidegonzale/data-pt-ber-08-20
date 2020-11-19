![IronHack Logo](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/upload_d5c5793015fec3be28a63c4fa3dd4d55.png)

# Project: Unsupervised Learning 

## Overview

In the past two lessons, you have learned what Unsupervised Machine Learning is, what problems are suitable for a solution based on Unsupervised Machine Learning, how to apply Unsupervised Machine Learning, and you have practiced implementing the basic phases of a solution using Scikit-learn. Now is time to put all that conceptual and procedural knowledge to work by doing a larger project. Choose a problem domain that motivates you, and build a complete solution implementing all the phases you learned about in previous chapters. We provide some ideas of interesting problem domains in a dedicated section in this lesson, but we want you to be creative and adventurous, and explore other options as well. This lesson does not present any new material: everything you will need to complete this project was discussed on previous lessons.

## Project Requirements

1. Your code needs to read a dataset stored on disk as input, and divide it into train and test set.
2. Your code needs to use the learned model to estimate the target value of problem instances.
3. Your code must compute a quality metric of the learned model.

## Technical Requirements

1. Use Python as programming language.
2. Use Pandas for reading the dataset into a pandas dataframe.
3. Use Scikit-learn for training and testing the Machine Learning model.

## Necessary Deliverables

1. Python code.
2. Brief report containing explanation of the dataset, quality metrics of the model and the experimental procedure (whether a single split was performed, or cross-validation, etc.).

## Suggestions to Get Started

1. Find an interesting dataset! Look in the Useful Resources section for sources of ideas.
2. If you do not find a pre-existing dataset on the problem domain that you like, be creative: consider building the dataset yourself and donating the dataset to one of the public Machine Learning repositories.
3. Break down the project into smaller tasks, for instance: importing the dataset, training, etc.
4. Decide whether you will create a single Python application or several Python applications.

## Potential Project Ideas

1. Segment smartphone users according to phone usage and apps installed.
2. Segment healthy person under 50 years of age according to their risk or propensity of suffering from Alzheimer's disease after 70 years of age.
3. Classify computer network traffic as a means to detect patterns of anomalous flows.

## Useful Resources

* University of California at Irvine's [Machine Learning Repository](https://archive.ics.uci.edu/ml)
* OpenML [datasets](https://www.openml.org)
* Kaggle [datasets](https://www.kaggle.com/datasets)

## Rubric

* Read dataset into Pandas dataframe and select the training set from it: 1 point.
* Model trained and evaluated: 2 points.
* Model used for estimation of new instances: 1 point.
* Different experiments performed using different amounts of clusters, to determine best choice: up to 2 points.
