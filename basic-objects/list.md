

# List

A list is a generic vector that is allowed to include different types of objects, even other lists.

## Defining list

We can use `list` function to define a list. Different types of objects can be put into one list. For example, the following code creates a list that contains a single-entry numeric vector, two-entry logical vector, and a character vector containing three values.


```r
> l0 <- list(1,c(TRUE,FALSE),c("a","b","c"))
> l0
```

```
[[1]]
[1] 1

[[2]]
[1]  TRUE FALSE

[[3]]
[1] "a" "b" "c"
```

We can assign names to each entry by using named arguments.


```r
> l1 <- list(a=1,b=2,c=3)
> l1
```

```
$a
[1] 1

$b
[1] 2

$c
[1] 3
```




```r
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
> l1[c("a","b")]
```

```
$a
[1] 1

$b
[1] 2
```

```r
> names(l1) <- c("A","B","C")
> l1$d <- 4
```


```r
> l2 <- list(a=c(1,2,3),b=c("x","y","z","w"))
> l2$b
```

```
[1] "x" "y" "z" "w"
```

```r
> is.list(l1)
```

```
[1] TRUE
```

```r
> as.list(c(1,2,3))
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
> l3 <- as.list(c(a=1,b=2,c=3))
> l3$d
```

```
NULL
```

```r
> l3$d <- c("hello","world")
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
> l4 <- list(a=1,b=2,c=3)
> c4 <- unlist(l4)
> l4 <- list(a=1,b=2,c="hello")
> c4 <- unlist(l4)
```
