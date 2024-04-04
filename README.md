Project 1 STATA

Exercise 1
You should start a do-file where you collect all the commands, so you can replicate the analysis at a
later date. The data we use comes from the paper Americans do I.T better: US Multinationals and the
Productivity Miracle by Nick Bloom, Rafaella Sadun and John van Reenen, forthcoming American
Economic Review.
a) Open the data set “replicate.dta”.
b) Use the “describe” command to find out how many observations are in the data set and what
the name of the variable containing information on "people management” scores is.
c) Find the mean value of the people management scores
d) Use the “tabulate” command to find out what countries are in our sample, what years and
how many observations there are for each year and country.
e) Save the do-file


Exercise 2
Keep using the same do-file and add the commands to reproduce the following exercises.
f) What are the mean, the standard deviation and the number of observations of the level of
employment in UK firms. Split this statistic by US Multinationals, Other Multinationals and
UK domestic establishments, replicating the first column of Table 1 in the paper.
g) Create the correlation matrix of all management scores separately for each country.
h) Find the mean value of management scores for each country and year.
i) Create a horizontal bar graph that depicts the average people management score in each
country, replicating Figure 3a in the paper.
j) Create the same graph again, this time only for those firms that are US multinational
subsidiaries.
k) Use the “graph export” command to save the plot.


Exercise 3
Keep using the same do-file and add the commands to reproduce the following exercises.
l) Generate a variable that is equal to the total number of hours worked in a firm.
m) List the first 10 observations to see whether your new variable is correctly defined.
n) Create a dummy variable, i.e. a variable that takes the values 0 and 1, that is 1 if a firm has at
least 1 employee that is a union member and 0 otherwise. Hint use generate and replace in
combination with “if”.
o) Create a variable that is the sum of all individual management scores. Compare it to the
existing variable that combines the management scores. Why do they differ? Account for the
reason for the difference and check again whether scores differ.
p) Save the current data set and import the file “additional.csv”. Save the file in Stata format
and reopen the original data set. Use the “merge” command to add the additional variables.
Save the new data set.


Exercise 4
Keep using the same do-file and add the commands to reproduce the following exercises.
q) Start a log-file at the beginning of your do-file, make sure you close it at the end of your dofile.
r) Run a regression of log sales on people management scores.
s) Predict the fitted value and create a graph where you combine the scatterplot of log sales
and people management scores with the fitted line.
t) Run the same regression again, this time constraining the sample to establishments that are
i) UK domestic, ii) US multinationals, iii) Other multinationals. Plot the three predicted
values inside the scatter plot.
u) Create dummy variable interactions with the people management score and run the
regression of log sales on the five appropriate variables to replicate the results from the 3
separate equations. Test whether the people management score has the same impact on log
sales among the three ownership types.

Project 2 STATA

Exercise 1
Start a new do-file and add the commands to reproduce the following exercises.
a) Start a log-file at the beginning of your do-file, make sure you close it at the end of your dofile.
b) Import the file “additional.csv”. Save the file in Stata format and reopen the original data set
(“replicate.dta”).
c) Label the variables. The variable “net” indicates whether the “Establishment has a network”
and “totserver” tells you the “total servers using site file info”.
d) What are the mean and standard deviation of “net”?
e) Create a histogram of the total servers using site file info in 2003.
f) Use the “merge” command to add the additional variables. Save the new data set.
g) Check whether you obtained the desired result.
h) How many firms are in your sample (the “duplicate” command is one way to figure this
out).


Exercise 2
Keep using the same do-file and add the commands to reproduce the following exercises.
a) Rename the management score variables to start with the same prefix, e.g. “m_peeps”.
b) Use the “order” command to bring all management variables together.
c) Generate a variable that is equal to the total number of hours worked in a firm.
d) List the first 10 observations to see whether your new variable is correctly defined.
e) Drop that variable from the sample.
f) Create a dummy variable, i.e. a variable that takes the values 0 and 1, that is 1 if a firm has at
least 1 employee that is a union member and 0 otherwise. Hint use generate and replace in
combination with “if”.
g) Create a variable that is the sum of all individual management scores. Compare it to the
existing variable that combines the management scores (“management”). Why do they
differ? Account for the reason for the difference and check again whether scores differ.


