

# Data frame

A data frame is a table with a number of rows and columns. It looks like a matrix but its columns are not necessarily the same type. This is consistent with most data tables: a row, or data record is described by multiple columns of different types.

The following table is an example that can be fully characterized by a data frame.

| Name     | Gender | Age | Major            |
|----------|--------|-----|------------------|
| Ken      | Male   | 24  | Finance          |
| Ashley   | Female | 25  | Statistics       |
| Jennifer | Female | 23  | Computer Science |

## Creating data frame

To create such a data frame, we can call `data.frame` function and supply the data in each column.


```r
> persons <- data.frame(Name=c("Ken","Ashley","Jennifer"),
+   Gender=c("Male","Female","Female"),
+   Age=c(24,25,23),
+   Major=c("Finance","Statistics","Computer Science"))
> persons
```

```
      Name Gender Age            Major
1      Ken   Male  24          Finance
2   Ashley Female  25       Statistics
3 Jennifer Female  23 Computer Science
```

Note that creating a data frame is exactly the same with creating a list. It is because in essence a data frame *is* a list in which each member represents a column and has the same number of elements.

Other than creating a data frame from raw data, we can also create it from a list by calling either `data.frame` directly or `as.data.frame`.


```r
> l1 <- list(x=c(1,2,3),y=c("a","b","c"))
> data.frame(l1)
```

```
  x y
1 1 a
2 2 b
3 3 c
```

```r
> as.data.frame(l1)
```

```
  x y
1 1 a
2 2 b
3 3 c
```

We can also create a data frame from a matrix with the same method.


```r
> m1 <- matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow=FALSE)
> data.frame(m1)
```

```
  X1 X2 X3
1  1  4  7
2  2  5  8
3  3  6  9
```

```r
> as.data.frame(m1)
```

```
  V1 V2 V3
1  1  4  7
2  2  5  8
3  3  6  9
```

Note that the conversion also automatically assign column names to the new data frame. In fact, as you may verify, if the matrix already has column names or row names, they will be preserved in the conversion.

## Naming rows and columns

Since a data frame is a list but also looks like a matrix, the way we access these two types of objects both apply to data frame.


```r
> df1 <- data.frame(id=1:5,x=c(0,2,1,-1,-3),y=c(0.5,0.2,0.1,0.5,0.9))
> df1
```

```
  id  x   y
1  1  0 0.5
2  2  2 0.2
3  3  1 0.1
4  4 -1 0.5
5  5 -3 0.9
```

We can rename the columns and rows just like how we do so with a matrix.


```r
> colnames(df1) <- c("id","level","score")
> rownames(df1) <- letters[1:5]
> df1
```

```
  id level score
a  1     0   0.5
b  2     2   0.2
c  3     1   0.1
d  4    -1   0.5
e  5    -3   0.9
```

## Subsetting data frame

Since data frame is a matrix-like list of columns, we can use both set of notations to access the elements and subsets in a data frame.

### Subsetting as a list

If we would like to regard a data frame as a list of columns, we can use list notations to extract value or perform subsetting.

For example, we can use the dollar-sign to extract the value of one column by name, or use double square brackets to do so by index.


```r
> df1$id
```

```
[1] 1 2 3 4 5
```

```r
> df1[[1]]
```

```
[1] 1 2 3 4 5
```

List subsetting perfectly applies to a data frame and also yields new data frame. The single square brackets allows us to use an integer vector to extract columns by index, a character vector to extract columns by name, or a logical vector to extract columns by `TRUE` and `FALSE` selection.


```r
> df1[1]
```

```
  id
a  1
b  2
c  3
d  4
e  5
```

```r
> df1[1:2]
```

```
  id level
a  1     0
b  2     2
c  3     1
d  4    -1
e  5    -3
```

```r
> df1["level"]
```

```
  level
a     0
b     2
c     1
d    -1
e    -3
```

```r
> df1[c("id","score")]
```

```
  id score
a  1   0.5
b  2   0.2
c  3   0.1
d  4   0.5
e  5   0.9
```

