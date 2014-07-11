

# Loop

Loop (or iternation) repeatedly evaluates an expression by either iterating over a vector (`for`) or checking whether a condition is violated (`while`).

Such language constrcuts largely reduce the redundancy of the code if the same task is run over and over again each time with some changes in input.

## for-loop

The *for-loop* evaluates an expression by iterating over a given vector or list.


```r
for(i in c(1,2,3)) {
  message("Hello, world!")
}
```

```
Hello, world!
Hello, world!
Hello, world!
```

We can use the iterator `i` in the expression within `for`.


```r
for(i in 1:3) {
  message(sprintf("Message %d",i))
}
```

```
Message 1
Message 2
Message 3
```

We can use `break` to terminate a `for` loop.


```r
for(i in 1:5) {
  if(i==3) break
  else message(sprintf("Message %d",i))
}
```

```
Message 1
Message 2
```

We can also use `next` to skip the rest expressions in the current iteration and directly jump to the next one.


```r
for(i in 1:5) {
  if(i==3) next
  else message(sprintf("Message %d",i))
}
```

```
Message 1
Message 2
Message 4
Message 5
```

The iterator can run over more than numeric vector but any vector.


```r
for(item in c("Hello","World","Hi")) {
  message(item)
}
```

```
Hello
World
Hi
```

or list


```r
for(item in list(a=c(1,2,3),b=c("a","b","c","d"))) {
  str(item)
}
```

```
 num [1:3] 1 2 3
 chr [1:4] "a" "b" "c" "d"
```

or even data frame.


```r
df <- data.frame(x=c(1,2,3),y=c("A","B","C"),stringsAsFactors = FALSE)
for(col in df) {
  str(col)
}
```

```
 num [1:3] 1 2 3
 chr [1:3] "A" "B" "C"
```

Previously, we mentioned that a data frame is a list in which each element (or column) must have the same length. Therefore, the loop above iterates over the columns rather than rows, which is consistent with the behavior when `for` runs over an ordinary list.

However, in many cases, we want to iterate a data frame row by row. We can also do this with `for` but over a integer sequence from 1 to the number of rows of the data frame.

As long as `i` gets its value, we can single out that particular row and do something with it.


```r
for(i in 1:nrow(df)) {
  row <- df[i,]
  str(row)
}
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

If each iteration is independent with each other, then we should avoid using `for` but higher-order functions such as `lapply`. We will talk about it in detail in the next chapter.

## while-loop

In constrast to for-loop, while-loop does not stop running until the given condition is violated.

For example, the following while-loop starts with `x = 0`. Each time, the loop checks whether `x <= 10` holds. If so, the inner expressions are evaluated; otherwise the while-loop terminates.


```r
x <- 0
while(x <= 5) {
  message(x)
  x <- x + 1
}
```

```
0
1
2
3
4
5
```

If we remove `x <- x + 1` so that `x` no longer gains any increment, the code will not terminate until the system is killed. Therefore, while loop can sometimes be dangerous if the change is not properly implemented.

The flow-control expressions like `break` and `next` are also applicable for `while`.

## repeat-loop

In addition to for-loop and while-loop, R also provides the repeat-loop. It is a real loop because it does not require explicit termination condition or boundary unless `break` is hit.


```r
x <- 0
repeat {
  x <- x+1
  if(x==4) break
  else if(x==2) {
    next
  }
  else {
    message(x)
  }
}
```

```
1
3
```

`repeat` can be very dangerous and is not recommended in practice.
