# Zach Brown
# MSDS 7330 403
# HW2_Q17.py
# 29 Sep 2015

# Instantiate dictionary containing courses
courses = {'MSDS6371':'Experimental Statistics I',
           'MSDS7330':'File Organization and Database Management'}

# Function to add a course
def add_course(num, title):
    courses[num] = title

# Function to print the courses
def print_courses(str):
    # Step through each key:value pair in the dictionary and print
    # the course title if the string is contained in the course number
    match = False
    for i in courses:
        if (str in i):
            match = True
            print courses[i]
            
    # If no keys match the string, print an error message
    if (match == False):
        print 'No matching courses!'

# Function to prompt user for Course Number            
def get_course_num():
    return raw_input('Enter Course Number: ')
    
# Function to prompt user for Course Name
def get_course_name():
    return raw_input('Enter Course Name: ')
    
# Function to prompt user for Course Number search string
def get_search_string():
    return raw_input('Enter full or partial Course Number to search for: ')
    
# Function to ask user if they want to add a course or print courses
def get_option():
    return int(raw_input('Enter 1 to add a course, 2 to print courses or 3 to exit: '))
    
# Main function
def main():
    keep_running = True
    while(keep_running == True):
        # Get option from user and make sure it's 1 or 2
        option = get_option()
        # Add course if user enters 1
        if (option == 1):
            course_num = get_course_num()
            course_name = get_course_name()
            add_course(course_num, course_name)
        # Print course if user enters 2
        elif (option == 2):
            search_string = get_search_string()
            print_courses(search_string)
        # Exit the program if user enters 3
        elif (option == 3):
            keep_running = False
            return
        # Print an error message if user enters an invalid option
        else:
            print 'Please enter a valid option'
    
main()