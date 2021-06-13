NEXT: 
* Làm lại Quiz. Chú ý câu 4.
* featureNormalize.m

* https://d3c33hcgiwev3.cloudfront.net/_41759bf2241607b07a5d4cd1285bff6b_Lecture5.pdf?Expires=1618704000&Signature=CTqBb~OkzLV1rpRlw6zaaaQNLrW2vcQJesUbyWDnYusOhtODOZ9uC0yMHpNiWCGIqcqgx1TDpnlW~V5IkFw~ROedVw1wuLMP559n5Q52RNM0pL4f5eH2l86n8LMMaY-eYOgxEzZ6mVmqpFMM2FG5u5yBCktIngF-e81hfPUDv90_&Key-Pair-Id=APKAJLTNE6QMUY6HBC5A.

TODO: 
- Chứng minh đạo hàm của Cross-entropy loss (log loss).
- Gradient Descent for Logistic Regression.	
- Vẽ đồ thị Z(l) = 0 trong NN để kiểm tra xem DB của NN có cong hay không.
- Thử plot đồ thị của một hàm gồm nhiều hàm sigmoid lồng nhau.
- Áp dụng các phương pháp tính xấp xỉ trong tính toán khoa học để tìm cực trị của J(thetas).
- Tại sao normal equation không hoạt động với classification problem (VD: Logistic regression problem)?
 - Học vẹt.
- Normal equation có gây ra hiện tượng overfitting trong linear regression không? KHÔNG.
- Tính định thức của ma trận bậc lớn hơn 2? Bản chất của định thức là gì?
- Tại sao m <= n thì normal equation không hoạt động đúng?
- Regularization là gì? Giảm bới sự ảnh hưởng của các thành phần bậc cao đến models.
- Phụ thuộc tuyến tính (Linearly dependent) là gì?
 - Khi xảy ra tình trạng phụ thuộc tuyến tính (Linearly dependent) trong tập dữ liệu, sẽ khiến X'X là một ma trận suy biến & do đó không thể sử dụng normal equation trong trường hợp này.
- Pseudo-inverse là gì? Tại sao lại chống được tình trạng suy biến (degenerate/singular) của ma trận.
- Uniform distribution là gì?
 - Xác suất ngang nhau?
- Gaussian distribution là gì?
- Histogram là gì?
- Độ lệch chuẩn (Standard deviation) là gì?
- Kết quả của mormal equation có ý nghĩa gì?
 - Nghiệm của phương trình J' = 0.

## 05/05/2021: 
BACK PROPAGATION: 
* Minimize cost.
* Compute derivetive.



MULTICLASS CLASSIFICATION: 
* One-vs-all method: Kỹ thuật để chuyển bài toán multi-class classification thành các bài toán con binary classification.
* Regularized logistic regression: 
 - Regularized cost function. 
 - Regularized Gradient Descent.
* Neural Network prediction: Forward propagation (Suy diễn tiến).
* Logistic Regression is a simple Neural Network.
* Thành phần Bias không làm ảnh hưởng đến độ cong của Decision Boundaries (Z), nên nó không gây ra Overfitting nên trong thành phần Regularization (Regularization term) không chứa Bias.
* Bản chất: One-vs-all chia bài toán thành c bài toán nhỏ ( c = số class). VD: Có 3 class là chó, mèo, gà. Khi train model cho chó thì xem mèo & gà là một.

CÂU HỎI: 
1. Định nghĩa kỹ thuật One-vs-all? Kỹ thuật này được sử dụng trong các bài toán nào?
Trả lời: 
- Đơn giản hóa bài toán multi-class thành các bài toán binaries.
- Dùng trong các bài toán multi-class. VD: Sử dụng Logistic regression, NN. 

2. NN prediction là suy diễn gì?
Trả lời: 
 - Suy diễn tiến (Forward propagation).

3. Logistic Regression có phải là một NN không? Nếu có, nó có dạng thế nào?
Trả lời: 
 - Có.
 - n-node input layer + 1-node output layer as hidden layer.

4. Tại sao trong kỹ thuật Regularization bỏ qua thành phần Bias?
Trả lời: 
 - Vì thành phần Bias không làm ảnh hưởng đến độ cong của Decision Boundaries (Z = 0). Tức, Bias không làm xảy ra Overfitting.
 - Bản chất: Thành phần tự do không làm ảnh hưởng đến độ cong của hàm số.

