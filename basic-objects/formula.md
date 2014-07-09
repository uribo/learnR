

# Formula

Formula is an object used to represent an relationship between two sets of symbols. A formula is often created with `~` like `z ~ x + y`. It has no meaning unless a function interprets it. The most commonly seen usage of a formula is in `lm` function that performs a linear regression.

Note that it is the function that interprets what the formula means. The following example shows different meanings when you write the formula in different ways.

The following example works with a built-in dataset named `LifeCycleSavings`. We can load it with `data()` function.


```r
> data(LifeCycleSavings)
```

Once the data is loaded into the environment, we can run a series linear regressions under different settings.


```r
> lm(sr~pop15+pop75+dpi+ddpi,data=LifeCycleSavings)
```

```

Call:
lm(formula = sr ~ pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings)

Coefficients:
(Intercept)        pop15        pop75          dpi         ddpi  
  28.566087    -0.461193    -1.691498    -0.000337     0.409695  
```


```r
> lm(sr~1+pop15+pop75+dpi+ddpi,data=LifeCycleSavings)
```

```

Call:
lm(formula = sr ~ 1 + pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings)

Coefficients:
(Intercept)        pop15        pop75          dpi         ddpi  
  28.566087    -0.461193    -1.691498    -0.000337     0.409695  
```


```r
> lm(sr~pop15+pop75+dpi+ddpi-1,data=LifeCycleSavings)
```

```

Call:
lm(formula = sr ~ pop15 + pop75 + dpi + ddpi - 1, data = LifeCycleSavings)

Coefficients:
   pop15     pop75       dpi      ddpi  
0.091723  1.713944  0.000263  0.553164  
```


```r
> lm(sr~.,data=LifeCycleSavings)
```

```

Call:
lm(formula = sr ~ ., data = LifeCycleSavings)

Coefficients:
(Intercept)        pop15        pop75          dpi         ddpi  
  28.566087    -0.461193    -1.691498    -0.000337     0.409695  
```


```r
> lm(sr~.-ddpi,data=LifeCycleSavings)
```

```

Call:
lm(formula = sr ~ . - ddpi, data = LifeCycleSavings)

Coefficients:
(Intercept)        pop15        pop75          dpi  
  31.457381    -0.492142    -1.567675    -0.000834  
```


```r
> lm(log(sr)~log(pop15)+log(pop75)+log(dpi)+ddpi,data=LifeCycleSavings)
```

```

Call:
lm(formula = log(sr) ~ log(pop15) + log(pop75) + log(dpi) + ddpi, 
    data = LifeCycleSavings)

Coefficients:
(Intercept)   log(pop15)   log(pop75)     log(dpi)         ddpi  
    10.0182      -2.1107      -0.4137      -0.0669       0.0605  
```



```r
> lm(sr~pop15+I(pop15^2)+pop75+I(pop75^2)+dpi+ddpi,data=LifeCycleSavings)
```

```

Call:
lm(formula = sr ~ pop15 + I(pop15^2) + pop75 + I(pop75^2) + dpi + 
    ddpi, data = LifeCycleSavings)

Coefficients:
(Intercept)        pop15   I(pop15^2)        pop75   I(pop75^2)  
   40.07747     -0.95413      0.00619     -3.78235      0.34356  
        dpi         ddpi  
   -0.00037      0.44072  
```



```r
> plot(sr~ddpi,data=LifeCycleSavings)
```

![plot of chunk formula](figure/formula.png) 

