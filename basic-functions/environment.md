


# Environment functions


```r
> search()
```

```
[1] ".GlobalEnv"        "package:Rgitbook"  "package:stats"    
[4] "package:graphics"  "package:grDevices" "package:utils"    
[7] "package:datasets"  "Autoloads"         "package:base"     
```

```r
> 
> x <- 1
> y <- 1
> 
> objects()
```

```
 [1] "-a"   "+a"   "bib"  "ch1"  "col"  "df"   "f"    "i"    "item" "l1"  
[11] "m"    "m1"   "m2"   "num"  "num1" "num2" "num3" "row"  "x"    "x1"  
[21] "x2"   "x5"   "y"   
```

```r
> remove(x)
> rm(y)
> rm(list = objects())
> 
> getwd()
```

```
[1] "D:/Workspaces/learnR/basic-functions"
```

```r
> # setwd('d:/')
> 
> getOption("digits")
```

```
[1] 4
```

```r
> 1e+10 + 0.5
```

```
[1] 1e+10
```

```r
> options(digits = 15)
> 1e+10 + 0.5
```

```
[1] 10000000000.5
```


