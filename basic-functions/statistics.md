

# Statistical functions

As a statistical computing environment, R provides a variety of easy-to-use statistical functions from random sampling to statistical tests. Although these built-in functions are limited, they are sufficient to handle many basic statistical problems.

## Random sampling

Random sampling is perhaps the first step of answering most statisitical questions on a population. Given a vector or a list, `sample()` function draws a sample from it with or without replacement.

For example, draw a sample of size 2 from a numeric vector without replacement.


```r
> sample(c(1,2,3),size=2,replace=FALSE)
```

```
[1] 1 3
```

Another example, draw a sample of size 10 from a character vector with replacement.


```r
> sample(c("a","b","z"),size=10,replace=TRUE)
```

```
 [1] "b" "a" "b" "b" "z" "b" "b" "a" "b" "z"
```

`sample()` also supports unequal weights over each observation while sampling.


```r
> sample(c("Good","Medium","Poor"),size=10,replace=TRUE,prob=c(0.1,0.8,0.1))
```

```
 [1] "Medium" "Medium" "Medium" "Medium" "Medium" "Medium" "Medium"
 [8] "Medium" "Medium" "Medium"
```


## Sampling from distributions

Instead of drawing samples from a given vector, R also provides a set of functions to draw random samples from the most popular probability distributions.




```r
> rnorm(20,mean = 10,sd = 2)
```

```
 [1] 10.193  9.597 11.480 10.247  9.941  9.222 11.022  8.172 14.621  9.124
[11] 11.528 10.524 11.547  8.371  9.123  8.560 10.462  7.685 10.494  9.818
```

```r
> rbinom(20,size = 10,prob = 0.6)
```

```
 [1] 3 5 6 7 6 6 7 5 6 7 6 3 5 6 4 5 4 8 6 6
```

```r
> runif(20)
```

```
 [1] 0.91972 0.98282 0.03780 0.57794 0.73331 0.24874 0.30074 0.73347
 [9] 0.90695 0.20982 0.35814 0.44830 0.90643 0.38944 0.51746 0.12524
[17] 0.03015 0.77181 0.32742 0.38948
```

```r
> runif(20,min = 10,max = 20)
```

```
 [1] 10.41 13.61 15.71 16.85 19.71 17.02 10.12 15.36 18.37 18.07 10.81
[12] 12.39 19.66 10.38 19.16 17.26 12.01 18.40 13.97 13.93
```

```r
> rgamma(20,shape = 0.5)
```

```
 [1] 0.1740602 0.4265680 0.0793420 0.4714080 0.3124512 0.6353470 0.0288982
 [8] 2.1413096 0.0005384 0.5158260 0.0005071 0.3230394 0.0111670 0.0010014
[15] 0.4807671 0.8817755 0.1168473 1.7071300 0.0484624 0.0213860
```

```r
> plot(dnorm,xlim=c(-3,3))
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-41.png) 

```r
> plot(pnorm,xlim=c(-3,3))
```

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-42.png) 

## Summary statistics


```r
> x.norm <- rnorm(20)
> mean(x.norm)
```

```
[1] -0.137
```

```r
> sd(x.norm)
```

```
[1] 1.009
```

```r
> median(x.norm)
```

```
[1] -0.3511
```

```r
> quantile(x.norm,probs = c(0.5,0.8))
```

```
    50%     80% 
-0.3511  0.4994 
```

```r
> max(x.norm)
```

```
[1] 2.446
```

```r
> min(x.norm)
```

```
[1] -1.458
```

```r
> pmax(c(1,2,3),c(2,3,1))
```

```
[1] 2 3 3
```

```r
> pmin(c(1,2,3),c(2,3,1),c(3,2,1))
```

```
[1] 1 2 1
```

```r
> summary(x.norm)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
 -1.460  -0.790  -0.351  -0.137   0.294   2.450 
```


## Statistical tests



```r
> qnorm(c(0.01,0.99))
```

```
[1] -2.326  2.326
```

```r
> table(sample(letters[1:3],100,T))
```

```

 a  b  c 
23 40 37 
```

```r
> table(sample(letters[1:3],100,T),sample(LETTERS[1:4],100,T))
```

```
   
     A  B  C  D
  a  9  7  8 10
  b  7 16  8  7
  c  5 10  7  6
```

