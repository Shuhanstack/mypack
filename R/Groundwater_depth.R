#' Calculate depth to groundwater

#' @param depth_groundwater, depth to groundwater in meters m, numeric variable
#' #' @param n, year since year 0, numeric variable
#' @return depth_groundwater, numeric variable
#' @author Annika Leiby


# If depth to groundwater in a well is 10m at year 0 and increases by 10% per year. Make a function that calculates the depth at year n.


# Create function definition
# Add error checking to produce output of NA if a negative groundwater depth is calculated
# x is initial depth to groundwater (10m)
# n is the number of years since year 0

depth = function(x){
  groundwater_depth <- round(x + 0.1*n, digits = 1)
  result <- paste(groundwater_depth, "m", sep = " ")
  return(result)
  groundwater_depth = ifelse( (groundwater_depth < 0), NA, groundwater_depth)  #add error checking
}

# Set up initial conditions of year = 0 and starting depth to groundwater is 10 meters.

depth(yr=0, x=10)




