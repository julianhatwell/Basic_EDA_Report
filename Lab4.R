# kmeans
iris.n <- iris[, -5]
iris.n
iris.k3 <- kmeans(iris.n, centers=3)
plot(iris$Sepal.Length, iris$Sepal.Width, col = iris.k3$cluster, cex = 1)
points(iris.k3$centers[,1], iris.k3$centers[,2], pch = 15, col = 1:3)
points(iris$Sepal.Length, iris$Sepal.Width, col = iris$Species, pch=19, cex=0.5)

# hclust
iris.hclus1 = hclust(dist(iris.n),method="centroid")
iris.hclus1
plot(iris.hclus1, hang=-1)
rect.hclust(iris.hclus1,k=3,border = "red")

iris.hclus2 = hclust(dist(iris.n),method="single")
iris.hclus2
plot(iris.hclus2, hang=-1)
rect.hclust(iris.hclus2,k=3,border = "red")

iris.hclus3 = hclust(dist(iris.n),method="average")
iris.hclus3
plot(iris.hclus3, hang=-1)
rect.hclust(iris.hclus3,k=3,border = "red")

iris.hclus4 = hclust(dist(iris.n),method="complete")
iris.hclus4
plot(iris.hclus4, hang=-1)
rect.hclust(iris.hclus4,k=3,border = "red")

library(ISLR)
data(College)
college.n <- College[, -1]

set.seed(2016)
# kmeans
coll.cluster1 = kmeans(college.n, 2,algorithm="Lloyd", nstart = 10)
coll.cluster1
sum(as.numeric(College$Private) == coll.cluster1$cluster)/nrow(College)

# clust centroid
coll.hclus1 = hclust(dist(college.n),method="centroid")
plot(coll.hclus1, hang=-1, labels = FALSE)
rect.hclust(coll.hclus1,k=2,border = "red")

# clust single
coll.hclus2 = hclust(dist(college.n),method="single")
plot(coll.hclus2, hang=-1, labels = FALSE)
rect.hclust(coll.hclus2,k=2,border = "red")

# clust average
coll.hclus3 = hclust(dist(college.n),method="average")
plot(coll.hclus3, hang=-1, labels = FALSE)
rect.hclust(coll.hclus3,k=2,border = "red")

# clust complete
coll.hclus4 = hclust(dist(college.n),method="single")
plot(coll.hclus4, hang=-1, labels = FALSE)
rect.hclust(coll.hclus4,k=2,border = "red")
