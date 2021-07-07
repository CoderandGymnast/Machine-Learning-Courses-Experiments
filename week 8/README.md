# Hệ thống hóa: 
- Selection mà hàm mục tiêu (Objective function) là cost: Mối quan hệ giữa J & iters (K): K-means, Gradient Descent, ...
- Phản bác Elbow function: J lớn hay nhỏ phụ thuộc vào random init chứ không phụ thuộc vào số lượng K.

# 22/06/2021: 
I. Tasks: 
- Programming assignment.

II. Notes: 
- K-means: Image compression. 
- K-means: Automatically cluster similar data examples together.
- K-means objective function: Cost of examples and cluster centroids.
- Reconstructed images means compressed images after running K-means.
- Khi sử dụng K-means để nén ảnh, mỗi bức ảnh là toàn bộ data set.
- PCA trong images compression có nghĩa là giảm số Pixels. 

III. Q&A: 
1. K-mean dừng khi nào?
- Assignment sẽ đến lúc không đổi.
- Khi vòng lặp sau cho kết quả centroids giống vòng lặp trước.
2. Tại sao lại nên random vào training examples?
- Có thể sẽ trúng các điểm trung tâm.
- Tránh được các điểm quá kỳ dị. VD: Các quá xa điểm ban đầu. Hoặc nếu có làm restriction thì cũng mất thời gian hơn.
3. Eigenvectors là gì? (PC trong cụm PCA là cái gì?)
- U: Xác định PC (Thành phần chủ chốt). VD: Đường thẳng kẻ qua dữ liệu 2 chiều.
Bonus: Giá trị của S được sử dụng để quyết định chọn K bao nhiêu là hợp lý (Vẫn chọn từ đỉnh xuống đáy), giá trị thực sự của PC nằm ở U.
4. PC dùng để làm gì?
- Để tạo ra tập dữ liệu mới từ tập dữ liệu cũ với số chiều ít hơn.




# 21/06/2021: 
I. Tasks: 
- Reconstruction from Compressed Representation.
- Choosing the number of Principal Components: Thành phần chủ yếu.

II. Notes:
II.1. Reconstruction:
- Reconstruction: x(i) approx = U reduce * z(i).
- Total variation in the data: Sự phân tán của dữ liệu.
- Chỉ để phục vụ cho việc chọn K.

II.2. K selection: 
- Mean Square Projection Error.
- 99%/95% of variance is retained.
- Dữ liệu thực tế thường có liên quan (tương quan, correlated) rất nhiều đến nhau nên dù có giảm chiều  dữ liệu nhiều nhưng vẫn giữ lại được phần lớn variance.
- Bản chất của công thức là muốn giá trị của công thức gần về 0 (Giá trị có thể lên tới vô cùng).

II.3. Advice for applying PCA: 
II.3.1. Supervised learning speedup: 
- Computer vision: Image compression.

II.3.2. Application of PCA: 
1. Compression: Choose k by % of variance retain.
 - Reduce memory/disk needed to store data.
 - Speed up learning algorithm.
2. Visualization: 

- Bad use of PCA: To prevent overfitting (Less features, less overfitting), use regularization instead.
- Chỉ nên sử dụng PCA khi cần thiết (Dựa theo lợi ích khi dùng PCA).
- Data variance: Phương sai của tập dữ liệu so với gốc tọa độ (Sau khi mean norm).


II.2.1. Giải thuật: 
1. Brute force: Chạy lại PCA nhiều lần.
2. SVD: Chỉ cần chạy một lần.


III. Q&A: 
1. How different X and X approx?
- Depends on projection error.

2. When to use reconstruction?
- Redundant, use the original X instead.

3. Giải thích công thức tính phương sai của dữ liệu (Data variance)?
- Tại preprocessing, sau bước mean normalization, mean của X là 0. 

4. Bản chất của công thức chọn k?
- Thực chất chỉ cần tử số (Sự khác biệt giữa X & X approx) là nhỏ hơn một số cụ thể (Threshold) là được. 
- Tử số có thể lớn hơn mẫu số.

5. Tại sao không nên sử dụng PCA để tránh overfitting?
Vì PCA làm mất mát thông tin, không bài toán nào cũng cần đến PCA.

6. Tại sao cách chọn sau của K lại hiệu quả hơn?

# 19/06/2021: 
I. Tasks: 
- Principal Component Analysis Problem Formulation.
- Principal Component Analysis Algorithm. 

II. Notes: 
II.1. PCA Problem Formulation: 
- Minimize projection error.

- Steps: 
1. Find a direction.
- 2 - 1: 1 vector.
- 3 - 2: 2 vectors.
...
(?) Why don't use only one normal vector?
Với một vector pháp tuyến, có thể vẽ được nhiều mặt phẳng.

