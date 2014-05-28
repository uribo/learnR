

# Logical function



```r
> a1 <- c(TRUE, TRUE, FALSE)
> a2 <- c(TRUE, FALSE, FALSE)
> a1 & a2
```

```
[1]  TRUE FALSE FALSE
```

```r
> a1 | a2
```

```
[1]  TRUE  TRUE FALSE
```

```r
> !a1
```

```
[1] FALSE FALSE  TRUE
```

```r
> x <- c(-2,-3,2,3,1,0,0,1,2)
> any(x > 1)
```

```
[1] TRUE
```

```r
> all(x <= 1)
```

```
[1] FALSE
```

```r
> which(x >= 1.5)
```

```
[1] 3 4 9
```

```r
> x[x>=1.5]
```

```
[1] 2 3 2
```

```r
> x <- 1 %in% c(1,2,3)
```

