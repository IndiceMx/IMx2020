## compare with the numbers
library(IM2020)
library(dplyr)

test_that("poblacion", {
            POB_TOT <- c(5543828, 3540685, 4132148)

            expect_equal((IME_2020 %>%
                           filter(GM_2020 == "Muy alto") %>%
                            group_by(CVE_ENT) %>%
                             summarise(count = sum(POB_TOT)))$count,
                          POB_TOT)
            }
          )
