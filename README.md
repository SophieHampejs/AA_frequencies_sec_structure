## Transparent and reproducible organization of a computational project

The goal of this course is to practice the organization of computational projects. A good organization allows to easily understand what was done and repeat it. Important learning objectives are a standardized project structure, the writing of driver scripts and the usage of a version control system for code development, backup and sharing with others.

As a sample project, we will work on a problem described in Exercise 12 ("Final Project: A Structural Bioinformatics Problem") from Ekmekci et al., 2016. I'm pretty sure it was inspired by the real-life publication *Amino acid propensities for secondary structures are inﬂuenced by the protein structural class*, Constantini et al., 2006.

Exercise description (from Ekmekci et al., 2016):

> As a final exercise, a cumulative project is presented below. This project addresses a substantive scientific question, and its successful completion requires one to apply and integrate the skills from the foregoing exercises. **Note that a project such as this — and really any project involving more than a few dozen lines of code — will benefit greatly from an initial planning phase.** In this initial stage of software design, one should consider the basic functions, classes, algorithms, control flow, and overall code structure.

> First, obtain a set of several hundred protein structures from the PDB, as plaintext pdb ﬁles (the exact number of entries is immaterial). Then, from this pool of data, determine the relative frequencies of the constituent amino acids for each protein secondary structural class; use only the three descriptors “helix,” “sheet,” and, for any AA not within a helix or sheet, “irregular.” (Hint: In considering ﬁle parsing and potential data structures, search online for the PDB’s ﬁle-format speciﬁcations.) Output your statistical data to a human-readable ﬁle format (e.g., comma-separated values, .csv) such that the results can be opened in a statistical or graphical software package for further processing and analysis. As a bonus exercise, use Python’s *matplotlib* package to visualize the ﬁndings of your structural bioinformatics analysis.

Let's go with 50 protein structures from the PDB. Additionally, you are provided with 10 more files with protein structures in pdb format - maybe from a collaborator, who asked you to include them in the analysis.

---
## Task List
- [x] Plan the project: Define project goals, milestones and work packages (as fine-grained as possible). Identify requirements like the tools/libraries/databases you intend to use. Define the required Python scripts in terms of input and output. Estimate the time to complete the work packages. Write this information into the "notes.txt" file. E.g.:   
  * Milestone 1: ... -> Deliverable(s): ...
    * WP 1: ... -> x hours
    * WP 2: ... -> y hours
    * WP 3: ... ; library to be used: biopython PDB module; Python script: input = ..., output = ... -> z hours
- [x] Create the project structure, including all required files and directories. Write the Bash driver scripts for all steps of the project. The driver scripts create required directories at runtime (like ```data``` for input data and ```results``` for output files) and call other tools or Python scripts that do the work. (To make life easier, I will provide the Python scripts later.)
- [x] Put the relevant files (like ```notes.txt```, Bash and Python scripts, and all other files required to reproduce your results) under version control with Git, and push them to a (private) Github repository. Add "biodatasciencetulln" as a collaborator.

## Final goal
The goal is to provide a complete computational project on Github, that can be downloaded and executed by any other person. This person should be able to reproduce all steps and obtain all results by doing this:
* ```git clone https://github.com/YOUR-USER/YOUR-PROJECT.git```
* ```cd YOUR-PROJECT```
* Project structure should be as described in the best-practices cheat sheet; for each enumerated directory (with names like ```01_download```):
  - Enter directory
  - Execute the Bash driver scripts (with names like ```01_run.sh```, there should be no more than one or two)
  - All results should be automatically generated and placed in ```/results```; the input data is located in ```/data```
  - Leave directory
 
Before the final submission, you should execute these steps in a clean environment to make sure that everything works. The grading is based on whether all tasks were completed and the project can be reproduced in the described way. 20 points are maximally achievable:
- 5 points for the usage of the version control system
- 5 points for a transparent project structure
- 5 points for informative ```notes``` file(s) with all project-relevant notes, like project planning, important links or your observations
- 5 points for informative and working driver scripts
 
---
#### References
* Noble, William Stafford. 2009. “A Quick Guide to Organizing Computational Biology Projects.” PLOS Computational Biology 5 (7): e1000424. https://doi.org/10.1371/journal.pcbi.1000424.
* Blischak, John D., Emily R. Davenport, and Greg Wilson. 2016. “A Quick Introduction to Version Control with Git and GitHub.” PLOS Computational Biology 12 (1): e1004668. https://doi.org/10.1371/journal.pcbi.1004668.
* Github tutorials, e.g. https://www.atlassian.com/git/tutorials/
* Ekmekci, Berk, Charles E. McAnany, and Cameron Mura. 2016. “An Introduction to Programming for Bioscientists: A Python-Based Primer.” PLOS Computational Biology 12 (6): e1004867. https://doi.org/10.1371/journal.pcbi.1004867.
* Costantini, Susan, Giovanni Colonna, and Angelo M. Facchiano. 2006. “Amino Acid Propensities for Secondary Structures Are Influenced by the Protein Structural Class.” Biochemical and Biophysical Research Communications 342 (2): 441–51. https://doi.org/10.1016/j.bbrc.2006.01.159.

