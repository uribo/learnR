

# Function


```r
> add <- function(x,y) {
+   x+y
+ }
```


```r
> add(2,3)
```

```
[1] 5
```


```r
> add(c(2,3),4)
```

```
[1] 6 7
```


```r
> calc <- function(x,y,type) {
+   if(type=="add") {
+     x+y
+   } else if(type=="minus") {
+     x-y
+   } else if(type=="multiply") {
+     x*y
+   } else if(type=="divide") {
+     x/y
+   } else {
+     stop("Unknown type of operation")
+   }
+ }
```


```r
> calc(2,3,"minus")
```

```
[1] -1
```


```r
> calc(c(2,5),c(3,6),"divide")
```

```
[1] 0.6667 0.8333
```


