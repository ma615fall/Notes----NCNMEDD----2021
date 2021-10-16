

# NCNM moving forward

## outline for next week

### making data more accessible
 - what are your sources?  
 - ACS, EDA, BLS, SBA, and ???
 - could the system support dynamic data sourcing, instead of looking at a set of static files?<br><br>
 - Aidan O'Hara: Yeah! I have a mostly handy reference table, at least in producing a list of those main sources.
   - ACS (demographics and shape files)
   - BEA (regional data about GDP etc)
   - BLS (Quarterly Census of Employment and Wages {may be already covered in ACS})
   - DWFS (new mexico workforce solutions, CSVs only)
   - USDA:ERS (county-level socioeconomic indicators also CSVs only)
   - USASpending.gov (incredibly verbose information about grants via API)
   - Aidan O'Hara  18:49 <br>
As this database grows I'm guessing most of the growing pains will be born out of <span style="color:cyan">making sure that our property index manages to stay simple and robust right?</span> <br><br>
In that vein the broad strokes ingestion path, that I've come up with, is
<span style="color:cyan">API or CSV data -> codified properties/ subjects -> data subsets (where one subject or property is consistent) -> tnum parsing by the row....</span><br>
Depending on the eccentricities of all of these data sets we have in mind, the code I have for the "tnum parsing by the row" should be pretty adaptable.
