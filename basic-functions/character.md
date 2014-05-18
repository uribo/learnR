


# Character functions


```r
> cat("Hello, world!")
```

```
Hello, world!
```

```r
> message("Hello, world!")
```

```
Hello, world!
```

```r
> print("Hello, world!")
```

```
[1] "Hello, world!"
```

```r
> cat("A new line\nA tab\t")
```

```
A new line
A tab	
```

```r
> message("A new line\nA tab\t")
```

```
A new line
A tab	
```

```r
> sprintf("Hello, %s! Your number is %d., and your score is %.2f", "Jack", 50, 
+     35.618)
```

```
[1] "Hello, Jack! Your number is 50., and your score is 35.62"
```

```r
> paste("Hello", "world")
```

```
[1] "Hello world"
```

```r
> paste("Hello", "world", sep = "-")
```

```
[1] "Hello-world"
```

```r
> paste0("Hello", "world")
```

```
[1] "Helloworld"
```

```r
> tolower("Hello")
```

```
[1] "hello"
```

```r
> toupper("Hello")
```

```
[1] "HELLO"
```

```r
> nchar("Hello")
```

```
[1] 5
```

```r
> ch1 <- "Hello"
> substr(ch1, 1, 3)
```

```
[1] "Hel"
```

```r
> substr(ch1, 1, 3) <- "abc"
> strsplit("a,bb,ccc", split = ",")
```

```
[[1]]
[1] "a"   "bb"  "ccc"
```

```r
> strsplit(c("Ken,24,Finance", "James,25,Economics"), split = ",")
```

```
[[1]]
[1] "Ken"     "24"      "Finance"

[[2]]
[1] "James"     "25"        "Economics"
```

