#' Calculate year a groundwater well will reach a specific depth to groundwater

#' @param depth_groundwater depth to groundwater in meters m, numeric variable
#' @return yr, year when depth to groundwater surpasses 80m, numeric variable
#' @author Annika Leiby


# If depth to groundwater in a well increases by 10% per year, how many years will it take for the water level in the well to be greater than  80 meters, if the current depth to groundwater is 10 meters>


# Set up initial conditions of year = 1 and starting depth to groundwater is 10 meters.

depth_groundwater = function(depth_groundwater){

  yr = 1

  # loop using while function

  while ((depth_groundwater < 80) &&(yr < 50))  {
    # increase depth
    depth_groundwater = depth_groundwater + 0.1* depth_groundwater
    # keep track of time
    yr = yr + 1
    yr = ifelse( (yr < 0), NA, yr)  #add error checking
    }

  # Return the yr depth to groundwater surpasses 80m

  return(yr)
}







