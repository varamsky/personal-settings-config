#!/usr/bin/env python3

import json
import os
import random
import unicodedata

file_name = '/mnt/6C0801E20801ABE0/IdeaProjects/personal-settings-config/quotes/quotes.json'

with open(file_name) as file:
	data = json.load(file)
	data = data['quotes-data']
	random_index = random.randint(0, len(data)-1)
	#print(random_index)
	quote = data[random_index]['quote']
	author = data[random_index]['author']
	print(" \""+quote+"\"")
	print("  - "+author)

