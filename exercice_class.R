rm(list = ls())
default_card <- list(
  StudentName = "",
  QuizMarks = 0,      
  AssignmentMarks = 0, 
  ProjectMarks = 0    
)

student1 <- list(
  StudentName = "william gutierrez",
  QuizMarks = 15,
  AssignmentMarks = 25,
  ProjectMarks = 44
)

student2 <- list(
  StudentName = "Azra Duzenli",
  QuizMarks = 20,
  AssignmentMarks = 23,
  ProjectMarks = 48
)

master_list <- list(student1, student2)
master_list

student3 <- list(
  StudentName = "Shaunn Yiuxan",
  QuizMarks = 18,
  AssignmentMarks = 26,
  ProjectMarks = 47
)

master_list <- append(master_list, list(student3))
master_list

for (i in seq(master_list)) {
  total_marks <- master_list[[i]]$QuizMarks + master_list[[i]]$AssignmentMarks + master_list[[i]]$ProjectMarks
  master_list[[i]]$TotalMarks <- total_marks
}

master_list

student_average <- c()
for(i in 1:length(master_list)){
  student_average <- c(student_average, master_list[[i]]$TotalMarks)
}
master_list$ClassAverage <- mean(student_average)

str(master_list)

