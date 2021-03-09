#' Groundwater Category
#'
#' This function categorizes a well as "sustainable", "overdrafted", or "critically overdrafted" based on water level
#' @param level water level in meters, numeric variable
#' @return category based on the water level
#' @author Annika Leiby

gw_category = function(level){

  level = as.numeric(level)
  group = 1

  for (i in 1:length(level)){
    group[i] = dplyr::case_when(
      level[i] < 40 ~ "sustainable",
      level[i] >= 40 & level[i] < 80 ~ "overdrafted",
      level[i] >= 80 ~ "critical")
  }
  return(group)
}

