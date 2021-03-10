test_that("water_groups_works", {
  expect_match(water_groups(0), "might be ice")
  expect_match(water_groups(100), "boiling water")
  expect_match(water_groups(50.5), "too hot to drink")
  expect_match(water_groups("10.9"), "cold water")
})
