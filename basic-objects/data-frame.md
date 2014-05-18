


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
   id       x       y
1   1 0.75324 -1.6073
2   2 0.60334  0.3403
3   3 0.59395  2.7279
4   4 0.58229 -0.3272
5   5 0.23866 -1.2569
6   6 0.45428 -0.4314
7   7 0.99552  2.5489
8   8 0.08275 -0.7714
9   9 0.05191 -0.5073
10 10 0.49380 -0.2700
```

```r
> data.frame(id = 1:5, name = c("A", "A", "B", "B", "C"), x = runif(5), y = rnorm(5))
```

```
  id name      x        y
1  1    A 0.7728 -0.31851
2  2    A 0.2096 -0.04179
3  3    B 0.7481 -3.35623
4  4    B 0.5854 -0.15111
5  5    C 0.3244  1.90075
```

```r
> data.frame(id = 1:5, name = c("A", "A", "B", "B", "C"), x = runif(5), y = rnorm(5), 
+     stringsAsFactor = FALSE)
```

```
  id name      x       y stringsAsFactor
1  1    A 0.7339  0.3122           FALSE
2  2    A 0.6635  0.8865           FALSE
3  3    B 0.7230  0.4748           FALSE
4  4    B 0.1110  0.8698           FALSE
5  5    C 0.2186 -0.8865           FALSE
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
a    A -0.1287
b    A  1.0965
c    B  0.5180
d    B  0.3980
e    C  1.0667
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
a  1    A -0.1287
b  2    A  1.0965
c  3    B  0.5180
d  4    B  0.3980
```

```r
> df1[1:4, "x"]
```

```
[1] -0.1287  1.0965  0.5180  0.3980
```

```r
> df1[1:4, c("id", "x")]
```

```
  id       x
a  1 -0.1287
b  2  1.0965
c  3  0.5180
d  4  0.3980
```

```r
> df1[df1$x >= 0, ]
```

```
  id name     x
b  2    A 1.097
c  3    B 0.518
d  4    B 0.398
e  5    C 1.067
```

```r
> df1[df1$name == "A", ]
```

```
  id name       x
a  1    A -0.1287
b  2    A  1.0965
```


