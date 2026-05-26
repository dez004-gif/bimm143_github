# Class 7: Machine Learning 2
Derek Zhang (PID: A17819201)

- [Principal Component Analysis](#principal-component-analysis)
- [Data Import:](#data-import)

## Principal Component Analysis

## Data Import:

Importing the data below:

``` r
url <- "https://tinyurl.com/UK-foods"
x <- read.csv(url)
```

> Q1. How many rows and columns are in your new data frame named x? What
> R functions could you use to answer this question?

We can use the dim(df) function. This function returns the dimensions of
the data frame in rows x cols.

``` r
## Complete the following code to find out how many rows and columns are in x?
dim(x)
```

    [1] 17  5

Checking the first 6 rows is done with `head()`

``` r
head(x)
```

                   X England Wales Scotland N.Ireland
    1         Cheese     105   103      103        66
    2  Carcass_meat      245   227      242       267
    3    Other_meat      685   803      750       586
    4           Fish     147   160      122        93
    5 Fats_and_oils      193   235      184       209
    6         Sugars     156   175      147       139

Correcting the row-names problem presented by the row indexes being
present as the first row

``` r
# Note how the minus indexing works
x <- read.csv(url, row.names=1)
head(x)
```

                   England Wales Scotland N.Ireland
    Cheese             105   103      103        66
    Carcass_meat       245   227      242       267
    Other_meat         685   803      750       586
    Fish               147   160      122        93
    Fats_and_oils      193   235      184       209
    Sugars             156   175      147       139

``` r
dim(x)
```

    [1] 17  4

> Q2. The second method of `read.csv(url, row.names=1)` is more robust,
> as it is a direct read from the source and makes an un-redundant
> adjustment. When running the other version `x[,-1]`, if ran more than
> once, there is a risk of deleting more information than desired.