5. Regularization sử dụng trong các mô hình nào?
Trả lời: 
 - VD: Logistic Regression, NN. 

6. Nêu một ví dụ về One-vs-all.
VD: Xử lý ảnh.




## 04/05/2021: 
NEURAL NETWORKS: 
1. Tại sao cần NN trong khi đã có các giải pháp regression khác?
- Non - linear classification problem: Có 2 cách. 
 + Sử dụng non - linear features cho mô hình logistic regression: Khi số lượng features BAN ĐẦU lớn thì số lượng node đầu vào tăng rất cao (Do cần xây dựng các non - linear features). Từ đó gây ra tốn hiệu năng & overfitting (Do có quá nhiều thành phần có số mũ cao - polynomial).
 VD: Bài toán computer vision (Có hàng ngàn pixels).

CHÚ Ý: Decision boundaries có mô hình quyết định tính linear hoặc non - linear của mô hình logistic regression.

2. Overfitting gây ra bởi các yếu tố nào? 2 yếu tố.
- Có các thành phần số mũ cao.
- Trọng số của các thành phần đó đủ lớn.

3. Nếu bỏ qua hiệu năng, hãy so sánh Logistic regression & Neural Network.

MODEL REPRESENTATION: 
1. Logistic regression: Bản chất là NN với chỉ một Hidden layer & cũng là Output layer.
2. Tính toán Hypothesis (Tính toán output) của một Neural Network: Sử dụng Forward propagation.
3. NN có mối quan hệ gần gũi với Logistic regresion.
4. Bản chất: NN cũng tạo nên một Decision boundaries cực kỳ phức tạp (Chứa phân số nhiều tầng).
5. Trong NN, không cần sử dụng polynomial như logistic, linear,... regression. Vì trong logistic regression để tạo được một đường phức tạp, cần biến features thành dạng polynomial.








## 27/04/2021: 
CLASSIFICATION: 
* Logistic regression.
 - Regression (Hồi quy): Phương pháp 'xấp xỉ' phương trình phù hợp với bộ dữ liệu cho trước (Biến phụ thuộc (y, dependent variable) & biến độc lập (independent variable)).

* 2 types: 
 - Binaries. 
 - Multi-class.

* Threshold classifier output.
* Linear regression can be used in classification problem.
CHÚ Ý: Regression (Hồi quy) là phương pháp được sử dụng trong machine learning để 'xấp xỉ' một hàm thỏa mãn một tập dữ liệu cho trước. Cho đến nay đã biết được mội số loại: Linear regression (one-variable, multi-variable), polynomial regression (one-variable & multi-variable), logistic regression. Trong đó, đối với bài toán có đầu ra liên tục thì sử dụng 2 giải pháp đầu.
CHÚ Ý: 2 bài toán đã nghiên cứu: Prediction & Classification.

HYPOTHESIS REPRESENTATION: 
* Sigmoid (Activation function).
 - (0;1)

DECISION BOUNDARIES: 
* Bản chất chỉ là đồ thị biểu diễn mối quan hệ giữa features & labels được rút ra từ hàm sigmoid.
* Có 2 loại: 
 - Linear & non - linear.
 - monomial and polynomial.

1. Tại sao lại phải nằm trong khoảng từ (0;1).
* Ý tưởng: Đưa ra kết quả (class) & kèm theo xác suất dự đoán đúng là bao nhiêu.

2. Classification pipeline: 
* Ý tưởng: 
 - Đầu vào: Phải là các biến số đi với trọng số.
 - Đầu ra: (0;1).

3. Phân loại bài toán?
* Prediction: Đầu ra là giá trị cụ thể.
* Classification: Đầu ra là lớp & xác suất của lớp.
 - Bỏ lớp sigmoid thì sẽ thành bài toán dự đoán.
Bản chất cả 2 bài toán đều là dự đoán.

4. Logistic vs. Neural Network?
* Bản chất logistic là một NN đơn giản với chỉ một node, có activation là Sigmoid.

5. Bản chất của Decision Boundaries?
* Ranh giới của lớp theo thuộc tính.
* Khác hoàn toàn với phân cụm.

6. Nêu sự khác nhau giữa Decision Boundaries & kết quả của Clustering?
- Bất biến vs. thay đổi.

7. Hình dạng của Decision Boundaries quyết định bởi?
* Z: Đầu vào của Hypothesis trong classification problem (ThetaT*X).

8. Làm sao để chọn mô hình (polynomial và monomial)?
* Cần công cụ để đánh giá độ tuyến tính của dữ liệu.

