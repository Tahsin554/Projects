# Final Report

## Introduction

Our key criteria for this project were Isaac Newton, Oscillating, Operating and Money. This is the program that we designed around these 4 conditions.

This program features a dynamic Isaac Newton model that moves from left to right across the screen. The Newton model is not only for the visual aspect of a character but also serves as the operator of an ATM machine.

The ATM, located near the Newton model, generates money when clicked. As the money is generated, it is visually displayed on the screen and undergoes an oscillation effect, adding a dynamic aspect to the program.

To further enhance user interaction, the ATM machine also features an interactive functionality. When the user clicks on the ATM, it responds by flashing green, signalling that money is being dispensed. This visual feedback enhances the overall interactivity and immersion of the program.

As the backdrop for this interactive scene, a captivating background of falling apples sets the stage. The apples serve a purpose since they help the user identify the Isaac Newton character amidst the dynamic elements on the screen.

## User Manual

#### Step 1: Opening the file
To use this program, Isaacs Oscillating Money, first you need to open the Final v1 folder. Inside there, open up the Newton_Client folder. From there double click the Newton_Client.pde file. This will open up processing. 

#### Step 2: Running the program
Once you are in processing, press the play button in the top left corner to start the program. When the program opens, you should see an image of Isaac Newton moving across the screen repeatedly. There should be an ATM displayed on the right-hand side and apples should be falling in the background behind all the other objects. 

#### Step 3: Playing the game
Once the program is running, you can use the mouse click to make Isaac Newton's arms move. If newton is close enough to the ATM, the ATM screen will light up and display the oscillating money. 

#### Closing the game
To close the game, simply click the red X in the top of the window, or alternatively press the stop button in the first processing window.

---

## Design and Architecture
#### Below is an architectural representation of how this program works. It is a simplified version to make it more understandable. 


