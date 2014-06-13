

# Data frame

A data frame is a table with a number of rows and columns like a matrix. However, columns in a data frame need not be the same type. It is consistent with most data tables: different types of information describe a data record. 

## Defining data frame


```r
> data.frame(id=1:5,x=c(0,2,1,-1,-3),y=c(0.5,0.2,0.1,0.5,0.9))
```

```
  id  x   y
1  1  0 0.5
2  2  2 0.2
3  3  1 0.1
4  4 -1 0.5
5  5 -3 0.9
```

```r
> data.frame(id=1:10,x=runif(10),y=rnorm(10))
```

```
   id      x       y
1   1 0.2937  0.6401
2   2 0.1710  1.1632
3   3 0.5136 -1.0668
4   4 0.6852  1.1767
5   5 0.9226  0.3578
6   6 0.4149 -1.0406
7   7 0.4622  0.5013
8   8 0.6752 -0.7820
9   9 0.4572 -0.8549
10 10 0.8774  1.6704
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5))
```

```
  id name      x        y
1  1    A 0.5711 -0.72981
2  2    A 0.9767 -0.44092
3  3    B 0.8855  0.06539
4  4    B 0.3881  0.31067
5  5    C 0.4659  0.69322
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5),stringsAsFactor=FALSE)
```

```
  id name      x       y stringsAsFactor
1  1    A 0.7154  1.5606           FALSE
2  2    A 0.5315  1.9238           FALSE
3  3    B 0.3259  1.1897           FALSE
4  4    B 0.6507 -1.0481           FALSE
5  5    C 0.6359  0.2505           FALSE
```

```r
> df1 <- data.frame(1:5,c("A","A","B","B","C"),rnorm(5))
> colnames(df1) <- c("id","name","x")
> rownames(df1) <- letters[1:5]
> 
> as.data.frame(matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow=FALSE))
```

```
  V1 V2 V3
1  1  4  7
2  2  5  8
3  3  6  9
```


## Subsetting data frame

In essence, data frame is nothing special but a list of vectors, each of which contains the same number of elements. Therefore, it has common features of both list and matrix.


```r
> df1$id
```

```
[1] 1 2 3 4 5
```

```r
> df1[1]
```

```
  id
a  1
b  2
c  3
d  4
e  5
```

```r
> df1["name"]
```

```
  name
a    A
b    A
c    B
d    B
e    C
```

```r
> df1[c("id","name")]
```

```
  id name
a  1    A
b  2    A
c  3    B
d  4    B
e  5    C
```

```r
> df1[1:2]
```

```
  id name
a  1    A
b  2    A
c  3    B
d  4    B
e  5    C
```

```r
> df1[,"name"]
```

```
[1] A A B B C
Levels: A B C
```

```r
> df1[,c("name","x")]
```

```
  name        x
a    A  0.13795
b    A -0.04001
c    B -0.95347
d    B -1.51268
e    C -0.30774
```

```r
> df1[,1:2]
```

```
  id name
a  1    A
b  2    A
c  3    B
d  4    B
e  5    C
```

```r
> df1[1:4,]
```

```
  id name        x
a  1    A  0.13795
b  2    A -0.04001
c  3    B -0.95347
d  4    B -1.51268
```

```r
> df1[1:4,"x"]
```

```
[1]  0.13795 -0.04001 -0.95347 -1.51268
```

```r
> df1[1:4,c("id","x")]
```

```
  id        x
a  1  0.13795
b  2 -0.04001
c  3 -0.95347
d  4 -1.51268
```

```r
> df1[df1$x>=0,]
```

```
  id name     x
a  1    A 0.138
```

```r
> df1[df1$name=="A",]
```

```
  id name        x
a  1    A  0.13795
b  2    A -0.04001
```


