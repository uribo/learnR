

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
1  -1.38638  0.82961
2   0.50761  0.23585
3   1.52948 -2.24488
4  -0.05260  2.74293
5   1.07422  1.13615
6   0.86531  2.19022
7  -0.09583 -1.02970
8  -0.43208  1.47949
9   0.04693 -0.03359
10  0.38811  0.81466
```

