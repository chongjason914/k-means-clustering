# Read data
movie.data = read.csv("movie.csv"); head(data)

# Set seed for code reproducibility 
set.seed(6)

# K-means clustering using scaled data
(kmeans1 = kmeans(scale(movie.data), 3))
  
# Cluster centers
kmeans1$centers

# Analyse clusters
colMeans(movie.data[kmeans1$cluster == 1, 1:5])
colMeans(movie.data[kmeans1$cluster == 2, 1:5])
colMeans(movie.data[kmeans1$cluster == 3, 1:5])

# Plot clusters
plot(movie.data[, 1:5], col = kmeans1$cluster, main = "Average scores for 5 movie genres coloured by k-means cluster")

# Total within-groups sum of squares
tot.within.ss = numeric(10)
for (i in 1:10){
  set.seed(6)
  tot.within.ss[i] = kmeans(scale(movie.data[, 1:5]), i)$tot.withinss
}

# Plot total within-groups sum of squares
plot(1:10, tot.within.ss,
     main = "Total within-group sum of squares against cluster count",
     xlab = "Cluster count", ylab = "Total within-group sum of squares", type = "b")