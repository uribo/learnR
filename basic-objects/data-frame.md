


# Data frame

## Defining data frame


```r
> data.frame(id = 1:5, x = c(0, 2, 1, -1, -3), y = c(0.5, 0.2, 0.1, 0.5, 0.9))
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
> data.frame(id = 1:10, x = runif(10), y = rnorm(10))
```

```
   id       x        y
1   1 0.41220  1.18507
2   2 0.36834 -0.05768
3   3 0.79907  0.42516
4   4 0.81950  0.38942
5   5 0.83162  0.60323
6   6 0.96759 -0.47825
7   7 0.81106  1.33869
8   8 0.77968  1.23067
9   9 0.03103 -0.23949
10 10 0.60781 -1.17839
```

```r
> data.frame(id = 1:5, name = c("A", "A", "B", "B", "C"), x = runif(5), y = rnorm(5))
```

```
  id name      x        y
1  1    A 0.6751  0.01251
2  2    A 0.5596  0.52847
3  3    B 0.4041 -0.23407
4  4    B 0.6688 -0.39550
5  5    C 0.6067 -0.17453
```

```r
> data.frame(id = 1:5, name = c("A", "A", "B", "B", "C"), x = runif(5), y = rnorm(5), 
+     stringsAsFactor = FALSE)
```

```
  id name      x       y stringsAsFactor
1  1    A 0.3281  0.6457           FALSE
2  2    A 0.8147  1.1456           FALSE
3  3    B 0.1807  1.0609           FALSE
4  4    B 0.3094 -0.1516           FALSE
5  5    C 0.8610  0.5767           FALSE
```

```r
> 
> df1 <- data.frame(1:5, c("A", "A", "B", "B", "C"), rnorm(5))
> colnames(df1) <- c("id", "name", "x")
> rownames(df1) <- letters[1:5]
> 
> as.data.frame(matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, byrow = FALSE))
```

```
  V1 V2 V3
1  1  4  7
2  2  5  8
3  3  6  9
```



## Subsetting data frame


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
> df1[c("id", "name")]
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
> df1[, "name"]
```

```
[1] A A B B C
Levels: A B C
```

```r
> df1[, c("name", "x")]
```

```
  name        x
a    A -2.31972
b    A -0.06963
c    B  1.41399
d    B  0.40876
e    C  0.51319
```

```r
> df1[, 1:2]
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
> df1[1:4, ]
```

```
  id name        x
a  1    A -2.31972
b  2    A -0.06963
c  3    B  1.41399
d  4    B  0.40876
```

```r
> df1[1:4, "x"]
```

```
[1] -2.31972 -0.06963  1.41399  0.40876
```

```r
> df1[1:4, c("id", "x")]
```

```
  id        x
a  1 -2.31972
b  2 -0.06963
c  3  1.41399
d  4  0.40876
```

```r
> df1[df1$x >= 0, ]
```

```
  id name      x
c  3    B 1.4140
d  4    B 0.4088
e  5    C 0.5132
```

```r
> df1[df1$name == "A", ]
```

```
  id name        x
a  1    A -2.31972
b  2    A -0.06963
```


