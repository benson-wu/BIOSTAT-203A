library(foreign)
female <- read.csv("/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/LAFEMA01_1.csv")
female$sex <- 0
female$sex <- factor(female$sex)
write.foreign(female, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/female.csv",
              "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/female.sas", package="SAS")



male <- read.csv("/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/LAFEMA01_1.csv")
male$sex <- 1
male$sex <- factor(male$sex)
write.foreign(male, "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.csv",
              "/Users/bensonwu/Documents/UCLA/2021-2022/BIOSTAT_203A/Project1/BIOSTAT-203A/male.sas", package="SAS")
