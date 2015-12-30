# Zach Brown
# MSDS 7330 403
# anagram.py
# 10 Nov 2015

# Import libraries
import matplotlib.pyplot as plt
import sqlite3

# Initialize anagram dictionary
anagrams = dict()

# Read in Scrabble dictionary txt file
with open("C:\\Users\\zach\\Google Drive\\SMU\MSDS 7330 - File Organization and Database Management\\Week 11\\ospd.txt") as file:
    scrabble = file.readlines()

# Populate anagram dictionary
for line in scrabble:
    # Sort word in alphabetical order and strip off newline character
    word = line[:-1]
    sorted_word = "".join(sorted(word))
            
    # If sorted_word is not already a key in the anagrams dictionary,
    # set the value to a set containing the word
    if sorted_word not in anagrams:
        anagrams[sorted_word] = {word}
        
    # Else add the word to the set
    else:
        anagrams[sorted_word].add(word)
        
# Print the number of anagrams
print "QUESTION 1.) Number of unique anagrams in the Scrabble word list: " + str(len(anagrams))

# Determine anagram with the most instances
most_words = max(anagrams, key=lambda k: len(anagrams[k]))

# Determine number of instances for the most used anagram
most_words_count = len(anagrams[most_words])

# Print the anagram with the most instances
print "QUESTION 2.) The anagram with the most instances is \"%s\" with %s words." % (most_words, most_words_count)

# Create doctionary of word counts for all anagrams
counts = dict()
for key in anagrams:
    counts[key] = (len(anagrams[key]))

# Plot a histogram of distribution of anagram instances
print "QUESTION 3.) "
plt.hist(counts.values())
plt.title("Anagram Histogram")
plt.xlabel("Words per Anagram")
plt.ylabel("Number of Anagrams")
plt.show()

# Initialize database connection and cursor
conn = sqlite3.connect("C:\\Users\\zach\\Google Drive\\SMU\\MSDS 7330 - File Organization and Database Management\\Week 11\\anagram.db")
c = conn.cursor()

# Create database table
c.execute("DROP TABLE scrabble")
c.execute("""CREATE TABLE scrabble
            (anagram TEXT PRIMARY KEY, word_count INTEGER, words TEXT)""")

# Create list of tuples to insert into scrabble table
anagram_list = []            
for key in anagrams:
    anagram_list.append((key, str(len(anagrams[key])), ','.join(anagrams[key])))

# Populate database table
c.executemany('insert into scrabble values (?,?,?)', anagram_list)

# Commit changes to database
conn.commit()

# Query the number of unique anagrams from the scrabble database table
c.execute("SELECT COUNT(*) FROM scrabble")
anagram_count = c.fetchone()[0]

# Print the number of unique anagrams
print "QUESTION 4.) There are %s unique anagrams in the Scrabble dictionary according to the database." % anagram_count

# Run a query to find the anagram with the largest number of words in the database
c.execute("""SELECT anagram, word_count
            FROM scrabble
            WHERE word_count = (SELECT max(word_count) FROM scrabble)""")
row = c.fetchone()
max_words = row[0]
max_word_count = row[1]

# Print the anagram with the most words and the number of words it can make
print "QUESTION 5.) The anagram with the most instances is \"%s\" with %s words." % (max_words, max_word_count)

# Close the database connection
conn.close()

# Initialize anagram dictionary for the Merriam-Webster word list
mw_anagrams = dict()

# Read in Merriam-Webster txt file
with open("C:\\Users\\zach\\Google Drive\\SMU\\MSDS 7330 - File Organization and Database Management\\Week 11\\words.txt") as file:
    mw = file.readlines()

# Populate anagram dictionary
for line in mw:
    # Sort word in alphabetical order and strip off newline character
    word = line[:-1]
    sorted_word = "".join(sorted(word))
            
    # If sorted_word is not already a key in the mw_anagrams dictionary,
    # set the value to a set containing the word
    if sorted_word not in mw_anagrams:
        mw_anagrams[sorted_word] = {word}
        
    # Else add the word to the set
    else:
        mw_anagrams[sorted_word].add(word)

# Create doctionary of word counts for all Merriam-Webster anagrams
mw_counts = dict()
for key in mw_anagrams:
    mw_counts[key] = (len(mw_anagrams[key]))

# Initialize database connection and cursor
conn = sqlite3.connect("C:\\Users\\zach\\Google Drive\\SMU\\MSDS 7330 - File Organization and Database Management\\Week 11\\anagram.db")
c = conn.cursor()

# Create database table
c.execute("DROP TABLE mw")
c.execute("""CREATE TABLE mw
            (anagram TEXT PRIMARY KEY, word_count INTEGER, words TEXT)""")

# Create list of tuples to insert into mw table
mw_anagram_list = []            
for key in mw_anagrams:
    mw_anagram_list.append((key, str(len(mw_anagrams[key])), ','.join(mw_anagrams[key])))

# Populate database table
c.executemany('insert into mw values (?,?,?)', mw_anagram_list)

# Commit changes to database
conn.commit()

# Query the number of unique anagrams from the Merriam-Webster database table
c.execute("SELECT COUNT(*) FROM mw")
mw_anagram_count = c.fetchone()[0]

# Print the number of unique anagrams
print "QUESTION 6.) There are %s unique anagrams in the Merriam-Webster dictionary according to the database." % mw_anagram_count

# Run a query to find the anagram with the largest number of words in the database
c.execute("""SELECT anagram, word_count
            FROM mw
            WHERE word_count = (SELECT max(word_count) FROM mw)""")
row = c.fetchone()
mw_max_words = row[0]
mw_max_word_count = row[1]

# Print the anagram with the most words and the number of words it can make
print "QUESTION 7.) The anagram with the most instances is \"%s\" with %s words." % (mw_max_words, mw_max_word_count)

# Close the database connection
conn.close()
