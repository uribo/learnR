

# Loop

## for-loop


```r
> for(i in c(1,2,3)) {
+   message("Hello, world!")
+ }
```

```
Hello, world!
Hello, world!
Hello, world!
```

```r
> for(i in 1:10) {
+   message(sprintf("Message %d",i))
+ }
```

```
Message 1
Message 2
Message 3
Message 4
Message 5
Message 6
Message 7
Message 8
Message 9
Message 10
```

```r
> for(i in 1:10) {
+   if(i==5) break
+   else message(sprintf("Message %d",i))
+ }
```

```
Message 1
Message 2
Message 3
Message 4
```

```r
> for(i in 1:10) {
+   if(i==5) next
+   else message(sprintf("Message %d",i))
+ }
```

```
Message 1
Message 2
Message 3
Message 4
Message 6
Message 7
Message 8
Message 9
Message 10
```

```r
> for(item in c("Hello","World","Hi")) {
+   message(item)
+ }
```

```
Hello
World
Hi
```

```r
> for(item in list(a=c(1,2,3),b=c("a","b","c","d"))) {
+   str(item)
+ }
```

```
 num [1:3] 1 2 3
 chr [1:4] "a" "b" "c" "d"
```

```r
> df <- data.frame(x=c(1,2,3),y=c("A","B","C"),stringsAsFactors = FALSE)
> for(col in df) {
+   str(col)
+ }
```

```
 num [1:3] 1 2 3
 chr [1:3] "A" "B" "C"
```

```r
> for(i in 1:nrow(df)) {
+   row <- df[i,]
+   str(row)
+ }
```

```
'data.frame':	1 obs. of  2 variables:
 $ x: num 1
 $ y: chr "A"
'data.frame':	1 obs. of  2 variables:
 $ x: num 2
 $ y: chr "B"
'data.frame':	1 obs. of  2 variables:
 $ x: num 3
 $ y: chr "C"
```

## while-loop


```r
> x <- 0
> while(x <= 10) {
+   message(x)
+   x <- x + 1
+ }
```

```
0
1
2
3
4
5
6
7
8
9
10
```

## repeat-loop


```r
> x <- 0
> repeat {
+   x <- x+1
+   if(x==10) break
+   else if(x==5) {
+     next
+   }
+   else {
+     message(x)
+   }
+ }
```

```
1
2
3
4
6
7
8
9
```

