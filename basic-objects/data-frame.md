


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
1   1 0.06213 -0.05399
2   2 0.42995 -0.06828
3   3 0.87324 -0.79999
4   4 0.64076 -0.75709
5   5 0.70904  0.17496
6   6 0.51987 -0.41168
7   7 0.39584  0.05333
8   8 0.54292 -0.29979
9   9 0.84891  1.05198
10 10 0.90898  0.42360
```

```r
> data.frame(id = 1:5, name = c("A", "A", "B", "B", "C"), x = runif(5), y = rnorm(5))
```

```
  id name      x       y
1  1    A 0.2797 -0.6652
2  2    A 0.2972 -1.8022
3  3    B 0.4886 -2.6673
4  4    B 0.6668  0.8807
5  5    C 0.7291 -1.3794
```

```r
> data.frame(id = 1:5, name = c("A", "A", "B", "B", "C"), x = runif(5), y = rnorm(5), 
+     stringsAsFactor = FALSE)
```

```
  id name      x       y stringsAsFactor
1  1    A 0.9782 -0.1179           FALSE
2  2    A 0.5473  0.8274           FALSE
3  3    B 0.8164 -0.1803           FALSE
4  4    B 0.2786 -0.1606           FALSE
5  5    C 0.7948 -1.2432           FALSE
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
  name       x
a    A  0.9792
b    A -1.2753
c    B -0.8213
d    B  0.6252
e    C  0.9029
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
  id name       x
a  1    A  0.9792
b  2    A -1.2753
c  3    B -0.8213
d  4    B  0.6252
```

```r
> df1[1:4, "x"]
```

```
[1]  0.9792 -1.2753 -0.8213  0.6252
```

```r
> df1[1:4, c("id", "x")]
```

```
  id       x
a  1  0.9792
b  2 -1.2753
c  3 -0.8213
d  4  0.6252
```

```r
> df1[df1$x >= 0, ]
```

```
  id name      x
a  1    A 0.9792
d  4    B 0.6252
e  5    C 0.9029
```

```r
> df1[df1$name == "A", ]
```

```
  id name       x
a  1    A  0.9792
b  2    A -1.2753
```


