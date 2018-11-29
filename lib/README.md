# Project: OCR (Optical Character Recognition) 

### Code lib Folder

The lib directory contains various files with function definitions and code.

### Four functions were implemented:
* ifCleanToken: this function is implemented based on D1 Paper with 8 rules to select error words
* d1_detect: this function is to find matching ground truth word for those detected error words
* line_mismatch_finder: this function is to locate the row index of those lines with mismatching number of words
* feature_score: this R file includes all the scoring functions which implemented in C2 Paper
* remove_empty_line: this function is to remove the lines for those with "" in either tess_err or ground_truth_err column
