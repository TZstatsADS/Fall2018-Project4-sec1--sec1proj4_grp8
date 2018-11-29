
#############################################################################################################
#### this function is to remove the lines for those with "" in either tess_err or ground_truth_err column ###
#############################################################################################################

remove_empty_line <- function(current_detect_output){
  empty_index <- which(current_detect_output[,1] == "" |  current_detect_output[,2] == "")
  
  if (length(empty_index)>0){
    current_detect_output <- current_detect_output[-empty_index,]
  }
  
  return(current_detect_output)
}