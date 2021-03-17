test_that("indicator_scores_function_works" ,
          # Generate Climate Data where there is a 2 years each with 2 months (so 4 months in total), and each month just has one day - and we can pick one to call it spring
          # Simple way to test because its 'easy' to see what the function should return if working correctly




          {survey_scores = data.frame(
              id = c("a3341","a3341","a3341","a3341","a3341","a3341","a3341","a3341",
                     "b4452","b4452","b4452","b4452","b4452","b4452","b4452","b4452",
                     "c5563","c5563","c5563","c5563","c5563","c5563","c5563","c5563",
                     "d6674","d6674","d6674","d6674","d6674","d6674","d6674","d6674"),
              category = c("economical","ecological","social","instatution","economical","social","instatution","social",
                           "economical","ecological","social","instatution","economical","social","instatution","social",
                           "economical","ecological","social","instatution","economical","social","instatution","social",
                           "economical","ecological","social","instatution","economical","social","instatution","social"),
              score = c(2,5,1,3,3,0,0,2,
                        6,3,2,4,1,1,1,3,
                        3,2,1,2,2,1,0,1,
                        4,4,1,3,3,1,1,3),
              max = c(7,6,4,6,5,2,1,4,
                      7,6,4,6,5,2,1,4,
                      7,6,4,6,5,2,1,4,
                      7,6,4,6,5,2,1,4))

          expect_equal(indicator_scores_function(survey_scores)$`Ecological`[1],"High Standard 83.33")
          expect_equal(indicator_scores_function(survey_scores)$`Economic`[1],"Inferior Standard 44.29")
          expect_equal(indicator_scores_function(survey_scores)$`Institution`[1],"Very Inferior Standard 25")
          expect_equal(indicator_scores_function(survey_scores)$`Social`[1],"Very Inferior Standard 25")
          expect_equal(indicator_scores_function(survey_scores)$`Overall`[1],"Inferior Standard 44.4")

          })
