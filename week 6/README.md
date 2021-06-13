NOTE: 
- Too fit to the traning set does not mean overfitting.
- Paramaters of model: Weights, tham số.
- Việc chia tập examples thành các tập con giúp "phát hiện" overfitting.

# 08/06/2021: 
- Learning curves: 
- Regularization term: As the magnitudes of the model parameters θj 
increase, the penalty increases as well.
- Not add regularization term for Bias terms.
- Regularization is not helpful for low dimension (non - polynomial with high degree).
- The training error does not include the regularization term (Why?).
(?) Learning curve with large dataset in practice?

- Regularization only used in training, not when evaluation & report,...
- feature scaling




# 07/06/2021: 
Data for Machine Learning: 
- Large data does not work for Underfitting (High Bias), does not enough features to predict (2 different things).
- Many parameters (Reduce Bias, J train small) + Large dataset (Reduce Variance, J train & J cv is quite similar) = Greate models.
- Test: 
 1. Human prediction from those features.
 2. Can get that large traning set.



Trading off precision & recall: 

I. 
- Set threshold. of the Hypothesis higher: Higher precision lower recall.
- Precision: Tỷ lệ "dự đoán positive đúng" & "số lần đưa ra dự đoán positive"
- Recall: Tỷ lệ "đự đoán đúng positive đúng" & "số lượng positive thực sự".
VD: Nếu dự đoán 1 suốt thì recall cao, nếu dự đoán 0 suốt thì precision cao.

II. Evaluation metrics: 
F score: 2 * (PR)/(P+R)

III. Note: 
* Measure precision (P) and recall (R) on the cross validation set and choose the value of threshold which maximizes 2\frac{PR}{P+R}2 
P+R
PR

* Single real number evaluation metric.
​




# 06/06/2021: 
Error Metrics for Skewed classes:
- Skewed classes.
- Precision & Recall: https://www.coursera.org/learn/machine-learning/lecture/tKMWX/error-metrics-for-skewed-classes Apply for rare class.





# 05/06/2021: 
Machine learning System Design: 
II. Questions: 
1. Which of the following statements do you agree with? Check all that apply.
- For some learning applications, it is possible to imagine coming up with many different features (e.g. email body features, email routing features, etc.). But it can be hard to guess in advance which features will be the most helpful.
- There are often many possible ideas for how to develop a high accuracy learning system; “gut feeling” is not a recommended way to choose among the alternatives.

# 03/06/2021: 
Bias vs. Variance: 
I. Diagnosing (What?):
- High Bias: Underfitting (Large error) (Thiên kiến cao: Không chịu học cái mới).
 - Both cost of train & cv tests are high.
- High variance: Overfitting.

II. Regularization & Bias/Variance: 
- Large regularization rate: Underfitting.
- Small regularization rate: Overfitting.

II.1. Choose Regularization Rate: 
1. 12 models with regularization rate: 0 0.01 0.02 0.04 ... 10.24 (~10).
2. Train & compute J cv for each model. Select the best one.
3. Compute J test.

III. Learning curves: 
- A learning algorithm is suffering from high bias, getting more training data will not help 'much'.
- A learning algorithm is suffering from high variance, getting more training data is likely to help.
- Link: https://www.coursera.org/learn/machine-learning/supplement/79woL/learning-curves

IV. Debugging: 
- https://www.coursera.org/learn/machine-learning/supplement/llc5g/deciding-what-to-do-next-revisited

V. Note: 
- In Linear Regression. Cost can be 0. Not in Logistic Regression.
- Not use regularization rate when compute J on test and cv.
- Càng nhiều dữ liệu, loss train càng cao nhưng loss tại CV lại càng giảm.
- Việc chuẩn hóa dữ liệu ngoài giúp training nhanh hơn còn giúp các thành phần bậc cao đóng vai trò cao hơn (trong linear regression & logistic regression).

VI. Questions: 
1. Suppose you fit a neural network with one hidden layer to a training set. You find that the cross validation error J_\text{CV}(\theta)J CV (θ) is much larger than the training error J_\text{train}(\theta)J train (θ). Is increasing the number of hidden units likely to help?
- No, because it is currently suffering from high variance, so adding hidden units is unlikely to help.

2. Điều gì đảm bảo rằng trong quá trình regularization, các thành phần bậc cao có trọng số giảm nhanh hơn thành phần bậc thấp.
- Sử dụng kiến thức chuẩn hóa + công thức của J.

3. Lý giải tương tự câu 2 đối với mạng NN?


# 06/02/2021: 
I. Debugging: 
- Large errors in the prediction on testing: 
 - Get more training examples.
 - Try smaller sets of features.
(?) Why large set of feature cause overfitting?
Đúng. Bản chất là thêm các thuộc tính có bậc cao vào mô hình khiến xác suất xảy ra Overfitting cao hơn. Không thêm vào, thì xác suất không tăng lên.

 - Try getting additional features.
 - Try adding polynomial features.
 - Decrease/increase regularization rate.

II. Evaluate: 
1. 70% training set - 30% testing set, randomly order.

II.1. Linear regression: 
2. Apply Square Error Loss for testing set.
II.2. Misclassication error.
2. Apply Binary Cross Entropy Error for testing set.
3. Apply Misclassification Error (0/1 misclassification error) for testing set: 
- Bản chất là tỉ lệ testing examples bị sai.

(?) Misclassification (Accuracy) vs. Binary Cross Entropy
- Human needs misclassification.
- Machine needs Binary Cross Entropy.

III. Model selection & Train/Validation/Test Sets: 

(?) Do we need high degree polynomial term for NN?
(?) Desition boundary in NN?

III.1. Solution 1: 
- Select many degress of polynomial (Chọn bậc của đa thức).
- Compute J(test) on each model and choose the best one (Overfitting on test set).

III.2. Solution 2: 
- Training set: 60%.
- Cross validation set (CV): 20%.
- Testing set: 20%.

1. Training models.
2. Use cross validation set to select model.
3. Use test set to evaluate the model (use this to report).
- This solution avoid 'overfitting' on testset.