9. Nội suy.
* Có thể hiểu là hồi quy với Overfitting toàn phần.









## 20/04/2021: 
* A^2 == A*A != A.^2 trong Matlab.
* Standard deviation: https://en.wikipedia.org/wiki/Standard_deviation






## 16/04/2021: 
* xor(1,0): 
 - Giống: 0.
 - Khác: 1.
* PS1('>> ');
* sprintf('2 decimals: %0.2f', a);
* format long.
* format short.
* Row/column vector.
* ones(2,3).
* zeros(1,3).
* rand(1,3).
* randn(1,3).
* hist(w,50); hist(w).
* eye(6): Identity matrix.
* size(A, 1); size(A)(1);
* load [filename];
* load('[filename]');
* who/whos
* clear [variable name];
* save [filename] [variable name];
* save [filename] [variable name] -ascii; Save as text (ASCII).
* A(:) % put all elements of A into a single vector.
* find(a<3).
* magic(3);
* prod(a); % product all elements of a.
* floor(a)/ceil(a).
* sum(A,1) % sum all elements of each column.
* sum(A,2) % sum all elements of each row.
* flipud(eye(10))
* pinv/inv(A).
* legend('sin', 'cos');
* print -dpng 'abc.png'
* figure(1); plot(t,y);
* subplot(1,2,1); % access the first element of the plots.
* axis([0.5 1 -1 1]);
* imagesc(A);
* imagesc(A), colorbar, colormap gray.
* addpath('[path]') % config search path.






## 13/04/2021: 
NORMAL EQUATION: 
* Sử dụng đạo hàm để tìm các điểm cực trị của hàm số.
* Giải phương trình J = 0 bằng phương pháp đạo hàm theo từng biến thetas để tìm điểm cực trị của đồ thị J(thetas).
 - Đương nhiên là không cần Feature Scaling.
