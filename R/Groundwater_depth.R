#' Depth to groundwater
#'
#' Function to calculate depth to groundwater at a specific year, knowing the initial depth to groundwater of 10m at year 0 and an increase in depth by 10% each year.
#' @param depth_groundwater, depth to groundwater in meters m, numeric variable
#' @param n, year since year 0, numeric variable
#' @return depth_groundwater, numeric variable
#' @author Annika Leiby


depth = function(groundwater_depth){
  groundwater_depth <- round(x + 0.1*n, digits = 1)
  result <- paste(groundwater_depth, "m", sep = " ")
  return(result)
  groundwater_depth = ifelse( (groundwater_depth < 0), NA, groundwater_depth)  #add error checking
}





