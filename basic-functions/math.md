

# Math functions

Mathematical functions are essential in all computing environments. R also provides the basic math functions.

## Trigonometric functions

| Symbol | Call | Value |
|--------|------|-------|
| $\sin(x)$ | `sin(1)` | 0.8415 |
| $\cos(x)$ | `cos(1)` | 0.5403 |
| $\tan(x)$ | `tan(1)` | 1.5574 |
| $\arcsin(x)$ | `asin(1)` | 1.5708 |
| $\arccos(x)$ | `acos(1)` | 0 |
| $\arctan(x)$ | `atan(1)` | 0.7854 |

## Hyperbolic functions

| Symbol | Call | Value |
|--------|------|-------|
| $\sinh(x)$ | `sinh(1)` | 1.1752 |
| $\cosh(x)$ | `cosh(1)` | 1.5431 |
| $\tanh(x)$ | `tanh(1)` | 0.7616 |
| $\mbox{arcsinh}(x)$ | `asinh(1)` | 0.8814 |
| $\mbox{arccosh}(x)$ | `acosh(1)` | 0 |
| $\mbox{arctanh}(x)$ | `atanh(1)` | &infin; |

## Number functions

| Symbol | Call | Value |
|--------|------|-------|
| $x!$ | `factorial(5)` | 120|
| $\lceil x\rceil$ | `ceiling(10.6)` | 11 |
| $\lfloor x\rfloor$ | `floor(9.5)` | 9 |
| truncate | `trunc(1.5)` | 1 |
| round | `round(pi,3)` | 3.142 |
| significant numbers | `signif(pi,3)` | 3.14 |

## Extrema functions

| Symbol | Call | Value |
|--------|------|-------|
| $\max(\ldots)$ | `max(1,2,3)` | 3 |
| $\min(\ldots)$ | `min(1,2,3)` | 1 |

## Root finding

`polyroot()` can find complex roots of a polynomial equation in the form of 
$$ p(x) = z_1 + z_2 x + \ldots + z_n x^{n-1}.$$

For example, find roots of the following equation:
$$ 1 + 2 x + x^2 - x^3 = 0 $$


```r
> polyroot(c(1,2,1,-1))
```

```
[1] -0.5739+0.369i -0.5739-0.369i  2.1479-0.000i
```

Note that all complex roots are found.

As for general numeric root finding in the form $f(x)=0$, `uniroot()` function can be used to numerically find a root of that equation.

For example, find a root of the equation $$x^3 - x + \cos(x) = 0$$ within the range $x\in[-5,5]$.


```r
> uniroot(function(x) x^3-x+cos(x),c(-5,5))
```

```
$root
[1] -1.16

$f.root
[1] 1.865e-05

$iter
[1] 11

$init.it
[1] NA

$estim.prec
[1] 6.104e-05
```

In the function call, we pass an *anonymous function* to `uniroot()`. We will cover this in detail in later chapters.

## Calculus

It is very handy to perform basic calculus. `deriv()` computes derivative of a function symbolically. 

[example]


```r
> f <- deriv(y~sin(cos(x)*y),c("x","y"),func=T)
> f(1,2)
```

```
[1] 0.8822
attr(,"gradient")
           x      y
[1,] -0.7923 0.2544
```

### Integration

[example]


```r
> integrate(function(x) sin(x),0,pi/2)
```

```
1 with absolute error < 1.1e-14
```

