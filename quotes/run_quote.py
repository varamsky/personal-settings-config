#!/usr/bin/env python3

import json
import os
import random
import unicodedata

# location to the json file that contains all the quotes and author data
file_name = '/mnt/6C0801E20801ABE0/IdeaProjects/personal-settings-config/quotes/quotes.json'

with open(file_name) as file:
	data = json.load(file) # load the json file
	data = data['quotes-data'] # get all the quotes data from the json file
	random_index = random.randint(0, len(data)-1) # generate a random number in the range [ 0, len(data)-1 ]
	#print(random_index)
	quote = data[random_index]['quote'] # get a random quote
	author = data[random_index]['author'] # get the author of the random quote
	print(" \""+quote+"\"")
	print("  - "+author)

