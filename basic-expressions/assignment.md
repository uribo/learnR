


# Assignment



```r
> x1 <- 1
> x2 <- 2
> x3 <<- 3
> x4 <<- 4
> x5 = 5
> (x6 <- x7) = 8
```

```
Error: object 'x6' not found
```


## Local evaluation


```r
> local({
+     x1 <- 1
+     x1 + 1
+ })
```

```
[1] 2
```

```r
> 
> local({
+     x1 <<- 1
+     x1 + 1
+ })
```

```
[1] 2
```


## Scoping


```r
> local({
+     message(x)
+     x <- 5
+     message(x)
+ })
```

```
Error: object 'x' not found
```

```r
> message(x)
```

```
Error: object 'x' not found
```

```r
> 
> 
> x <- 10
> local({
+     message(x)
+     x <- 5
+     local({
+         message(x)
+         x <- 3
+         message(x)
+     })
+     message(x)
+ })
```

```
10
5
3
5
```

```r
> message(x)
```

```
10
```

```r
> 
> 
> x <- 10
> local({
+     message(x)
+     x <<- 5
+     local({
+         x <<- 3
+         message(objects())
+         message(x)
+     })
+     message(objects())
+     message(x)
+ })
```

```
10

3

3
```

```r
> objects()
```

```
[1] "bib" "x"   "x1"  "x2"  "x5" 
```

```r
> message(x)
```

```
3
```


## Invisible return value


```r
> f <- function(x, y) {
+     invisible(x + y)
+ }
> 
> f(1, 2)
> m <- f(1, 2)
> m1 <- m2 <- f(1, 2)
```


## Quotation


```r
> `+a` <- c(1, 2, 3)
> `-a` <- function(a, d) {
+     a - d
+ }
> l1 <- list(`a+-` = rnorm(10), `a-+` = rnorm(10))
> data.frame(`a-+` = rnorm(10), `a+-` = rnorm(10))
```

```
       a..   a...1
1  -0.3337 -1.1758
2  -0.9194 -0.3356
3   0.1831 -2.5864
4  -1.9695  0.5984
5  -2.6036 -0.6576
6  -1.6297 -0.3510
7   0.6974 -0.1081
8  -0.7244  1.2258
9   1.6943 -0.6939
10  0.5751 -0.4030
```