- Overall: 
 1. n - k.

- PCA is not linear regression because of the way it calculates error (Projection errors).

II.2. PCA algorithm:
- Find the lower dimensional surface.

II.2.1. Preprocessing: 
1. Mean normalization: 
- 0 mean.

2. Feature scaling: 
- Max - min.
- Standard deviation.
- Space complexity and Gradient descent.

II.2.2. Todo: 
- Find direction u.
- Find projection values z.

II.2.3. Solutions: 
- Compute "covariance matrix".
 Sigma = (1/m) * X'*X = n x n.
- Compute "eigenvectors": svd, eig. (Singular value decomposition).
 [U, S, V] = svd(Sigma);
 Takes the fires k cols of U = n x n.
 Ureduce = U(:, 1:k);

- Compute z: Ureduce'*x (for each example) = k x 1.

II.3. Notes: 
- No Bias.
- Hệ quy chiếu của các chiều mới không liên quan đến các chiều cũ.
- Nhìn vào z thì không thể hình dung được features cũ.






# 18/06/2021: 
I. Tasks: 
- Motivation I: Data compression.
- Motivation II: Visualization.

II. Notes: 
II.1. Motivation I: Data compression: 
II.1.1. Dimensionality Reduction: 
- Saving memories space.
- Speed up learning algorithm (Training).

II.1.2. Notes: 
- Also reduce training set size.
- Reduce n to n - 1 dimensions.

(?) Does dimensionality decreases accuracy?
- Hint: Loss information.
- Idea: Nếu từ thông tin sau khi compression có thể khôi phục lại thông tin ban đầu thì không xảy ra mất mát thông tin.

II.2. Motivation II: Visualization.
- Domain knowledge.

II.3. Conslusion: 
- Dimensionality does cause information loss.
- Giảm chiều tại các features có mối tương quan với nhau giúp việc information loss ảnh hưởng ít hơn tới mô hình.






# 16/06/2021: 
I. Tasks:
- Video: Random initialization.
- Video Choosing the Number of Clusters. 
- Quiz.

II. Notes:
II.1. Random initializtion: 
- Make K-means avoid local optima.

II.1.1. Solutions: 
- Randomly pick K training examples as K cluster centroids. This can cause local optima. To avoid that, run random initialization multiple times. Pick the lowest.
E.g. 100, 50 - 1000.

II.1.2. Notes: 
- Number of clusters: 2 - 10 (especially 2,3,4). Do multiple random initialization can make huge different.
- Number of clusters >> 10. Once random initialization is enough.


II.2. Choosing the number of clusters:
II.2.1. Elbow method: 
II.2.2. Bussiness: 

II.3. Notes: 
- K << m.
- Có những bài toán biết trước K. VD: Phân loại ảnh.
- Điểm bão hòa.









# 15/06/2021: 
I. Tasks: 
- Unsupervised Learning: Introduction.
- K-Means Algorithm.
- Optimizations Objective.

II. Notes: 
- Supervised learning: Traing hypothesis function on labeled data set.
- Unsupervised learning: Find structures (patterns) in unlabeled data set.

II.1. Clustering: 
II.1.1. Definition: 
- A type of unsupervised learning.
- Given an unlabeled data set, group the data into coherent subsets

II.1.2. K-means: 
- The most popular clustering algorithm.

II.1.2.1. Algorithms: 
1. Randomly init n points (cluster centroids).
2. Loops: 
2.1. Cluster assignment: Assign examples to each cluster centroids according to distance.
2.2. Move centroid: Move to average.

II.1.2.1. Input: 
- K: Number of clusters.
- Training set.
* No Bias terms.

II.1.2.2. Cluster assignment: 
min || x - M || ^ 2 
(?) Tại sao lại ^2? Đỡ tốn time complexity.
(?) Tại sao lại 1/m? Đỡ tốn space complexity.

II.1.2.3. Notes: 
- Tại cluster assignment, có thể có cluster không assign được với bất kỳ điểm dữ liệu nào. Thông thường, loại bỏ nó đi. Tuy nhiên, có thể random init lại.

II.1.2.4. K-means for non-seperated clusters:

II.1.3. Optimization objetive:
- Supervised learning: Minimize cost function (J).
- K - means: Optimize M (cluster centroids), c (Assignment). Bản chất có thể hiểu là tối ưu M. (Tên: distortion - Sự méo mó).

- Tại centroids assignment: Tối ưu J theo c.
- Tại move centroids: Tối ưu J theo M (vị trí của centroids). 
(?) Tối ưu J theo M bằng cách nào? Tại sao? Lấy trung bình cộng của các points (examples) assign với M. 

II.1.3.1. Notes: 
- It is not possible for the cost function to sometimes increase. There must be a bug in the code.


