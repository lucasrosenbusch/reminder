#' This function reminds me of birthdays and important deadlines
#' @export
#' @title Remind me


remind_me <- function () {
  birthdays <- c("21-04-1999", "28-08-1997")
  name <- c("Lina", "Lucas")
  df_birth <-data.frame(name, birthdays)
  print(df_birth)
  course <- c("Statistics 1", "Statistics 2", "Internship")
  deadlines <- c("01.03.2022", "02.03.2022", "03.03.2022")
  df_deadlines <- data.frame(course, deadlines)
  print(df_deadlines)
}




