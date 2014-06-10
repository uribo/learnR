

# Assignment



```r
> x1 <- 1
> 2 -> x2
> x3 <<- 3
> 4 ->> x4
> x5 = 5
> x6 <- x7 = 8
```

```
Error: object 'x6' not found
```

## Local evaluation


```r
> local({
+   x1 <- 1
+   x1+1
+ })
```

```
[1] 2
```

```r
> local({
+   x1 <<- 1
+   x1+1
+ })
```

```
[1] 2
```

## Scoping


```r
> local({
+   message(x)
+   x <- 5
+   message(x)
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
> x <- 10
> local({
+   message(x)
+   x <- 5
+   local({
+     message(x)
+     x <- 3
+     message(x)
+   })
+   message(x)
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
> x <- 10
> local({
+   message(x)
+   x <<- 5
+   local({
+     x <<- 3
+     message(objects())
+     message(x)
+   })
+   message(objects())
+   message(x)
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
> f <- function(x,y) {
+   invisible(x+y)
+ }
> 
> f(1,2)
> m <- f(1,2)
> m1 <- m2 <- f(1,2)
```

## Quotation


```r
> `+a` <- c(1,2,3)
> `-a` <- function(a,d) { a-d }
> l1 <- list(`a+-`=rnorm(10),`a-+`=rnorm(10))
> data.frame(`a-+`=rnorm(10),`a+-`=rnorm(10))
```

```
       a..    a...1
1  -1.2778 -0.06876
2   1.2014 -1.16383
3  -0.2468  0.51769
4   0.2019 -0.08503
5   0.5304 -0.29857
6  -2.1331 -1.03537
7  -0.5242  0.59919
8  -1.2022 -0.55749
9  -0.5022  0.08344
10  1.7249 -2.09093
```

