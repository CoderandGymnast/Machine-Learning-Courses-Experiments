# 01/07/2021: 
## I. Tasks: 
- Building an Anomaly Detection System.

## II. Notes: 
### II.1. Developing and Evaluating an Anomaly Detection System:
- Real-number evaluation: Cần có một thông số (VD: Số thực) để đánh giá, ước lượng chất lượng của một giải pháp, mô hình.

- Labeled data: Anomalous and non-anomalous examples.
- Split data set to training set (without anomalous examples), cross validation and testing set (with anomalous examples).

- Skewed class: Lớp lệch.

### II.2. Anomaly Detection vs. Supervised Learning: 

### II.3. Choosing What Features to Use: 
- Gaussian features.
- Convert Non-Gaussian features to Gaussian features: log(x), ^,... 
- Using hist (Histogram) to determine whether a features has gaussian or not

### II.4. Error analysis for anomaly detection: 
- Sometimes, need to create or add additional features to determine the anomalous examples.
E.g., Create additional features from previous features.

VD: Với chỉ một feature là khối lượng (m), không thể biết được một chiếc áo có bị dị thường hay không, VD: Áo to nhưng mỏng hoặc áo nhỏ nhưng dày có khối lượng như một chiếc áo bình thường.

## III. Conslusions: 
- Bản chất của Anomaly Detection là dựa vào phân phối của tập dữ liệu non-anomalous để nhận biết các điểm dữ liệu dị thường so với phân phối đó (Có thể xem là học vì dữ liệu càng nhiều thì khả năng phát hiện dị thường càng cao).





# 25/06/2021: 
## I. Tasks: 
- Anomaly detection: Algorithm.

## II. Notes: 
### II.1. Anomaly detection algorithm: 



# 24/06/2021: 
## I. Tasks: 
- Density Estimation: 
 - Problem motivation.
 - Gaussian Distribution. 

## II. Notes: 
### II.1. Anomaly detection (Phát hiện bất thường - Problem motivation: 
II.1.1. Definition: 
- A machine learning algorithm for unsupervised learning. 
- Similar to supervised learning.
- Check whether an x test anomalous or not.

II.1.2. Examples: 
- Fraud detection: Phát hiện gian lận (bất thường). VD: Hoạt động đáng nghi của người dùng.
- Manufacturing: Phát hiện sự bất thường của một máy tính trong một cụm máy chủ.

II.1.3. Formulas: 
- x~N(m,sigma^2), sigma: Standard deviation, sigma^2: Variance.
- Meaning: X "distributed as" N. 

II.1.4. Parameter estimation: 
- For each dataset, need to determine: 
 - m: Mean x.
 - sigma^2: Variance.

NOTE: In variance formula, can (1/m) or (1/m-1) does not make huge different with large dataset.

