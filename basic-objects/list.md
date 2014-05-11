


# List

## Defining list


```r
> l1 <- list(a = 1, b = 2, c = 3)
> l1$a
```

```
[1] 1
```

```r
> l1["a"]
```

```
$a
[1] 1
```

```r
> l1[["a"]]
```

```
[1] 1
```

```r
> l1[c("a", "b")]
```

```
$a
[1] 1

$b
[1] 2
```

```r
> names(l1) <- c("A", "B", "C")
> l1$d <- 4
> 
> l2 <- list(a = c(1, 2, 3), b = c("x", "y", "z", "w"))
> l2$b
```

```
[1] "x" "y" "z" "w"
```

```r
> 
> is.list(l1)
```

```
[1] TRUE
```

```r
> as.list(c(1, 2, 3))
```

```
[[1]]
[1] 1

[[2]]
[1] 2

[[3]]
[1] 3
```

```r
> 
> l3 <- as.list(c(a = 1, b = 2, c = 3))
> l3$d
```

```
NULL
```

```r
> l3$d <- c("hello", "world")
> l3
```

```
$a
[1] 1

$b
[1] 2

$c
[1] 3

$d
[1] "hello" "world"
```

```r
> 
> l4 <- list(a = 1, b = 2, c = 3)
> c4 <- unlist(l4)
> l4 <- list(a = 1, b = 2, c = "hello")
> c4 <- unlist(l4)
```


