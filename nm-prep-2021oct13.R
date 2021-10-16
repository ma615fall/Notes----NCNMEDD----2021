
library(tidyverse)
library(tnum)

tnum.authorize("mssp1.bu.edu")


tnum.setSpace("NCNM")


v1 <- tnum.query()


df1 <- tnum.objectsToDf(v1)



v2 <- tnum.query(query = " * has population# = (> 50000)")  # 10 of 20

df2 <- tnum.objectsToDf(v2)


# any TN with "county in its subject and has a population > 50000  
v3 <- tnum.query(query = "#county# has population# = (> 50000)")  # 10 of 10 results

df3 <- tnum.objectsToDf((v3))   # note that the result repeats counties
                                # with different tags

##  the # says that it's ok to have more after 2017

##  wild cards -- * and #  
##  note that # only operates on segments of the tree
## 

##  Hav* would return Haviland (among other things)
##  Hav# would returen single taken Hav  OR return Hav (: or /) anything else
##  
## a* returns any path that begins with the letter "a", 
##  e.g. animal:dog ...    aircraft/wing ... and so on

## a#  returns only paths that begin only with the token a,
##        so "a" as a sinle char token  or "a: ..."  or "a/ ..."
##  
##   see cheatsheet for more detail  -- repurpose the cheatsheet for tnum

v4 <- tnum.query(query = "#county# has population# = (> 50000) @year:2017#")  ## 10 out of 14 result

v4
 ## note 

## ingest tag -- one for each ingestion -- 
## the ingest tag allows you to search by ingestion and eliminate an ingestion 
## that you decide you need to correct a probem

## now we are focused on high-population counties (2017 estimates)


####################################

## ok now what can we do with thid?  distrib?  clust?  etc  
## 
## next go for multiple properties
##
## other data , e.g. geographic areas of counties,  
## properties that don't come from the same data course
##
## e.g., % of census tract that is water,  
##  

## other subjects that could come from the same data


## subpath --e.g.,
##             new_mexico/county;santa_fe
                     "Sante Fe County of New Mexico"
      


##             new_mexico/county:santafe/tract:1037  ... 

##                      the 1037 tract of Sante Fe County of New Mexico


## other subjects
## racial groups?


#### look at v4 again


l5 <- tnum.getAttrFromList(v4, "subject" ) ## will show subjects of the 10
                                           ## TNs in V4
## l5 will show subjects of the 10 in a list
## note that only santa_fe and sandoval   
## 

unique(l5)  ## removes repitition

## note that graphPathList 
## arrows point in the direction of possive
## adjectives (modifiers) are in boxes
## ovals are nouns -- the whole graph shows subjects (two of them) 


## tree of subjects
tnum.graphPathList(l5)



tnum.graphTnumList(v4)

## get 10 leaf notes

## 