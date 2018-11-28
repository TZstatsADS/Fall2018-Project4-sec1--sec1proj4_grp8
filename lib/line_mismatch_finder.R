line_mismatch_finder <- function(tess = current_tesseract_txt, grdth = current_ground_truth_txt){
  tess_num <- sapply(strsplit(tess, " "), length)
  grdth_num <- sapply(strsplit(grdth, " "), length)
  mismatch_line <- which(tess_num != grdth_num)
  mismatch_tess_num <- tess_num[tess_num != grdth_num]
  mismatch_grdth_num <- grdth_num[tess_num != grdth_num]
  return(list(mismatch_line=mismatch_line, mismatch_tess_num=mismatch_tess_num, mismatch_grdth_num=mismatch_grdth_num))
}



