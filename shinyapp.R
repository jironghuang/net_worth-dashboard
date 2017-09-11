setwd("C:/Users/Huang Jirong/Google Drive/Shiny/Net worth")

#To test application
# library(shiny)
# runApp()

#To deploy the app
library(rsconnect)
#Fill in details with yours
rsconnect::setAccountInfo(name='xxxx',
                          token='xxxx',
                          secret='xxx')


deployApp()
