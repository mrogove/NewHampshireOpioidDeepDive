# README
Term Project for Tufts University's COMP119 Big Data course, Fall 2019
R API examples borrowed liberally from WaPo ARCOS stories.
All R adaptation, PySpark, and Python code by MRogove

Michael Rogove | Megana Lakshmi Padmanabhan | Kevin Hederman

Project Highlights
----
### Using R to reproduce work from WaPo's ARCOS API samples
from https://wpinvestigative.github.io/arcos/

<img src="https://user-images.githubusercontent.com/7624639/71302473-42fb4580-2379-11ea-9a24-ab07d9c57d71.png" width="45%"></img> <img src="https://user-images.githubusercontent.com/7624639/71302474-42fb4580-2379-11ea-9205-68d59844ab20.png" width="45%"></img> 

### Using R to identify suspicious pharmacies; verifying results from raw data via PySpark
<img src="https://user-images.githubusercontent.com/7624639/71302475-42fb4580-2379-11ea-904e-85699768bb13.png" width="45%"></img> <img src="https://user-images.githubusercontent.com/7624639/71302498-7938c500-2379-11ea-8f68-8ed904e0c46f.PNG" width="45%"></img>

### Draft Queries to Dive Deeper into Raw Opioid Data; Python to blend results with Social Vulnerability Index
 <img src="https://user-images.githubusercontent.com/7624639/71302499-7938c500-2379-11ea-8e10-044c7188bec2.PNG" width="45%"></img> <img src="https://user-images.githubusercontent.com/7624639/71302479-4db5da80-2379-11ea-91f5-bbee836e47d9.png" width="45%"></img> 
 
Here, we show who the most suspicious pharmacy bought from (doubled their McKesson orders in just 7 years; added a major oxycodone souce from Eckerd). We also can see that the flood of prescription opioids correlates with **rural, poorer counties with higher disability rates**.

----
## What files are here?
Five groups:

1. **Main Presentation** (.pptx file).
2. R analysis of API data.
3. PySpark analysis of raw ARCOS data.
4. SVI data and analysis.
5. *(Bonus: QGIS and related files)*
----
## 1. Main Presentation
This is what we will mostly use during final presentation. **START HERE.**

- **COMP119F19OpioidTermProject.pptx**

----
## 2. R analysis of API data.
Jupyter notebook: "OpioidProjectNotebook"

You only need to view one of these files, in order of preference:

1. **ROpioidProjectNotebook.html**
2. ROpioidProjectNotebook.ipynb
3. .pdf (just in case)

----
## 3. PySpark analysis of ARCOS data.
Jupyter notebook.

You only need to view one of these files, in order of preference:

1. **PySparkOpioidProjectNotebook.html**
2. PySparkOpioidProjectNotebook.ipynb
3. .pdf (just in case)

----
## 4. SVI Data and Analysis
Jupyter notebook and an excel file.

Excel file contains pivot tables and comparisons:
**NewHampshireSVI_analysis.xlsx**

How we generated plot/correlation matrix:
1. **NH_county_summary.html**
3. NH_county_summary.pdf (just in case)

----
## 5. QGIS files
- zipped separately
