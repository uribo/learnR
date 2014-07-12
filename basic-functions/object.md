

# Object functions

Previously, we learned about some low-level functions that work with the environment and packages. In this section, we will get to know some basic functions that deal with objects in general.

## Typing

Although everything in R is an object, objects do have different types.

Suppose  the object we are dealing with is user-defined. We create a function that behaves in different ways according to the type of the input object. For example, we need to create a function named `takeit` that takes the first element if the input object is a atomic vector, but takes user-defined element if the input object is a list of data and index.


```r
> takeit <- function(x) {
+   if(is.atomic(x)) {
+     x[1]
+   } else if(is.list(x)) {
+     x$data[[x$index]]
+   }
+ }
```

The above function behaves differently as `x` takes different types. When `x` takes an atomic vector (e.g. numeric vector), the function extracts its first element; when `x` takes a list of `data` and `index`, the function extracts the element with index of `index` from `x$data`.


```r
> takeit(c(1,2,3))
```

```
[1] 1
```

```r
> takeit(list(data=c(1,2,3),index=3))
```

```
[1] 3
```




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
> x <- c(1,2,3)
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
> x <- c("a","b")
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
> x <- list(a=1,b=2)
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
> x <- data.frame(a=1,b=2)
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

[summary table]

## Object dimensions


```r
> df <- data.frame(a=c(1,2,3),b=c(2,3,4))
> m1 <- matrix(c(1,2,3,2,3,4,3,4,5),ncol = 3)
> a1 <- array(1:48,dim = c(2,8,3))
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

