

# Logical functions

Logical vector only takes `TRUE` or `FALSE` values, but it is a fundamental part of R and is widely used in practice to filter data.

## Logical operators

Like many other programming languages, R provides a few operators to do basic logical calculations. The following table demonstrates what they are.

| Symbol |   Description  | Example                         | Result          |
|--------|:--------------:|---------------------------------|-----------------|
| `&`    | Vectorized AND | `c(TRUE,TRUE) & c(TRUE,FALSE)`  | `c(TRUE,FALSE)` |
|  `\|`  |  Vectorized OR | `c(TRUE,TRUE) | c(TRUE,FALSE)`  | `c(TRUE,TRUE)`  |
| `&&`   | Univariate AND | `c(TRUE,TRUE) && c(FALSE,TRUE)` | `FALSE`         |
|  `||`  | Univariate OR  | `c(TRUE,TRUE) || c(FALSE,TRUE)` | `TRUE`          |
| `!`    | Vectorized NOT | `!c(TRUE,FALSE)`                | `c(FALSE,TRUE)` |
| `%in%` | Vectorized IN  | `c(1,2) %in% c(1,3,4,5)`        | `c(TRUE,FALSE)` |

Note that in `if` expression, `&&` and `||` are often used to ensure that the logical calculation only yields a length-one logical vector.

## Logical functions

In addition to the binary logical operators, a few logical functions are very useful, as we have mentioned earlier.

`any()` returns `TRUE` if *any* element of the given logical vector is `TRUE`, or otherwise `FALSE`.

`all()` returns `TRUE` if *all* elements of the given logical vector is `TRUE`, or otherwise `FALSE`.


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

`which()` returns the indices of `TRUE` elements.


```r
> which(abs(x) >= 1.5)
```

```
[1] 1 2 3 4 9
```

If we take a closer look at what happens, it should be clear that at first `abs(x) >= 1.5` is evaluated to be a logical vector, and then `which()` returns the positions of those `TRUE` elements in that logical vector.

The mechanism is a bit similar when we use a logical condition to filter elements from a vector or list.


```r
> x[x >= 1.5]
```

```
[1] 2 3 2
```

In the above example, `x >= 1.5` is evaluated to be a logical vector, which is then used to select elements in `x` corresponding to `TRUE` values.

A special case is that we can even use a logical vector with all `FASLE` values. A zero-length numeric vector is returned since the logical vector only contains `FALSE` values and thus no element in `x` is singled out.


```r
> x[x >= 100]
```

```
numeric(0)
```

Therefore, the logical selection behaves quite consistently.

## Logical coercion

Some functions supposed to take logical input also accept non-logical vectors such as numeric vectors. However, the behavior of the function may not be different from what they do with logical vectors. It is because the non-logical vectors are coerced to logical values.

For example, if we put a numeric vector in the `if` condition, it will be coerced.


```r
> if(2) 3
```

```
[1] 3
```

```r
> if(0) 0 else 1
```

```
[1] 1
```

In R, all non-zero values in a numeric vector or integer vector can be coerced to `TRUE` while only zero values to `FALSE`.
