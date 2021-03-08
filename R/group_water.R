#' Water groups
#'
#' This function groups water by its temperature.
#' @param temperature water temperature in degree C, numeric variable
#' @return water group based on the temperature
#' @examples water_groups(water_temp = c(-1, 0, 3, 25, 42, 77, 100, 103))
#' @author Shuhan Song

water_groups = function(temperature){

  temperature = as.numeric(temperature)
  group = 1

  for (i in 1:length(temperature)){
    group[i] = dplyr::case_when(
      temperature[i] <= 0                         ~ "might be ice",
      temperature[i] < 20                         ~ "cold water",
      temperature[i] >= 20 & temperature[i] < 40  ~ "warm water",
      temperature[i] >= 40 & temperature[i] < 50  ~ "hot water",
      temperature[i] >= 50 & temperature[i] < 100 ~ "too hot to drink",
      temperature[i] == 100                       ~ "boiling water",
      temperature[i] > 100                        ~ "superheating water")
  }
  return(group)
}
