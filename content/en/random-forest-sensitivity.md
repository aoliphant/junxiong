---
lang: en
slug: random-forest-sensitivity
title: Sensitivity of the RF classifier to training samples and data dimensions
date: 2017-04-25
tags: EarthEngine
---
<!-- more -->
![](http://oouh9u8nz.bkt.gdipper.com//random-forest-sensitivity.jpg)

The RandomForestClassifier is trained using bootstrap aggregation, where each new tree is fit from a bootstrap sample of the training observations z_i = (x_i, y_i) . The out-of-bag (OOB) error is the average error for each z_i calculated using predictions from the trees that do not contain z_i in their respective bootstrap sample. This allows the RandomForestClassifier to be fit and validated whilst being trained ^[T. Hastie, R. Tibshirani and J. Friedman, “Elements of Statistical Learning Ed. 2”, p592-593, Springer, 2009].



A random edits forest (RF) classifier is an ensemble classifier that multiple decision trees, using a randomly selected subset of training samples and variables. This classifier has become popular within the sensing community due to the accuracy of its classifications.

Supervised parametric classifiers such as Maximum Likelihood Classification (MLC) deliver excellent results when dealing with unimodal data. However, they have limitations when dealing with multi-modal input datasets because these classifiers assume a normal data distribution. CART, SVM and ANN classifiers don’t make any assumptions regarding frequency distribution and have therefore become increasingly popular for classifying remotely sensed data, which rarely have normal distributions.

In the last years the attention of the remote sensing community has turned to ensemble classifiers

# Sensitivity of the RF classifier to training samples and data dimensions
The samples used to train the supervised classifiers need to fulfill a number of requirements: 

1. training and validation data must be statistically independent, 
2. training samples must be class balanced, 
3. training samples must be representative of the target classes, and 
4. the training sample needs to be large enough to accommodate the increasing number of data dimensions (to mitigate the Hughes phenomenon).

It is important to evaluate the sensitivity of RF classification to sampling design and imbalanced training samples.

RF classification may be attractive when a small sample size is used in combination with high dimensional data inputs.

The classification accuracies obtained using correlated variables were similar to those obtained using uncorrelated variables. 

^[Belgiu, M., & Drăguţ, L. (2016). Random forest in remote sensing: A review of applications and future directions. ISPRS Journal of Photogrammetry and Remote Sensing, 114, 24–31. [http://doi.org/10.1016/j.isprsjprs.2016.01.011](http://doi.org/10.1016/j.isprsjprs.2016.01.011)]

Outputs from random forest provide unique complements to traditional accuracy assessment, including: (1) cross-validation, using the out-of-bag sample of training data to evaluate relative accuracy of each model prior to a formal accuracy assessment; (2) classification confidence, or probability, calculated by the number of times a given class was designated as the final class out of the total number of trees, with a resulting value range of 0–1; (3) mean decrease in accuracy, calculated per input data layer, giving insight to how influential a layer was on the overall accuracy; and (4) Gini index, which aids in evaluating the influence of input layers on the structure of the decision trees.