* Lỗi: inv(X'*X) là ma trận có kích thước (n+1)*(n+1) không phải là nxn.
* Độ phức tạp khi thực hiện phép nghịch đảo trong ma trận có độ worst case là O(n^3).
* Công thức normal equation: inv(X'X)X'y
* Kiêng kị trong xử lý ảnh.
* Suy biến là KHÔNG khó xảy ra trong ma trận X'X vì có rất nhiều training example.
 - xi=a*xj
 - xi=xk*xl


KÊT LUẬN: 
* Sử dụng normal equation khi số lượng features <=10000 (Đủ nhỏ).
* Không thể sử dụng trong trường hợp ma trận X'X suy biến (singular/degenerate).

## 12/04/2021: 
MULTIVARIATE LINEAR REGRESSION: 
* Univariate/multivariate linear regression: Luôn tìm được cực trị toàn cục (global optimal). 
 - Đồ thị J - thetas (weights) có dạng parabol, bowl-shaped,...

* Multivariate linear regression: Multiple features.
 - Gradient Descent: Update each thetas (weights).

FEATURE SCALING: 
* Bản chất là phương pháp tìm xấp xỉ cực trị: Tương tự như phương pháp Newton.
* Giúp tốc độ hội tụ của từng feature đồng đều với nhau, giúp tổng thể hội tụ tốt hơn.
* Nếu các features có giá trị quá lệch nhau, có thể cần phải tốn rất nhiều công sức để tìm ra learning rate phù hợp để tất cả đều CÙNG HỘI TỤ. Tuy nhiên, tương tự như việc một chiếc xe đạp đi từ nhà đến trường, một con tàu vũ trụ đi từ Trái Đất đến Mặt Trăng, hội tụ khi xe đạp đến trường còn tàu vũ trụ đến Mặt Trăng. Như vậy, tàu vũ trụ sẽ sử dụng "learning rate" giúp xe đạp hội tụ để đi. Khi nào cho tới nơi:) Bản chất thì khi tến lửa tới nơi, xe đạp đã gần như ở trong trường. 
* Learning rate khiến feature có khoảng giá trị thấp hội tụ cũng khiến feature có giá trị cao hội tụ như cực kỳ chậm nếu xét trong cùng một mô hình.
* Khoảng hợp lý: [-1; 1]
* Scale down thì các feature vẫn thể hiện được độ quan trọng khác nhau do vẫn giữ được tính chất về tỉ lệ.

DEBUGGING: 
* Đảm bảo J giảm dần theo số lần iterations (Mỗi lần update thetas - weights).
* Nên chọn iterations phù hợp để tránh lãng phí tài nguyên khi tốc độ hội tụ cực kỳ nhỏ. 
 - Nhìn đồ thị J - iterations.
 - Sử dụng một hằng số đại diện cho độ giảm của J.
* Nếu đồ thị J - iterations có dạng parabol chứng tỏ J đang có xu hướng phân tán (diverge). Lúc này sử dụng learning rate nhỏ hơn.
* Chọn learning rate phù hợp để tốc độ hội tụ nhanh.
 - 0.001, 0.01, 0.1, 1,...

POLYNOMIAL REGRESSION: 
* Chỉ có thể tìm được cực trị địa phương. 
* Đường phân tách tạo ra "cong" hơn nên "fit" với tập dữ liệu hơn.
* Có thể sử dụng số mũ cho feature là phân số.

MỘT SỐ PHƯƠNG PHÁP FEATURE SCALING: 
* Mean normalization: 
(x - mean)/(max - min).





## 08/04/2021: 
* Vector: An nx1 matrix.
* Scalar multiplication.
* [1 X]*thetas=H.
* Matrixes: 
 - Not commutative: A*B!=B*A
 - Associative: Ax(BxC)=(AxB)xC
* Identity matrics: 
 - Anxm.Imxm=Inxn.Anxm
* Matrix inverse: 
 - Square matrix.
 - A*A^-1=A^-1*A=I
* Singular/Degenerate matrics: Ma trận suy biến.
 - det=0 (Hệ 'vô số nghiệm' hoặc không có nghiệm nào).
 - Does not have inverse.

* Định thức con & phần bù đại số: https://vi.wikipedia.org/wiki/Ma_tr%E1%BA%ADn_kh%E1%BA%A3_ngh%E1%BB%8Bch#%C4%90%E1%BB%8Bnh_th%E1%BB%A9c_con_v%C3%A0_ph%E1%BA%A7n_b%C3%B9_%C4%91%E1%BA%A1i_s%E1%BB%91
* Công thức tính ma trận nghịch đảo: https://vi.wikipedia.org/wiki/Ma_tr%E1%BA%ADn_kh%E1%BA%A3_ngh%E1%BB%8Bch

* Phần bù đại số = Định thức con + dấu.

## 07/04/2021: 
* Gradient descent (độ dốc giảm dần): Is use all over the place in machine learning.
 - Random initial thetas (weights).
 (?) Can select not random thetas (weights).
 - Minimum/local minimum
 - Learning rate: How large each step to converge to minimum/local minumum.
 - Update thetas 'simultanenous' update.
 - Step is smaller over time.

(?) Gradient Descent vs. Newton.
* Learning rate: 
 - Too small, slow converge.
 - Too large, "can" fail to converge.

* In local minimum, thetas do not change because slopes are 0.
(?) Why with fixed learning rate, loss value still converge to local minimum.

* Convex function (bowl-shaped function): Only 2 thetas (weights), 3-D.
* Batch Gradient Descent: Use all training examples each step. 
* Gradient Descent for One - variable linear regression.
* Linear regression always can be found global variable because the "convex function".


## 05/04/2021: 
* Function approximation and interpolation: Xấp xỉ hàm & nội suy.
* Hypothesis.
* Supervised Learning: 
 - Regression.
  - Linear Regression: One variable & univariate.

* Parameters: Thetas, weights.
* Slope, intercept.
* Mean Squared Error (MSE), Squared Error.

* Hypothesis: Function of x.
* J (Cost function): Function of thetas (Curves)

* Contour plot: Hình chiếu.
* Minimize J = Find the local minimum.


## 04/04/2021: 

* Supervised Learning: Labeled dataset.
 E.g., Housing price prediction.
 - Regression: Predict continous valued output. E.g., Housing price, [1:10], [1:0.1:10],...
 - Classification: Discrete valued output. E.g., Sells for more or less than the asking price.
	
* Unsupervised Learning: 
 - Types:
  - Clustering.
  E.g., Genes, news, skillset, social network analysis,...
  - Non - clustering.
  E.g., Cocktail party.
 - No feedback based on the prediction results: Testless.

* Hard example of unsupervised learning clustering: Given data on how 1000 medical patients respond to an experimental drug (such as effectiveness of the treatment, side effects, etc.), discover whether there are different categories or "types" of patients in terms of how they respond to the drug, and if so what these categories are.