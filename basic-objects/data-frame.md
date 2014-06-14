

# Data frame

A data frame is a table with a number of rows and columns like a matrix. However, columns in a data frame need not be the same type. It is consistent with most data tables: different types of information describe a data record. 

The following example is a table that can be fully characterized by a data frame.

| Name     | Gender | Age | Major            |
|----------|--------|-----|------------------|
| Ken      | Male   | 24  | Finance          |
| Ashley   | Female | 25  | Statistics       |
| Jennifer | Female | 23  | Computer Science |

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
1   1 0.8857  0.8881
2   2 0.3779  1.1079
3   3 0.3287 -0.2357
4   4 0.4145 -0.5332
5   5 0.1261 -2.2674
6   6 0.9637 -1.1287
7   7 0.3674 -0.7839
8   8 0.0241  0.2756
9   9 0.5851 -0.8093
10 10 0.1164 -2.6640
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5))
```

```
  id name      x       y
1  1    A 0.1034 -1.4513
2  2    A 0.3307 -0.3215
3  3    B 0.2376  0.4425
4  4    B 0.9838  0.7173
5  5    C 0.7188  0.3395
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5),stringsAsFactor=FALSE)
```

```
  id name      x        y stringsAsFactor
1  1    A 0.4538 -0.34337           FALSE
2  2    A 0.2316 -0.68001           FALSE
3  3    B 0.5579 -0.94557           FALSE
4  4    B 0.8835 -0.02435           FALSE
5  5    C 0.6224 -0.70479           FALSE
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
  name       x
a    A -0.0418
b    A -0.6246
c    B -0.6724
d    B  0.2955
e    C  0.6745
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
  id name       x
a  1    A -0.0418
b  2    A -0.6246
c  3    B -0.6724
d  4    B  0.2955
```

```r
> df1[1:4,"x"]
```

```
[1] -0.0418 -0.6246 -0.6724  0.2955
```

```r
> df1[1:4,c("id","x")]
```

```
  id       x
a  1 -0.0418
b  2 -0.6246
c  3 -0.6724
d  4  0.2955
```

```r
> df1[df1$x>=0,]
```

```
  id name      x
d  4    B 0.2955
e  5    C 0.6745
```

```r
> df1[df1$name=="A",]
```

```
  id name       x
a  1    A -0.0418
b  2    A -0.6246
```

## Transforming a data frame

## Loading data frame from a file

## Saving data frame to a file
