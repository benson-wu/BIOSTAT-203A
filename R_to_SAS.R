library(foreign)
female <- read.csv("/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/LAFEMA01_1.csv")
female$sex <- "Female"
write.foreign(female, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/female.csv",
              "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/female.sas", package="SAS")



male <- read.csv("/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/LAMENA03_1.csv")
male$sex <- "Male"
write.foreign(male, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.csv",
              "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.sas", package="SAS")
