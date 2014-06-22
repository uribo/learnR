

# Data frame

A data frame is a table with a number of rows and columns. It looks like a matrix but its columns are not necessarily the same type. This is consistent with most data tables: a row, or data record is described by multiple columns of different types.

The following example is a table that can be fully characterized by a data frame.

| Name     | Gender | Age | Major            |
|----------|--------|-----|------------------|
| Ken      | Male   | 24  | Finance          |
| Ashley   | Female | 25  | Statistics       |
| Jennifer | Female | 23  | Computer Science |

## Creating data frame

To create such a data frame, we can call `data.frame` function and supply the data in each column.


```r
> df1 <- data.frame(Name=c("Ken","Ashley","Jennifer"),
+   Gender=c("Male","Female","Female"),
+   Age=c(24,25,23),
+   Major=c("Finance","Statistics","Computer Science"))
> df1
```

```
      Name Gender Age            Major
1      Ken   Male  24          Finance
2   Ashley Female  25       Statistics
3 Jennifer Female  23 Computer Science
```

Note that creating a data frame is exactly the same with creating a list. It is because in essence a data frame *is* a list in which each list member represents a column and has the same number of elements.


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
1   1 0.7945  0.5219
2   2 0.9838  1.1089
3   3 0.5802 -0.5626
4   4 0.2593  1.4595
5   5 0.8518 -0.3020
6   6 0.1167  1.0676
7   7 0.2940  0.1625
8   8 0.1642 -0.1727
9   9 0.8519 -0.2487
10 10 0.1265 -0.2869
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5))
```

```
  id name      x       y
1  1    A 0.1415  0.9586
2  2    A 0.5004  1.2070
3  3    B 0.7367 -0.5492
4  4    B 0.9848  0.7408
5  5    C 0.6234 -1.4185
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5),stringsAsFactor=FALSE)
```

```
  id name       x       y stringsAsFactor
1  1    A 0.32183  0.1265           FALSE
2  2    A 0.24351 -0.4274           FALSE
3  3    B 0.68076 -0.9077           FALSE
4  4    B 0.54664  1.7759           FALSE
5  5    C 0.08767  0.3821           FALSE
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
a    A  0.3105
b    A  0.8616
c    B -0.2511
d    B -0.6380
e    C  0.7690
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
a  1    A  0.3105
b  2    A  0.8616
c  3    B -0.2511
d  4    B -0.6380
```

```r
> df1[1:4,"x"]
```

```
[1]  0.3105  0.8616 -0.2511 -0.6380
```

```r
> df1[1:4,c("id","x")]
```

```
  id       x
a  1  0.3105
b  2  0.8616
c  3 -0.2511
d  4 -0.6380
```

```r
> df1[df1$x>=0,]
```

```
  id name      x
a  1    A 0.3105
b  2    A 0.8616
e  5    C 0.7690
```

```r
> df1[df1$name=="A",]
```

```
  id name      x
a  1    A 0.3105
b  2    A 0.8616
```

## Transforming a data frame

## Loading data frame from a file

## Saving data frame to a file
