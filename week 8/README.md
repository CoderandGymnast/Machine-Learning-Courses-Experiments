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


