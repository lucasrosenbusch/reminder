#' With this function you can cheat and recall your solutions to Q3.1.1, Q3.1.3, Q3.1.6, and Q3.1.16
#' @export
#' @param exercise enter exercise to recall
#' @title Cheat
#' @details Here I could even add details!
#'
cheat <- function(exercise) {
  if (exercise == "Q3.1.3"){
    Q3.1.3 <- function(){
      titanic_train %>%
        ggplot(aes(x = factor(Sex), fill = factor(Survived))) +
        geom_bar()+
        xlab("Sex")+
        guides(fill = guide_legend(title = "How did it go?"))+
        scale_fill_discrete(labels = c("dead", "alive"))
    }
    View(Q3.1.3)
  } else if (exercise == "Q3.1.16"){
    Q3.1.16 <- function(){
      matrix(1:9, 3,3, byrow = TRUE) * c(1,2,3)
    }
    View(Q3.1.16)
  } else if (exercise == "Q3.1.1"){
    Q3.1.1 <- function(){
      box_plot_data <- rnorm(2000, 28, 2.8)     #simulated normal distribution
      boxplot(box_plot_data,
              main = "Simulated normal distribution",
              xlab = "X",
              ylab = "Y",
              col="cornflowerblue")
    }
    View(Q3.1.1)
  } else if (exercise == "Q3.1.6"){
    Q3.1.6 <- function(){
      library(dplyr)
      Orange %>%
        group_by(Tree) %>%
        summarise(max_circumference = max(circumference))%>%
        ggplot(aes(x=forcats::fct_inseq(Tree), y=max_circumference))+
        geom_bar(stat = "identity")
    }
    View(Q3.1.6)
}
}


