

# Condition

## if-else


```r
> num <- 1
> if(num > 0) {
+   cat("The number is greater than 0")
+ } else if(num < 0) {
+   cat("The number is less than 0")
+ } else {
+   cat("The number is 0")
+ }
```

```
The number is greater than 0
```

## ifelse


```r
> num1 <- 2
> num2 <- 3
> num3 <- ifelse(num1 > 0 & num2 < 0, 1, 0)
```


