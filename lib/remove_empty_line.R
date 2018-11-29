remove_empty_line <- function(current_detect_output){
  empty_index <- which(current_detect_output[,1] == "" |  current_detect_output[,2] == "")
  
  if (length(empty_index)>0){
    current_detect_output <- current_detect_output[-empty_index,]
  }
  
  return(current_detect_output)
}