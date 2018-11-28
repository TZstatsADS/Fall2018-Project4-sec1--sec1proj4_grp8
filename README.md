# Project: OCR (Optical Character Recognition) 

![image credit to wikipedia.org](figs/Portable_scanner_and_OCR.png)

### [Full Project Description](doc/project4_desc.md)

Term: Fall 2018

+ Team #8
+ Team members
	+ Shiqing Long
	+ Yang Yue
	+ Yiding Xie
	+ Yingqiao Zhang
	
	(Names are listed in alphabetical order of last names.)
	



**Project summary**: In this project, we created an OCR post-processing procedure to enhance Tesseract OCR output accuracy.

0. Since in 13 files, rows in ground truth mismatch rows in tesseract, we modified ground_truth as ground_truth_trimed.
1. Detect Tesseract data error based on 8 rules from paper [D-1:Shortening Documents and Weeding Out Garbage ](doc/paper/D-1.pdf)
2. Locate the corresponding error words in ground truth dataset. 
3. Select possible Candidates for errors, calculate fetures scoring for each candidate; label candidate with 1 if it equals to ground truth, else 0.
4. Performed Adaboost.R2 to predict the top 3 best matching results to replace all error words. [C-2: Statistical Learning for OCR Text Correction](doc/paper/C-2.pdf) ![prediction](figs/prediction.png) 

5. Evaluated OCR performance based on two formulas, and both in word-level and character-level:
![formula](figs/formula.png)

**OCR Performance Result**

	
**Contribution statement**: ([default](doc/a_note_on_contributions.md)) All team members contributed equally in all stages of this project. All team members approve our work presented in this GitHub repository including this contributions statement. 

* Shiqing Long: Assist with features scoring and model building, OCR performance evaluation, and presentation.
* Yang Yue: OCR performance evaluation, README, normalization attempt.
* Yiding Xie: Error Detection, generate all files as corpus, map erros with corresponding ground truth words.
* Yingqiao Zhang: Feature scoring, select candidate, modeling, model evaluation.

Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