![IMG_0061](https://github.com/Comp1050-2023/i2sse-contest-2023-charming-otters2/assets/126735256/cc24a5e6-8b0c-4d5b-8092-fa40fa9ff986)

In this diagram, there is the red main tab of the program. This is where all the global variables and events are stored such as Mouse pressed, the apple array and methods. The main tab then instructs the purple Isaac Newton tab to display and animate both the background and Isaac Newton. This tab also interacts with the blue ATM tab to operate the ATM. 
The red main tab also displays and animates the ATM tab, with the ATM displaying the osciallting money. 

### Key:
- Red Box: Main Tab in processing
- Purple Box: Isaac Newton tab in processing
- Blue Box: ATM tab in processing
- Arrows show direction of operation and what operation is done

---

## User Acceptance Tests

| User Stories                              | Acceptance Criteria                                   |
|-------------------------------------------|-------------------------------------------------------|           
| ***User story 1:*** As the user of the game, I want to see Isaac Newton move across the screen, so that I can click him to get money. | Given the game is running, when the program starts, Isaac Newton should move across the screen. |
| ***User story 2:*** As a user of the game, I want to be able to click Isaac Newton, so that I can get money out of the ATM. | Give the game is running, when the user clicks Isaac Newton, money should come out of the ATM. |
| ***User story 3:*** As a user of the game, I want the ATM to animate, so I know when I have successfully clicked Isaac Newton. | Given the game is running, when the user clicks Isaac Newton, the ATM screen should flash so the user knows they were close enough to the ATM. |
| ***User story 4:*** As a user of the game, I want the money to come out of the ATM, so I know if I was close enough to get the money. | Given the game is running, when the user clicks the Isaac Newton and is within range of the ATM, money should come out of the ATM. |
| ***User story 5:*** As a User of the game, I want the background to display falling apples, to help me recognize the character is Isaac Newton. | Given the game is running, when the user plays the game, apples should fall from the background. |
| ***User story 6:*** As a user of the game, I want the arms of Isaac newton to move, so I know when I have clicked on him. | Given the game is running, when the user clicks on Isaac Newton, Isaac Newton should animate to let the user know the click worked. |


Our test plan for this program is to work on the individual programs and test each part so the user can see each indiviual part in motion. The tests were designed to see if the user would interact with the program the intended way and to get as much feedback from the tests as possible from the user. We required a minimum of 2 tests per program with 70+% code coverage. Once the tests were passed and the program was operating as intended we started the merging process. We merged the programs one by one, re-testing to make sure the programs were compatible as they are added in. If any errors occurred, we fixed them before integrating the next program.

| User Acceptance Tests                    |                          Result                       |
|------------------------------------------|-------------------------------------------------------|
| **Test 1:** Display Isaac Newton moving across the screen | Pass                                    |
| **Test 2:** Display Isaac Newton and let the user click to display the oscillating money | Pass         |
| **Test 3:** Let the user click the game and display a flashing ATM screen | Pass          |
| **Test 4:** Let the use launch the program and see the falling background to help recognize Isaac Newton  | Pass      |

### Outcome
The outcome of the tests were successful. We had some conflicts with setup and draw functions, which were in all the files, so they had to be merged into the main draw and main setup. This was known going in and did not create any additional time loss. Overall, the tests passed.

---

## System Test


User Stories and Requirements that were the source for the system tests:
1. I want the Isaac Newton model to move smoothly from left to right on the screen.
2. I want the ATM to generate money and flash green when the screen is clicked.
3. I want the hands of the Isaac Newton model to move when the screen is clicked.
4. I want the money generated by the ATM to oscillate on the screen.
5. I want apples to drop from the top of the screen to the bottom.

Test Plan:
The test plan aims to ensure that each component of the program operates effectively on its own and also seamlessly interacts with other components without causing any failures. The components to be tested include the Isaac Newton model, ATM, money generation, oscillation effect, interactive ATM functionality, and the falling apples background.

| System Tests                    |                           Info                        |                   Result                |
|------------------------------------------|-------------------------------------------------------|-----------------------------------------|
| Test 1: Test the movement of the Isaac Newton model | Verify that the model moves smoothly from left to right without any jumps and stays within the boundaries of the screen| PASSED |
| Test 2: Test the ATM money generation and flashing | Verify that the ATM generates money while flashing green when the screen is clicked and check if the money appears on screen | PASSED |
| Test 3: Test the movement of the hands of the Isaac Newton model | Verify that the hands of the model moves when the screen is clicked | PASSED |
| Test 4: Test the oscillation of the generated money | Verify that the generated money oscillates horizontally on the screen and if the oscillation is smooth | PASSED |
| Test 5: Test the dropping of apples | Verify that apples start from the top of the screen and checking if the apples move downward towards the bottom of the screen. | PASSED |

---

## Unit Tests 

---

### Unit test 1: Isaac Newton movement  

As the main character of the program, it is necessary for Isaac Newton to be interactable with the ATM machine and the user. He achieved this through performing various types of movement. There were two types of movements that is done by Newton, the first one is moving across the program and turning back when he's at the end and other one is moving his hands when the user wants him to.

#### Test 1:
To test Isaac Newton's body movement, we made a variable which was used to move Newton by adding that variable to the position variable. Then the direction change was handled using if condition to make sure that he starts moving in the opposite direction whenever he touched the end of the program. We selected this as a test case because Newton needed to move across the program to reach the ATM.

 | Test ID: NewtonMovement.                  |                           Info                        |
 |-------------------------------------------|-------------------------------------------------------| 
 | Objective: | Makes Newton turn back whenever he reaches the edge. |
 | Environment: | Processing 3.0 |
 | Test steps: | **1.** Open Processing file.  **2.** run the Issac_Newton.pde |
 | Expected outcome: | The screen goes bright green |
 | Test results: | **Pass:** The movement were of the correct speed, whenever Newton touches the edge, he turns back, and the screen displays green. **Fail:** Isaac Newton moves too fast or too slow, whenever Newton touches the edge, he either stops moving or he doesn't change his direction, and the screen displays red |
 | Outcome: | Pass |


#### Test 2:
To test Isaac Newton's hand movement, a variable was made which calculated the angle that the hand will move at and was used to move Newton's hand by adding that variable to the x and y coordinates of the hand. Then the direction change was handled using if condition to make sure that whenever the user clicks on the program, his hand goes up. When the hand reached a certain position, it comes down whenever clicked. We selected this as a test case because Newton needed to interact with the user and also with the ATM by moving his hand.

 | Test ID: ArmMovement.                  |                           Info                        |
 |-------------------------------------------|-------------------------------------------------------| 
 | Objective: | Makes Newton's arm move whenever clicked and the arm moves in the opposite direction whenever it reaches a certain point. |
 | Environment: | Processing 3.0 |
 | Test steps: | **1.** Open Processing file.  **2.** run the unitTests.pde |
 | Expected outcome: | The screen goes bright green |
 | Test results: | **Pass:** The movement were of the correct space, whenever clicked , the arm goes up and when it reaches a certain point, it goes down, and the screen displays green. **Fail:** the arm moves too much or too little, when the arm reaches the desired point, it either stops moving or it doesn't change it's direction, and the screen displays red |
 | Outcome: | Pass |

---

### Unit test 2: Money oscillation

Since 'Money' and 'Oscillating' were words that we had to integrate into the program, it was natural that we would have the money oscillate rather than the apples or Newton himself. The unit tests for the money would test how fast the money oscillates and also test the position of the money since it would have to emerge from the ATM at a fixed point.


#### Test 1:
Testing the speed in which the money oscillates. We don't want this to be too fast that it's just a green blur and at the same time we don't want it to be too slow that you don't see the oscillation. The test used a while loop to display a green screen if they speed of the oscillation was within the set speeds we wanted.


 | Test ID: OscillationSpeed.                      |                           Info                        |
 |-------------------------------------------------|-------------------------------------------------------| 
 | Objective: | Make sure the oscillation isn't too fast so the user can see it is money. |
 | Environment: | Processing 4.0 |
 | Test steps: | 1. Open Processing file.  2. Enable the OscillationSpeed test in void main. 3. run the unitTests.pde |
 | Expected outcome: | The screen goes bright green if the speed is in our range. |
 | Test results: | Pass: The money is slow enough to be recognised. Fail: The money is too fast that it is a blur or too slow that you don't see the oscillation. |
 | Outcome: | Pass |
 
#### Test 2:
We wanted the money to start oscillating at the ATM screen. We needed it to be inside the ATM screen X and Y positions. We used a while loop so that while the start point was within the bounds of the screen, the program would be green.


 | Test ID: OscillationStart.                      |                           Info                        |
 |-------------------------------------------------|-------------------------------------------------------| 
 | Objective: | Confirm the falling speed is within range. |
 | Environment: | Processing 4.0 |
 | Test steps: | 1. Open Processing file.  2. Enable the OscillationStart test in void main. 3. run the unitTests.pde |
 | Expected outcome: | The screen goes bright green |
 | Test results: | Pass: The oscillation starts inside the ATM X and Y location Fail: The oscillation starts anywhere else in the program, the screen displays red |
 | Outcome: | Pass |

---

### Unit test 3: ATM screen Flash 

#### Test 1:

We needed to make sure the ATM screen flashed to ensure the user was aware the ATM machine worked. We decided to have it flash on and off to give a flickering look. We used a counter to make sure it flashed more than once.

 | Test ID: ATMScreenFlash.                      |                           Info                        |
 |-----------------------------------------------|-------------------------------------------------------| 
 | Objective: | confirm that the screen flashes on and off multiple times. |
 | Environment: | Processing 4.0 |
 | Test steps: | **1.** Open Processing file.  **2.** Enable the ATMScreenFlash test in void main. **3.** run the unitTests.pde |
 | Expected outcome: | The screen goes bright green if the screen code produces a flash |
 | Test results: | **Pass:** The ATM screen flashes multiple times on and off, the screen displays green. **Fail:** The screen doesn't flash or only flashes once, the screen displays red |
 | Outcome: | Pass |


#### Test 2:

We needed to make the screen flash for a certain time period so it is noticeable to the user. We used a duration timer to make sure it was over a minimum time but not over a maximum time.

 | Test ID: FlashTime.                      |                           Info                        |
 |------------------------------------------|-------------------------------------------------------| 
 | Objective: | making sure the screen flash runs for a specific time. |
 | Environment: | Processing 4.0 |
 | Test steps: | **1.** Open Processing file.  **2.** Enable the FlashTime test in void main **3.** run the unitTests.pde |
 | Expected outcome: | The screen goes bright green |
 | Test results: | **Pass:** The screen flashes on and off for the required time limit, the screen displays green. **Fail:** The screen doesn't flash for the required time limit, the screen displays red |
 | Outcome: | Pass |

---

### Unit test 4: Apples falling background 

The apples falling in the background are key to give another hint that the character you control is Isaac Newton. The unit test for the background is to check that the apples fall at random speeds between 2 set variables. There also needs to be 100 apples dropped from the top of the screen, and when they reach the bottom, they reset to the top.


#### Test 1:
To test the speed, we made an if condition to make sure the speed of each apple in the array was between 2 and 5. This was done using a for loop to go through each array object to see what the y speed value is. If they are all between 2 and 5, the screen should turn green. We selected this as a test case because having the apples fall too slow or too fast would distract the user from the actual interaction of the program. We could set the outside values so anything in between 2 and 5 would pass the test.

 | Test ID: AppleSpeed.                      |                           Info                        |
 |-------------------------------------------|-------------------------------------------------------| 
 | Objective: | Confirm the falling speed is within range. |
 | Environment: | Processing 4.0 |
 | Test steps: | **1.** Open Processing file.  **2.** Enable the AppleSpeed test in void main **3.** run the unitTests.pde |
 | Expected outcome: | The screen goes bright green |
 | Test results: | **Pass:** The apples were in the speed range, the screen displays green. **Fail:** The apples were outside the speed range, the screen displays red |
 | Outcome: | Pass |


#### Test 2:

In order to test the amount of apples, we created a counter variable that counted the objects in the array, if there were more or less than 100 objects, the test would fail. If there were 100 objects on screen, the whole screen would go green indicating a pass. If not the screen would be red. We selected this as a test because we didn't want too many or too little apples falling on the screen, either overcrowding it or it looking too empty. We decided as a group what looked good and ended up on 100 apples. We ensured sufficient coverage to check the ideal number by using an upper and lower limit to what we wanted. 

| Test ID: AppleQuantity                    |                           Info                        |
|-------------------------------------------|-------------------------------------------------------| 
| Objective: | Make sure the desired amount of apples are displayed. |
| Environment: | Processing 4.0 |
| Test steps: | **1.** Open processing file. **2.** Enable the AppleQuantity test in void main **3.** run the unitTests.pde |
| Expected outcome: | The screen goes bright green when 100 apples are displayed. |
| Test results: | **Pass:** 100 apples displayed, the screen displayed green.  **Fail:** not enough apples displayed, the screen displayed red.
| Outcome: | Pass. |

---

## Software Quality - Tahsin

### Warnings risen:
  A table listing all warning that the Comp1050 Checker PMD in the GitHub Actions tab raises for our project is given below:
  
  | Warnings                                  | Description                                           |
  |-------------------------------------------|-------------------------------------------------------|
  | Processing Ruleset DecentralizedEventHandlingRule: Newton_Client.pde#L76 | Do not use global event variable mousePressed in method draw, as draw is not one of the event handling methods |
  | Processing Ruleset DecentralizedEventHandlingRule: Newton_Client.pde#L90 | Do not use global event variable mousePressed in method draw, as draw is not one of the event handling methods |
  | Processing Ruleset DecentralizedEventHandlingRule: unitTests.pde#L16 | Do not use global event variable mousePressed in method armMovementTest01, as armMovementTest01 is not one of the event handling methods |
  | Processing Ruleset DecentralizedEventHandlingRule: unitTests.pde#L30 | Do not use global event variable mousePressed in method armMovementTest02, as armMovementTest02 is not one of the event handling methods |
  | Processing Ruleset DecentralizedEventHandlingRule: unitTests.pde#L43 | Do not use global event variable mousePressed in method armMovementTest03, as armMovementTest03 is not one of the event handling methods |
  | Processing Ruleset DecentralizedEventHandlingRule: unitTests.pde#L57 | Do not use global event variable mousePressed in method armMovementTest04, as armMovementTest04 is not one of the event handling methods |
  | build | Node.js 12 actions are deprecated. Please update the following actions to use Node.js 16: jwgmeligmeyling/pmd-github-action@master. For more information see: https://github.blog/changelog/2022-09-22-github-actions-all-actions-will-begin-running-on-node16-instead-of-node12/ |
  
- List which issues you fixed since week 11. Give a brief rationale for fixing the issue.

### Fixed Issues
The Issue that were list are given below in a list:
- Fixed the camelCase issues.
- Fixed the PascalCase issues.
- Fixed other types of variable and class naming issues.
- Fixed boolean if conditions.
- Fixed short named variables.
- Fixed some mousePressed() issues.

---

## Project Management

### Roles and Responsibilities:
 The roles that were present in our group were 

- Product Owner: Andrew Pitcairn
- Scrum Master: Tahsin Bin Sohail
- Group Members: Aditya Gutti Prakash, Rishab Prasad


  Each member had different responsibilities that they agreed upon before the sprint commenced. The responsibilities are:
  
 - Andrew Pitcairn     
   - Design the money
   - Design the face of Isaac Newton
   - Merge all the programs
   - Review Rishab's programs


- Tahsin Bin Sohail    
  - Design the body of Isaac Newton
  - Design the movement of Isaac Newton
  - Make the hand-movement of Isaac Newton user interactive
  - Merge the background and the Isaac Newton body programmes
  - Review Aditya's programs


- Aditya Gutti Prakash 
  - Design the background
  - Design the ATM
  - Make the ATM user interactive
  - Review Tahsin's programs


- Rishab Prasad        
  - Design the oscillation of money
  - Make the money oscillation user interactive
  - Review Andrew's programs

### Review Process:
  The team agreed on the review process to be "Peer Review" process. The team got dived into 2 sub-group consisting of 2 people in each sub-group. One sub-group consisted of Andrew and Rishab and the other one consisted of Aditya and Tahsin. The members of each sub-group then reviewed each other's programs and gave each other pointers on how to make the program even better.
 

### Definition of Done:
  The "Definition of Done" that we defined for our project is when all the agreed criteria, project requirements as well as our coding standards have been met. This includes meeting the design criteria, making sure the system performs as requested by the client and that it is up to our coding guideline standards that we use to implement the code. Another key aspect of 'done' is system tests have passed at 80% code coverage. 
  
The requirements provided to us are turned into user stories, which are agreed upon with the client before the program is finished. This way we have the known goals of the program and we can definitively finish each user story, ending up with a complete and finished program.
  
We also aim to remove as many bugs as possible within the contract time frame. we aim to fix the bugs in order of how critical they are to the program running. As this is an on going battle, there are bound to be bugs found after deployment. If any software breaking bugs are discovered after deployment of this software, they will be fixed immediately. 

---

## Retrospective

  The outcomes of the retrospective were very positive. Our teamwork and results were highly satisfactory to us and we learned and implemented scrum in our practice. The tasks were distributed equally and each team member came up with their solutions in due time.
  
  The roles worked really well as everyone took their task seriously and completed their tasks before the due date. Our team synergy worked very well as the team members got the hang of each other very quickly which made it easier for our goals to be accomplished. The process of implementing scrum in our project also worked in our favour as we had successful weekly scrum meetings and sprint.
  
  However, the testing part was a bit difficult for us and can certainly be improved. This is because merging the files made the components of the code a bit difficult to test and sometimes adding new features made the old tests obsolete. We hope to improve this and make our code more testable in the future.
  
  The advice that we would give to the students next year would be to focus on building a good team environment and try to implement the methodologies of scrum and agile from the start.
  
---

## Ethics

### Reference List:
[1] J David Eisenberg, "2D Transformations" [Online]. Available: https://processing.org/tutorials/transform2d , Unknown date of update, [Accessed: April 6th, 2023].

[2] D. Shiffman, "Additive Wave", [Online]. Available: https://processing.org/examples/additivewave.html , Unknown date of update , [Accessed: March 28th, 2023].

[3] The Coding Train, "5.5: The Bouncing Ball - Processing Tutorial," YouTube, Jul. 18, 2015 [Video File]. Available: https://www.youtube.com/watch?v=YIKRXl3wH8Y , [Accessed: April 9th, 2023].

[4] Geeks4Geeks, "Array Data Structure", 09 May, 2023 [Online]. Available: https://www.geeksforgeeks.org/array-data-structure/ , [Accessed: April 20th, 2023].

[5] W3Schools, "Java Arrays" [Online]. Available: https://www.w3schools.com/java/java_arrays.asp , Unknown date of update [Accessed: April 22th, 2023].

[6] lkvideorang, "Making an "avoid the falling objects game", having array problems", 2016 [Online]. Available: https://forum.processing.org/two/discussion/8439/making-an-avoid-the-falling-objects-game-having-array-problems.html, [Accessed: April 27th, 2023].
