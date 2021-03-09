#' Groundwater Category
#'
#' This function categorizes a well as "sustainable", "overdrafted", or "critically overdrafted" based on depth to water in a groundwater well
#' @param depth to water in meters, numeric variable
#' @return category based on the depth to water
#' @author Annika Leiby

gw_category = function(depth){

  depth = as.numeric(depth)
  group = 1

  for (i in 1:length(depth)){
    group[i] = dplyr::case_when(
      depth[i] < 40 ~ "sustainable",
      depth[i] >= 40 & depth[i] < 80 ~ "overdrafted",
      depth[i] >= 80 ~ "critically overdrafted")
  }
  return(group)
}

