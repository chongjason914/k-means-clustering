# Customer Segmentation Using K-Means Clustering in R 

## Introduction 
K-means clustering is an unsupervised learning algorithm and it works as follows:
1. Choose the number of clusters into which the data are to be divided into
2. Assign arbitrarily the cluster centres 
3. Assign data points to cluster centre that is nearest to them, most commonly using the Euclidean distance formula
4. Once all the data points have been clustered to their respective clusters, calculate the centroid for each cluster using the
mean values of the data points assigned to that cluster
5. Reset cluster centres using those new centroids
6. Repeat steps 3-5 until no re-assignment of cluster centres occur i.e. until the algorithm has fully converged

## Problem statement 
Cluster customers into distinct groups based on their movie preferences.

## Data description 
Consider a movie streaming website which has collected data from their customers about their movie preferences.
The customers have rated various movies and each assigned a unique genre, giving a score from 1 to 100.

- Horror: the average score given by the customer for horror films
- Romcom: the average score given by the customer for romantic comedies
- Action: the average score given by the customer for action movies
- Comedy: the average score given by the customer for comedies
- Fantasy: the average score given by the customer for fantasy films

## Medium article 
Link to full write-up on Start it Up [here](https://medium.com/swlh/customer-segmentation-using-k-means-clustering-in-r-a74d512a4cfa). 
