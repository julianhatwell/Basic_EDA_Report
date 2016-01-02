# Basic_EDA_Report
This is an attempt to tempatize the creation of a quick and easy exploratory data analysis report, using R and the knitr package.

The template consists of a master file and a number of code chunks for different types of plots.

The columns of any data frame will be enumerated into numeric, time series and factor variables and a suitable plot is automatically selected to give an idea of what's going on with the data.

To set up the report for any data frame, you need to create 3 simple files:

1. dataframe_this.Rnw
2. dataframe_tidy.Rnw
3. dataframe_custom.Rnw

Replace the string dataframe with a unique name for your dataframe.

Use the examples included here, and these guidelines to set up the report:

#### dataframe_this
Just add the package name, dataframe name and the name of the dependent variable (y). Check the examples to see how.

#### dataframe_tidy
Do any operations here to create a standard, tidy dataframe. This is useful if you are loading a dataframe from a package and it doesn't ship the way you like it. If it needs any code running to clean it up then do that here. Don't change the generic label "df" used here as the rest of the code refers to this.

#### dataframe_custom
You can change any of the individual plot creating chunks by setting the specific eval variable to false in this file and adding your own code here. See the examples in uswages, teengamb and divusa.