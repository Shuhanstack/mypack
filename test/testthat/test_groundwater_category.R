test_that("groundwater_category_works", {
  expect_match(gw_category(15), "sustainable")
  expect_match(gw_category(40), "overdrafted")
  expect_match(gw_category(100), "critically overdrafted")
})
