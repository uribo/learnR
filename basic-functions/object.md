


# Object functions

## Typing


```r
> x <- 1
> class(x)
```

```
[1] "numeric"
```

```r
> typeof(x)
```

```
[1] "double"
```

```r
> str(x)
```

```
 num 1
```

```r
> 
> x <- c(1, 2, 3)
> class(x)
```

```
[1] "numeric"
```

```r
> typeof(x)
```

```
[1] "double"
```

```r
> str(x)
```

```
 num [1:3] 1 2 3
```

```r
> 
> x <- c("a", "b")
> class(x)
```

```
[1] "character"
```

```r
> typeof(x)
```

```
[1] "character"
```

```r
> str(x)
```

```
 chr [1:2] "a" "b"
```

```r
> 
> x <- list(a = 1, b = 2)
> class(x)
```

```
[1] "list"
```

```r
> typeof(x)
```

```
[1] "list"
```

```r
> str(x)
```

```
List of 2
 $ a: num 1
 $ b: num 2
```

```r
> 
> x <- data.frame(a = 1, b = 2)
> class(x)
```

```
[1] "data.frame"
```

```r
> typeof(x)
```

```
[1] "list"
```

```r
> str(x)
```

```
'data.frame':	1 obs. of  2 variables:
 $ a: num 1
 $ b: num 2
```


## Object dimensions


```r
> df <- data.frame(a = c(1, 2, 3), b = c(2, 3, 4))
> m1 <- matrix(c(1, 2, 3, 2, 3, 4, 3, 4, 5), ncol = 3)
> a1 <- array(1:48, dim = c(2, 8, 3))
> dim(df)
```

```
[1] 3 2
```

```r
> dim(m1)
```

```
[1] 3 3
```

```r
> dim(a1)
```

```
[1] 2 8 3
```

```r
> ncol(df)
```

```
[1] 2
```

```r
> nrow(df)
```

```
[1] 3
```

```r
> ncol(m1)
```

```
[1] 3
```

```r
> nrow(m1)
```

```
[1] 3
```

```r
> ncol(a1)
```

```
[1] 8
```

```r
> nrow(a1)
```

```
[1] 2
```


