

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
1   1 0.4976  0.2280
2   2 0.6435 -1.1670
3   3 0.6870  0.1608
4   4 0.8795 -0.0384
5   5 0.5406  0.1825
6   6 0.4992  1.7331
7   7 0.1522 -0.7592
8   8 0.1250 -0.6906
9   9 0.9408 -0.4314
10 10 0.3728  0.8234
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5))
```

```
  id name      x       y
1  1    A 0.9713  0.9993
2  2    A 0.9222 -0.6949
3  3    B 0.2466 -0.6926
4  4    B 0.7241 -1.7197
5  5    C 0.5485  1.6107
```

```r
> data.frame(id=1:5,name=c("A","A","B","B","C"),x=runif(5),y=rnorm(5),stringsAsFactor=FALSE)
```

```
  id name      x      y stringsAsFactor
1  1    A 0.2959 0.8234           FALSE
2  2    A 0.9307 1.0421           FALSE
3  3    B 0.6559 0.8255           FALSE
4  4    B 0.7644 1.3247           FALSE
5  5    C 0.9125 1.6991           FALSE
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
a    A -0.9346
b    A -1.9853
c    B  0.3242
d    B  1.2618
e    C  0.5790
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
a  1    A -0.9346
b  2    A -1.9853
c  3    B  0.3242
d  4    B  1.2618
```

```r
> df1[1:4,"x"]
```

```
[1] -0.9346 -1.9853  0.3242  1.2618
```

```r
> df1[1:4,c("id","x")]
```

```
  id       x
a  1 -0.9346
b  2 -1.9853
c  3  0.3242
d  4  1.2618
```

```r
> df1[df1$x>=0,]
```

```
  id name      x
c  3    B 0.3242
d  4    B 1.2618
e  5    C 0.5790
```

```r
> df1[df1$name=="A",]
```

```
  id name       x
a  1    A -0.9346
b  2    A -1.9853
```


