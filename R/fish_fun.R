#' analyze a vector of fish
#' 
#' function returns the most common fish, the rarest fish, the total number of fish, and a histogram if asked
#' @param fish the vector of fish
#' @param plot whether to plot histogram or not; default is FALSE
#' @return a list containing the most common fish, the rarest fish, the total number of fish, and a histogram if asked
#' @author Shuhan Song and Annika Leiby

library(tidyverse)

fish_fun = function(fish, plot=FALSE){
  # make sure fish is listed as factor in the vector
  fish_factor = as.factor(fish)
  
  # the most common fish
  most_common = names(which.max(summary(fish_factor)))
  
  # the rarest fish
  rarest = names(which.min(summary(fish_factor)))
  
  # total number of fish
  total_num = length(fish)
  
  # store the three items in a list
  fish_list = list("The most common fish" = most_common, 
                   "The rarest fish" = rarest, 
                   "Total number of fish" = total_num)
  
  # make a plot
  if(plot == TRUE){
    plottitle = sprintf("There is a total of %d fish.", total_num) # title name
    
    fish_plot = ggplot(data.frame(fish=fish), 
                  aes(x = fish, fill = fish)) +
      geom_histogram(stat="count") +
      labs(title = plottitle) +
      theme_bw()
    
    # add histogram in the list
    fish_list$"Histogram" = fish_plot
    
  } else{
    fish_list$"Histogram" = NULL # make sure no histogram is returned in any other cases
  }

  return(fish_list)
}
