

# List

A list is a generic vector that is allowed to include different types of objects, even other lists. 

It is useful for its flexibility. For example, a linear model fit in R is basically a list object that contains rich results of a linear regression such as linear coefficients (numeric vector), residuals (numeric vector), QR decomposition (a list containing a matrix and other objects), and so on. 

It is very handy to extract the information without calling different functions each time because these results are all packed into a list.

## Creating list

We can use `list` function to define it. Different types of objects can be put into one list. For example, the following code creates a list that contains a single-entry numeric vector, a two-entry logical vector, and a character vector of three values.


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
> l1 <- list(x=1,y=c(TRUE,FALSE),z=c("a","b","c"))
> l1
```

```
$x
[1] 1

$y
[1]  TRUE FALSE

$z
[1] "a" "b" "c"
```

## Extracting value from a list

There are various ways to access the members of a list. The most common way is using dollar-sign `$` to extract *the value* of a list member by name.


```r
> l1$x
```

```
[1] 1
```

```r
> l1$y
```

```
[1]  TRUE FALSE
```

```r
> l1$z
```

```
[1] "a" "b" "c"
```

```r
> l1$m
```

```
NULL
```

Note that if we ask for a non-existing member `m`, its value is `NULL`.

Alternatively, we can supply a number `n` in double square brackets to extract the value of the n-th list member. For example, we can extract the value of the second member of list `l1`.


```r
> l1[[2]]
```

```
[1]  TRUE FALSE
```

With the same notation, we can also supply a name to extract the value of the list member with that name, just like using dollar sign.


```r
> l1[["y"]]
```

```
[1]  TRUE FALSE
```

It can be more flexible to use double square brackets from value extraction from a list, because sometimes we might not know which member we need to extract before some computation.


```r
> member <- "z" # some more computation can happen here
> l1[[member]]
```

```
[1] "a" "b" "c"
```

Here we supply a runtime-evaluated, single-entry character vector to the brackets. But why should we use double brackets here? Where are the single brackets?

## Subsetting a list

In many cases we need to extract multiple members from a list. These multiple members also construct a list as a subset of the original list.

To subset a list, we can use single-square-bracket notation, just like what we use for vectors and matrices. We can extract the *members* of a list to put into a new list.

The notation is very much consistent with how it works for vectors. We can supply a character vector to extract members by name, a numeric vector by index, or a logical vector by indicating whether to select each of them.


```r
> l1["x"]
```

```
$x
[1] 1
```

```r
> l1[c("x","y")]
```

```
$x
[1] 1

$y
[1]  TRUE FALSE
```

```r
> l1[1]
```

```
$x
[1] 1
```

```r
> l1[c(1,2)]
```

```
$x
[1] 1

$y
[1]  TRUE FALSE
```

```r
> l1[c(TRUE,FALSE,TRUE)]
```

```
$x
[1] 1

$z
[1] "a" "b" "c"
```

## Naming list members

No matter whether the list members have already got names when they are defined, we can always name or rename the members in a list, just like how we do it with vectors.


```r
> names(l1) <- c("A","B","C")
> l1
```

```
$A
[1] 1

$B
[1]  TRUE FALSE

$C
[1] "a" "b" "c"
```

To remove their names, we just assign `NULL` value to its names.


```r
> names(l1) <- NULL
> l1
```

```
[[1]]
[1] 1

[[2]]
[1]  TRUE FALSE

[[3]]
[1] "a" "b" "c"
```

but we can no longer access these members by name but by index and logical selection.

## Setting values

Setting the values in a list is as straightforward as how we work with vectors.


```r
> l1 <- list(x=1,y=c(TRUE,FALSE),z=c("a","b","c"))
> l1$x <- 0
```

If we assign a value to a non-existing member, we will add a new member to the list with that name or index.


```r
> l1$m <- 4
> l1
```

```
$x
[1] 0

$y
[1]  TRUE FALSE

$z
[1] "a" "b" "c"

$m
[1] 4
```

Also, we can set multiple values at the same time.


```r
> l1[c("y","z")] <- list(y="new value for y",z=c(1,2))
> l1
```

```
$x
[1] 0

$y
[1] "new value for y"

$z
[1] 1 2

$m
[1] 4
```


If we need to remove some of the members in a list, just assign `NULL` value to them.


```r
> l1$x <- NULL
> l1
```

```
$y
[1] "new value for y"

$z
[1] 1 2

$m
[1] 4
```

```r
> l1[c("z","m")] <- NULL
> l1
```

```
$y
[1] "new value for y"
```


## Other functions

Many functions in R are related to list. For example, if we are not sure whether an object is a list or not, we can call `is.list` function to find out.


```r
> l2 <- list(a=c(1,2,3),b=c("x","y","z","w"))
> is.list(l1)
```

```
[1] TRUE
```

```r
> is.list(l1$a)
```

```
[1] FALSE
```

Here `l2` is a list but `l2$a` is a number vector rather than a list.

We can also convert a vector to a list by calling `as.list` function.


```r
> l3 <- as.list(c(a=1,b=2,c=3))
> l3
```

```
$a
[1] 1

$b
[1] 2

$c
[1] 3
```

It is also very easy to coerce a list to a vector by calling `unlist` that basically converts all list members and put them to a vector of a commonly tolerable type.


```r
> l4 <- list(a=1,b=2,c=3)
> unlist(l4)
```

```
a b c 
1 2 3 
```

If we unlist a list of numbers and texts in mixture, all members will be converted to the closest type that each one can be converted to.


```r
> l4 <- list(a=1,b=2,c="hello")
> unlist(l4)
```

```
      a       b       c 
    "1"     "2" "hello" 
```

Here `a` and `b` are numbers and can be converted to character but `c` is a character vector cannot be validly convert to numbers. Therefore, their closest type that tolerates all members is character vector.
