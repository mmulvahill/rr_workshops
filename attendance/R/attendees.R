


library(readxl)
library(tidyverse)
library(qwraps2)
library(stringr)
options(width = 300)

getwd()
dat <- read_excel("./data/ReproducibleResearchParticipants2017 - 090517.xlsx")

onames <- names(dat)

dat <- dat %>% 
  purrr::set_names("created", "first_name", "last_name", "email", "role",
                   "academic", "school", "department", "division", "sessions",
                   "comments")

dat$role %>% table(exclude=NULL)
dat$academic %>% table
dat$school %>% table
dat$department %>% table
dat$division %>% table

dat %>% #select(sessions)
  mutate(workshop1 = str_detect(sessions, "Workshop 1"),
         workshop2 = str_detect(sessions, "Workshop 2")) %>%
  summarize(`Reporting` = n_perc0(workshop1),
            `Version Control` = n_perc0(workshop2))


dat %>% select(contains("name"), email, role, comments) %>% filter(!is.na(comments)) %>% .$comments


