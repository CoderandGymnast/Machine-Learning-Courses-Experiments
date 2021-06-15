TODO:
- http://web.mit.edu/6.034/wwwbob/svm-notes-long-08.pdf
- Spam classifier. 

## 13/06/2021: 
I. Tasks: 
- Programming exercises.

II. Notes: 
- Outlier affects the SVM decision boundary.
- C: Large C parameter tells the SVM to try to classify all the examples correctly.
- SVM with small C: Large margin classification.
- SVM with large C: Overfitting (High variance).
- Large margin classification: Natural fit.
- SVM (linear features) with Gaussian kernel ~ Polynomial logistic regression.
- Mô hình không quan tâm "thứ tự" xuất hiện của các từ trong email mà chỉ quan tâm đến "sự xuất hiện" của các từ đó.

III. Questions: 
- How to select sequences of C and sigma to test.
E.g., 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30





## 12/06/2021: 
I. Tasks: 
- SVMs in practice:

II. Notes: 
- SVM package: liblinear, libsvm.

II.1. SVM configuration: 
- C: Regularization term.
- Similarity function (E.g., Gaussian kernel, Linear kernel): (Popular kernel functions)
 - Linear kernel: Z in Logistic Regression (SVM without kernel).
 - Gaussian kernel: Z is more complex = Similarity function + Z. 

- Sometimes, must provide Kernel (similarity) functions).

II.2. Kernel selection (Similarity function selection): 
- Simple data set (n large, m small): Linear kernel.
- Complex data set (n small, m large): Gaussian kernel.

II.3. Notes: 
- Feature scaling before using Kernel to make all features "equally". Not the same reason with Gradient Descent.
- Not all similarity functions make valid Kernels. Use a technical condition called "Mercer's Theorem: Định lý người thương tiếc" to make sure SVM package converge.

II.4. Other kernels: 
- Polynomial kernel.
...

II.5. Multi-class classification: 
- One vs. all: Multiple models.

II.6. Logistic regression vs. SVMs: 
- n >= m: Use logistic regression or SVM without kernel (linear kernel). Because data set is not complex, so can use linear models.

- n is small (1 - 1000), m = 10 - 10000: Use SVM with Gaussian kernel.

- n is small (1 - 1000), m = 50 000+): 
- Create/add more features (e.g., high degree features or additional features to make models more complex).
- Use logistic Regression or SVM without kernel.

III. Conclustion: 
III.1. Selection: 
- SVM always find out global minimum.
- NN is the best but sometimes slower to train.
- A significant advantage of SVMs is that while ANNs can suffer from multiple local minima, the solution to an SVM is global and unique (Convex optimization).

III.2. The more important: 
- Data. 
- Debugging. 
- Optimization (Additional features,...).




## 11/06/2021: 
I. Tasks:
- Kernels.

II. Notes: 
- SVM: Machine Learning Model.
- Kernel: Technique to define new features (Non-linear features on Logistic Regression.). Bắt đầu từ việc chọn landmark đến lúc biến đổi xong từ x sang f.
 - Use landmarks to compute new features from old features.
 - Define new features for support vector machines.
 - Gaussian Kernels: Cho ra vector mà các phần tử thuộc (0; 1).
 - Việc đổi từ x sang f tương đương với việc tự động ...
 - Desision boundaries bọc xung quanh landmarks.

- Computational trick to speed up SVM + kernel.
- Use kernel on other machine learning algorithms are not good for computational resources.
- Thành phần sigmoid^2 lớn khiến đồ thị của f & features thoải hơn, features thay đổi f có sự thay đổi ít hơn. Từ đó, sự nhạy cảm của Z, Hypothesis ít hơn, từ đó sinh ra High Bias (Underfitting).

III. Kết luận: 
- Kernel cung cấp features cho SVM. 
- Quy trình chọn C giống hệt Regularization term.

IV. Câu hỏi: 
1. Tại sao sigmoid^2 lớn lại gây ra Underfitting?
- Sự "nhạy cảm" của mô hình.



# 10/06/2021: 
I. Tasks: 
- Mathematics behind large margin classification.

II. Notes: 
II.1. Vector Inner Product: 
- Norm of u (||u||): Length of geometric vector u.

II.2. Large margin classification proof: 
1. Minimize ||θ|| means maximize P.
2. Maximize P means make large margin classification.

III. Questions: 
1. Cosin rule proof.
2. Vector Inner Product proof: Dot product. (Hint: Projection Vector Proof & cos).
3. SVM objective function: Minimize its cost function.
4. Quiz: https://www.coursera.org/learn/machine-learning/lecture/3eNnh/mathematics-behind-large-margin-classification



# 09/06/2021: 
Optimization Objective: 

I.1. Support Vector Machine (SVM): 
- High confident in prediction making.
- Large margin classifier.
- Large C ~ High variance (Overfitting).

I.2. Conclusion: 
- Increase 'confident' of the model.


(?) Loss của logistic regression & SVM có gì khác nhau?
(?) Gradient Descent?
(?) What happen if C is too large?
- SVM suffers overfitting will not show any different from Logistic model.
(?) Ý tưởng của Kernel & SVM?
- Tự động hóa khâu chọn high degree features.

(?) Trong SVM thì khi nào dự đoán 1, khi nào dự đoán 0.
(?) Mô tả pipeline của kernel & SVM?
(?) Lý do sử dụng feature scaling?
- Tốc độ training nhanh hơn.

(?) Tại sao không sử dụng features scaling gây ra các vấn đề trong Gradient Descent?
- Do dùng chung learning rate. Bản chất, khi training cần đảm bảo mô hình không bị phân kỳ. Tức, cần đảm bảo các features có khoảng giá trị nhỏ nhất hội tụ (Thì các features có khoảng giá trị to hơn chắc chắn sẽ hội tụ). Tuy nhiên, khi khoảng giá trị của các fatures quá chênh lệnh, việc đảm bảo hội tụ cho các features có khoảng nhỏ sẽ khiến các trọng số ứng với các features có khoảng lớn không hội tụ hoặc mất cực kỳ lâu để hội tụ. Tóm lại, thời gian training mô hình cực kỳ lâu nếu các khoảng của features là chênh lệnh nhau nhiều hoặc thậm chí là không thể hội tụ.

(?) 
- n>= m: 
VD: Xử lý ảnh.
 - Sử dụng logistic regression without high degree,...