```r
> df1[c(TRUE,FALSE,TRUE)]
```

```
  id score
a  1   0.5
b  2   0.2
c  3   0.1
d  4   0.5
e  5   0.9
```

### Subsetting as a matrix

However, the list notation does not support row access. In contrast, the matrix notation provides more flexibility. If we view a data frame as a matrix, the two-dimensional accessor enables us to easily access an entry of a subset, which supports both column selection and row selection.

In other words, we can use `[row,column]` notation to subset a data frame by specifying the row selector and column selector, which can be integer vectors, character vectors, and/or logical vectors.

For example, we can specify the column selector:


```r
> df1[,"level"]
```

```
[1]  0  2  1 -1 -3
```

```r
> df1[,c("id","level")]
```

```
  id level
a  1     0
b  2     2
c  3     1
d  4    -1
e  5    -3
```

```r
> df1[,1:2]
```

```
  id level
a  1     0
b  2     2
c  3     1
d  4    -1
e  5    -3
```

or the row selector:


```r
> df1[1:4,]
```

```
  id level score
a  1     0   0.5
b  2     2   0.2
c  3     1   0.1
d  4    -1   0.5
```

```r
> df1[c("c","e"),]
```

```
  id level score
c  3     1   0.1
e  5    -3   0.9
```

or both selectors at the same time:


```r
> df1[,"id"]
```

```
[1] 1 2 3 4 5
```

```r
> df1[1:4,"id"]
```

```
[1] 1 2 3 4
```

```r
> df1[1:3,c("id","score")]
```

```
  id score
a  1   0.5
b  2   0.2
c  3   0.1
```

Note that the matrix notation will simplify the output. That is, if only one column is selected, the result won't be a data frame but the value of that column. To keep the result always being a data frame even if it only has a single column, we can use both notations at the same time.


```r
> df1[1:4,]["id"]
```

```
  id
a  1
b  2
c  3
d  4
```

Here the first group of brackets subsets the data frame as a matrix with the first four rows and all columns selected. The second group of brackes subsets the resulted data frame as a list with only `id` column selected but also resulting in a data frame.

### Data filtering

The following code filters the rows of `df1` by a criterion that `score >= 0.5` and selects `id` and `level` columns:


```r
> df1$score >= 0.5
```

```
[1]  TRUE FALSE FALSE  TRUE  TRUE
```

```r
> df1[df1$score>=0.5,c("id","level")]
```

```
  id level
a  1     0
d  4    -1
e  5    -3
```

The following code filters the rows of `df1` by a criterion that the row name must be among a, d, or e, and selects the `id` and `score` columns.


```r
> rownames(df1) %in% c("a","d","e")
```

```
[1]  TRUE FALSE FALSE  TRUE  TRUE
```

```r
> df1[rownames(df1) %in% c("a","d","e"),c("id","score")]
```

```
  id score
a  1   0.5
d  4   0.5
e  5   0.9
```

Both examples above basically uses matrix notation to select rows by logical vector and select columns by character vector.

## Setting values



## Factor

One thing to notice is that the default behavior of a data frame tries to minimize memory usage. Sometimes this behavior might lead to unexpected problems silently.

For example, when we create a data frame by supplying a character vector as a column, it  will by default convert the character vector to a **factor** that only stores the same value once so that repetitions will not cost much memory.

We can verify this by calling `str` on data frame `persons` we created in the beginning.


```r
> str(persons)
```

```
'data.frame':	3 obs. of  4 variables:
 $ Name  : Factor w/ 3 levels "Ashley","Jennifer",..: 3 1 2
 $ Gender: Factor w/ 2 levels "Female","Male": 2 1 1
 $ Age   : num  24 25 23
 $ Major : Factor w/ 3 levels "Computer Science",..: 2 3 1
```

## Summarizing a data frame

summary

## Transforming a data frame

cbind
rbind

## Loading data frame from a file

read.table
read.csv

## Saving data frame to a file

write.table
write.csv