Exercise 3
Keep using the same do-file and add the commands to reproduce the following exercises.
a) Create the conditional expectation function (CEF), i.e. the sample analog of 𝐸(𝑌𝑖
|𝑋𝑖), where 𝑌
is log sales and 𝑋 is the total servers using site file info.
b) Create a graph that consists of a scatterplot of the above variables overlaid by the CEF.
c) To save memory we want to replace the string variable ‘analyst’ with a byte variable. Create
this variable without loss of information.
d) Generate a variable that is 1 if a firms management score compared to the previous
interview.
e) Generate a ranking of firms by management score for each year and country.
f) Generate a variable that is equal to 1.1 and summarize that data for all observations where
the variable is 1.1.
g) Generate a variable that is the sum of ‘totserver’ for each country and year.
h) Generate a dummy variable for each country.

Project 3 STATA

Exercise 1
Start a new do-file and add the commands to reproduce the following exercises. Open the data set
we created last week.
a) Rename the management score variables to start with the same prefix, e.g. “m_peeps”.
b) Use the “order” command to bring all management variables together.
c) Generate a variable that is equal to the total number of hours worked in a firm.
d) List the first 10 observations to see whether your new variable is correctly defined.
e) Drop that variable from the sample.
f) Create a dummy variable, i.e. a variable that takes the values 0 and 1, that is 1 if a firm has at
least 1 employee that is a union member and 0 otherwise. Hint use generate and replace in
combination with “if”.
g) Create a variable that is the sum of all individual management scores. Compare it to the
existing variable that combines the management scores (“management”). Why do they
differ? Account for the reason for the difference and check again whether scores differ.


Exercise 2
Keep using the same do-file and add the commands to reproduce the following exercises.
a) Create the conditional expectation function (CEF), i.e. the sample analog of 𝐸(𝑌𝑖
|𝑋𝑖), where 𝑌
is log sales and 𝑋 is the total servers using site file info.
b) Create a graph that consists of a scatterplot of the above variables overlaid by the CEF.
c) To save memory we want to replace the string variable ‘analyst’ with a byte variable. Create
this variable without loss of information.
d) Generate a variable that is the sum of ‘totserver’ for each country and year.
e) Generate a dummy variable for each country.


Exercise 3
Keep using the same do-file and add the commands to reproduce the following exercises.
a) Generate a variable that is equal to 1.1 and summarize that data for all observations where
the variable is 1.1.
b) Generate a variable that indicates the number of observations for each firm.
c) Generate a variable that is 1 if a firms management score increased compared to the
previous interview.
d) Generate a ranking of firms by management score for each year and country.
e) If a firm is observed three times or more, generate and indicator that tells you in which
period the management score was second highest.


Exercise 4
Keep using the same do-file and add the commands to reproduce the following exercises.
a) Create a scatter plot of management scores and sales using only 10% of the observations for
each country and year (select the observations randomly).
b) Use the appropriate options to suppress the legend, add axis descriptions and a title. Create
a color version for presentations and a monochrome version for the paper. Save them.
c) Highlight the observations from the US.

Project 4 STATA
Exercise 1
Start a new do-file and add the commands to reproduce the following exercises. Open the data set
we created last week.
a) Regress log sales on log materials, log employment and log capital.
b) Predict the residual and replace the variable with the residual squared.
c) Regress the squared residuals on the three regressors, their squares and all possible
interactions.
d) Test whether the variables are jointly significant.
e) Repeat the regression from a), this time instrumenting employment with wages and capital
with its lagged value (hint: use ivregress).
f) Test whether you can reject endogeneity of the regressors.


Exercise 2
Keep using the same do-file and add the commands to reproduce the following exercises.
a) Declare your data as panel data and run a fixed effects regression of log sales on log
materials, log employment, log capital and the management score
b) Rerun the estimation from a) using dummies for each company. Is the coefficient on
management identified?
c) Create a loop that reports the number of negative observations for each variable.
d) Run a regression of log sales on log material, log employment, log capital and management
score for each country in the sample separately (using a loop).
e) If the coefficient on management is statistically significant, test whether it is equal to .03. If it
is not significant, test whether it is equal to -.03.
