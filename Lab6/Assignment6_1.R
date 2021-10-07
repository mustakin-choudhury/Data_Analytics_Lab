KmeansFunc <- function(data,K,distFunc) {
  set.seed(123)
  centroids<-data[sample(nrow(data),3),]
  print(centroids)
  
  max_iterations<-300
  centroid_updation<-TRUE
  clusters<-vector("list", nrow(data))
  
  while (max_iterations>0 && centroid_updation){
    for (row in 1:nrow(data)){
      x<-data[row,]
      min_distance<-Inf
      for(centroid in 1:K){
        selected_centroid<-centroids[centroid,]
        distance<-dist(rbind(x,selected_centroid), distFunc)
        
        if(distance < min_distance){
          clusters[row] <- centroid
          min_distance <- distance
        }
      }
    }
    old_centroids<-centroids
    for(row_centroid in 1:K){
      for(col_centroid in 1:ncol(data)){
        sum<-0.0
        count<-0.0
        average<-NULL
        for(row in 1:nrow(data)){
          if(row_centroid == clusters[row]){
            sum<-sum + data[row, col_centroid]
            count<-count+1
            if(count>0){
              average<-sum/count
            }
          }
        }
        centroids[row_centroid, col_centroid] <- average
      }
    }
    
    centroid_updation <- !(all(old_centroids==centroids))
    max_iterations <- max_iterations-1
  }
  
  new_data<-iris
  new_data$Cluster<-as.factor(as.numeric(clusters))
  print(head(new_data))
  
  plot(new_data$Petal.Length, new_data$Petal.Width, col=new_data$Cluster,
       main=paste("After Using K-means :", distFunc))
}


print(summary(iris))
plot(iris$Petal.Length, iris$Petal.Width, col=iris$Species, 
     main="Visualising data")

iris$Species<-NULL
print(head(iris))
scaled_data<- as.matrix(scale(iris))
k.max <- 15
data <- scaled_data
wss <- sapply(1:k.max, 
              function(k){kmeans(data, k, nstart=50,iter.max = 300)$tot.withinss})
print(wss)
plot(1:k.max, wss,
     type="b", pch = 19, frame = FALSE,
     xlab="Number of clusters K",
     ylab="Total within-clusters sum of squares")


K<-3
KmeansFunc(data, 3, "euclidean")
KmeansFunc(data, 3, "manhattan")

