# Fighting-Baseball-Name-Generator

## Backstory

The inspiration for this project came from the Japanese print of the 1994 Super Nintendo video game _MLB PA Baseball_, otherwise known as _Fighting Baseball._ Unlike their North American counterparts, the Japanese developers didn’t have the rights to the major league ballplayers names, so they had to make them up. The results have become something of an Internet legend. Google "Bobson Dugnutt" and "Sleve McDichael", it comes up like a rash.

Why were they so funny? Because they were only a letter or two off from being real names. It didn’t take very long to figure out that “Dwigt” was supposed to be “Dwight” and “Bonzalez” is supposed to be “Gonzalez”. Better still, it called to mind those funny names people come up with when they’re in a pinch. 

I saw somebody else online try to replicate this with A sophisticated model and a data set of 20,000 professional athlete names, except it didn’t quite work. You really have to suspend your disbelief to accept Rarr Dick and Wob Wonkoz as real names. I wanted to see if I could build a model that could generate a fake name that at least tried to sound real.

## Contents of the repo

This repo contains:

 1. The code to extract the data from the Lahman Baseball Database (wobWonkoz.R)

 2. The code for the model itself (bobsondugnutt.py)

 3. The name\_data folder (for the text files)

 4. some sample output

## How to run the model 

If the directory doesn't exist yet, create the name\_data folder. Then run the WobWonkoz.R code (you will need R to do this, and you will also need to install the Lahman package in R. You can do this by callng install.packages("Lahman")). Then, run bobsondugnutt.py. 

## The Model

I built a simple model that reads from a text file, uses the data to create new names, and spits it out. It spits out eight names one at a time. The model asks the user to add the name to their favourites. If the user select yes, then it writes the name to a text file. If the user selects no, it moves onto the next entry.

### How the model generates a name

First, the model separates the first and the last name. Then, it takes the first name and randomly inserts, deletes, or replaces a letter. Then randomly draws two last names, splits them in a random location, and then returns the first half of one name with the second half of the other. Next, it compares the names to the orginal output using the Levenshtein distance and selects the result most similar to the source material. The model then returns the first and last name combination.

This model doesn’t use any weights based on how many times the name appears in the original data. The selection, combination, and character replacement are all performed without preference for certain instances.

## Take-home message

This may not be a deep learning model, but it has something that the model that gave us "Wob Wonkoz" doesn't have: human oversight. I'm not at all surprised that this model worked better than the other one, even though it isn't as complex. AI exists to give humans superpowers, not replace humans. Even as the technology gets more sophisticated, you still need a human to make a judgement call. 

## Further Reading

http://www.seanlahman.com/baseball-archive/statistics/

https://slate.com/technology/2020/04/mlbpa-baseball-nintendo-japan-player-names.html

https://twitter.com/Kreuzader/status/841124218389561344

https://www.datacamp.com/community/tutorials/fuzzy-string-python
