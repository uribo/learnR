

# Data frame

A data frame is a table with a number of rows and columns like a matrix. However, columns in a data frame need not be the same type. It is consistent with most data tables: different types of information describe a data record. 

The following example is a table that can be fully characterized by a data frame.

| Name     | Gender | Age | Major            |
|----------|--------|-----|------------------|
| Ken      | Male   | 24  | Finance          |
| Ashley   | Female | 25  | Statistics       |
| Jennifer | Female | 23  | Computer Science |

## Creating data frame


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
   id       x       y
1   1 0.05341  0.1410
2   2 0.25145  0.4903
3   3 0.49307  0.9159
4   4 0.20583 -0.8502
5   5 0.11375  2.0685
6   6 0.97999  0.1349
7   7 0.26675  1.4629
8   8 0.91143  0.4490
9   9 0.37311 -2.2426
10 10 0.46660  0.7164
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5))
```

```
  id name      x       y
1  1    A 0.9585 -0.6402
2  2    A 0.3536 -0.2253
3  3    B 0.9362 -0.7935
4  4    B 0.6333 -1.3460
5  5    C 0.7566 -1.1669
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5),stringsAsFactor=FALSE)
```

```
  id name       x        y stringsAsFactor
1  1    A 0.12976  0.64619           FALSE
2  2    A 0.47279 -0.60277           FALSE
3  3    B 0.98929  0.07605           FALSE
4  4    B 0.01238  0.36913           FALSE
5  5    C 0.43512  0.77873           FALSE
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
a    A -0.9007
b    A  0.5631
c    B -0.9832
d    B -1.6364
e    C  0.7679
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
a  1    A -0.9007
b  2    A  0.5631
c  3    B -0.9832
d  4    B -1.6364
```

```r
> df1[1:4,"x"]
```

```
[1] -0.9007  0.5631 -0.9832 -1.6364
```

```r
> df1[1:4,c("id","x")]
```

```
  id       x
a  1 -0.9007
b  2  0.5631
c  3 -0.9832
d  4 -1.6364
```

```r
> df1[df1$x>=0,]
```

```
  id name      x
b  2    A 0.5631
e  5    C 0.7679
```

```r
> df1[df1$name=="A",]
```

```
  id name       x
a  1    A -0.9007
b  2    A  0.5631
```

## Transforming a data frame

## Loading data frame from a file

## Saving data frame to a file
