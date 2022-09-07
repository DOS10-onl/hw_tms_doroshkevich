task_number = input("task number?: ")
# Task #1:
## Imagine an alien was just shot down in a game. Create a variable called alien_color and assign it a value of 'green', 'yellow', or 'red'.
### 1. Write an if statement to test whether the alien’s color is green. If it is, print a message that the player just earned 5 points.
### 2. Write one version of this program that passes the if test and another that fails. (The version that fails will have no output.)

if task_number == "1.1":
    alien_color = "green"
    if alien_color == "green":
        print("you earned 5 points")

if task_number == "1.2":
    alien_color = "yellow"
    if alien_color == "green":
        print("you earned 5 points")

# Task #2:
## Choose a color for an alien as you did in Exercise 1, and write an if-else chain.
## 1. If the alien’s color is green, print a statement that the player just earned 5 points for shooting the alien.
## 2. If the alien’s color isn’t green, print a statement that the player just earned 10 points.
## 3. Write one version of this program that runs the if block and another that runs the else block.

if task_number == "2.1":
    alien_color = "green"
    if alien_color == "green":
        print("you earned 5 points")
    else:
        print("you earned 10 points")

if task_number == "2.2":
    alien_color = "yellow"
    if alien_color == "green":
        print("you earned 5 points")
    else:
        print("you earned 10 points")

# Task #3:
## Alien Colors #3: Turn your if-else chain from Exercise 2 into an if-elif-else chain.
## 1. If the alien is green, print a message that the player earned 5 points.
## 2. If the alien is yellow, print a message that the player earned 10 points.
## 3. If the alien is red, print a message that the player earned 15 points.
## 4. Write three versions of this program, making sure each message is printed for the appropriate color alien.

if task_number == "3.1":
    alien_color = "green"
    if alien_color == "green":
        print("you earned 5 points")
    elif alien_color == "yellow":
        print("you earned 10 points")
    else:
        print("you earned 15 points")

if task_number == "3.2":
    alien_color = "yellow"
    if alien_color == "green":
        print("you earned 5 points")
    elif alien_color == "yellow":
        print("you earned 10 points")
    else:
        print("you earned 15 points")

if task_number == "3.3":
    alien_color = "red"
    if alien_color == "green":
        print("you earned 5 points")
    elif alien_color == "yellow":
        print("you earned 10 points")
    else:
        print("you earned 15 points")

# Task #4:
## Write an if-elif-else chain that determines a person’s stage of life. Set a value for the variable age, and then:

## 1. If the person is less than 2 years old, print a message that the person is a baby.
## 2. If the person is at least 2 years old but less than 4, print a message that the person is a toddler.
## 3. If the person is at least 4 years old but less than 13, print a message that the person is a kid.
## 4. If the person is at least 13 years old but less than 20, print a message that the person is a teenager.
## 5. If the person is at least 20 years old but less than 65, print a message that the person is an adult.
## 6. If the person is age 65 or older, print a message that the person is an elder.
if task_number == "4":
    age = int(input("age: "))
    if age < 2:
        print("baby")
    elif 2 <= age < 4:
        print("toddler")
    elif 4 <= age < 13:
        print("kid")
    elif 13 <= age < 20:
        print("teenager")
    elif 20 <= age < 65:
        print("adult")
    else:
        print("elder")
