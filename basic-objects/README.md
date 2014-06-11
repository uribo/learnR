# Basic objects

In R, everything we can play with is an **object**, and everything we do is a **function**.

For example, when we do statistics, we often feed a table of data to a linear regression equation and obtain a group of linear coefficients. 

What basically happens in R when we practice this procedure is that a we provide a **data frame** *object* that holds the table of data, carry it to the linear model *function* and get a **list** *object* consisting of the properties of the regression results, and extract a **numeric vector** from the **list** to represent the linear coefficients.

These objects have different goals and behaviors. It's important to understand how these basic objects work in order to solve real world problems with elegant code and fewer steps. More importantly, this understanding will allow you to spend more time on the logic of the right solution to your problem, rather than the problem of producing the right code.

In this section, we will see a variety of basic objects that make it handy to analyze and visualize datasets. You will have a basic understanding on how these objects work and interact with each other.
