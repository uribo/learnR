# Basic objects

In R, everything you can play with is an object. 

For example, when you feed a table of data to a linear regression equation and obtain a group of linear coefficients, what really happens between you and R is that a you provide a *data frame* object that holds the table of data, carry it to the linear regression function and get a *list* object consisting of the properties of the regression results, and extract a *numeric vector* from the *list* that represents the linear coefficients.

These objects have different goals and behaviors. It's important to understand how these basic objects work in order to solve real world problems with elegant code and fewer steps. More importantly, this understanding will allow you to spend more time on the logic of the right solution to your problem, rather than the problem of producing the right code.

In this section, we will see a variety of basic objects that make it handy to analyze and visualize datasets. You will have a basic understanding on how these object work and interact with each other.
