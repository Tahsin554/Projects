# Interim report

## Introduction

We intend to create an Isaac Newton model that when clicked shoots money in an oscillating motion. We split the programs into modelling Isaac Newton and oscillating money separately. The background contains a tree and apples that continually drop to the bottom of the screen and reset. The money that shoots out of the Newton model depends on which corner the user clicks on.

## User Stories and Requirements

### User Requirements:

#### Functional:
- User needs to be able to click Isaac Newton.
- THe money needs to go in a corresponding direction when User clicks.

#### Non-Functional:
- Isaac Newton needs to move across the screen.
- When clicked, Isaac Newton should produce money.
- Money should move in an oscillating motion.

 #### User story 1:
- User should find the interface simplistic and intuitive.
	- As a user, the interface should not be cluttered so it is easy to understand.
	
 #### User Story 2:
- The user should be happy with the current health and safety warnings displayed.
	- As a user, i should be displayed health warnings of flashing objects, which will make it safe for me to use.
		
 #### User Story 3:
- The user should be satisfied with the design of the program.
	- As a user, the design should not offend me, so that the game is playable.

 #### User Story 4:
- The user should be able to see the objects in the program.
	- As a user, i should be able to see Isaac Newton on the screen, which shows the program is running.

 #### User Story 5:
- The user should be able to click on Isaac Newton and money should come out of him oscillating.
	- As the user, when i click Isaac Newton, money should come out of him and it should oscillate. 
	
 #### User Story 6:
- Depending on where the user clicks on the screen, it will determin what direction the money goes
	- As the user, when i click on the screen, the money will go in that direction relative to the center of the screen.

## User Acceptance Tests
### Test ID: UITest#1
- Test description: 
    - check if the users finds the interface is intuitive and simplistic
- Test steps: 
    - Prompt 5 users to interact with the programs given adjustable parameters.
    - Gauge the users thoughts on a scale of 1 to 10 for how intuitive the interface is.
    - Gather user feedback for any suggestions or adjustments to the interface.
- Test environment:
	- Application Launcher: Processing 4
	- Operating System: Windows 10
- Expected outcome: 
    - At least an average rating above 8 with nominal feedback suggestions


### Test ID: SafetyAndAccessibiltyTest#1
- Test description: 
    - check if the users is satisfied with the present health and safety warnings along with the accessability options available
- Test steps: 
    - Prompt 5 users to gauge the prelaunch warning for epilepsy and siezure warnings if they are satisfied with the clarity of the message on a scale of 1 to 10
    - Prompt the 5 users to interact with available options for accessability
    - Gather user feedback for any suggestions or adjustments to the prelaunch warning and available accessability options
- Test environment:
    - Application Launcher: Processing 4
    - Operating System: Windows 10
- Expected outcome: 
    - At least more than 1 addition to the accessability options and nominal commentary for the clarity of the warning message during prelaunch.


### Test ID: DesignTest#1
- Test description: 
    - check if the users are satisfied with the design of the objects in the program
- Test steps:
    - Prompt 5 users to interact with the program and halt the animation process with the stop button to view the objects.
    - Gauge the users thoughts on a scale of 1 to 10 for how much the objects resembles against perceptions of the objects.
    - Gather user feedback for any suggestions or adjustments to the interface.
- Test environment:
    - Application Launcher: Processing 4
    - Operating System: Windows 10
- Expected outcome: 
    - At least anb average of 8 on satisfaction for design resemblance and nominal suggestions to adjustments to the design of the objects.


### Test ID: FeatureTest#1
- Test description: 
    - check if the users are satisfied with the feature set available in the program given the adjustable parameters and interactive actions.
- Test steps:
    - Prompt 5 users to interact with the program.
    - Gauge the users thoughts on whether the program is feature rich, lacking features in quantity or satisfactory in its current state.
    - Gather user feedback for any suggestions or adjustments to the available feature sets whether it be adding, withdrawing or changing the pre release set.
- Test environment:
    - Application Launcher: Processing 4
    - Operating System: Windows 10
- Expected outcome: 
    - At least 2 significant or 4 nominal adjustment thoughts put foward by user feedback
	
	
### Test ID: I-N Motion#1
- Test description:
    - Check that Isaac Newton moves in the correct motion while the user clicks on him.
- Test steps:
    - Prompt the user to start the program.
    - Check Isaac Newton is moving before clicking on him.
    - Have the userClick on Isaac Newton and check he keeps moving on the correct path.
    - Close the program.
- Test environment:
    - Application Launcher: Processing 4
    - Operating System: Windows 10
- Expected outcome: 
    - For Isaac Newton to keep moving in the correct direction while being clicked.
	

### Test ID:  MoneyMotion#1
- Test description: 
    - Check that the money comes out of Isaac Newton when the user has clicked on him and oscillates as it leaves.
- Test steps: 
    - Prompt the user to start the program
    - Have the user click on Isaac Newton
    - Check the money comes out of Isaac Newton when clicked without delay.
- Test environment:
    - Application Launcher: Processing 4
    - Operating System: Windows 10
- Expected outcome:
    - money to come out of Isaac Newton when clicked without delay.
	
	
### Test ID:  MoneyDirection#1
- Test description:
    - Check that when Isaac Newton is clicked by the user, the money moves in the correct direction relative to where the user clicked.
- Test steps:
    - Prompt the user to start the program
    - Have the user click on each corner of Isaac Newton
    - Check what direction the money comes out
- Test environment:
    - Application Launcher: Processing 4
    - Operating System: Windows 10
- Expected outcome: 
    - Money travels to the corner where the mouse is located.

## Coding Guidelines
 - Using simple, but descriptive variables. eg: moneyX, moneyY
 - no single or double letter names (a1, G3)
 - keeping variables together at the top of the prorgam
 - following the camel case naming convention for variables
 - using PascalCase naming convention for classes
 - Keeping brackets, indentations and spacing organised
 - no repeated code eg multiple fills
 - comments on what is occouring with the code, but not for obvious things like background colour
 - Don't use comments for poor naming
 
## Project Management
 ### Tasks and Issues
  - [x] Update ReadMe

    Status: Ongoing

    Assigned to: Tahsin Bin Sohail

    Task Reviewed by: Aditya Gutti Prakash (Peer Review)

    Issues inside the task: Update the Title and Topic Section in the ReadMe file (Closed)

    (We are constantly updating the ReadMe as we progress in our project)
  - [ ] Update README - User manual And Instructions section (also an Issue)

    Status: Ongoing

    Assigned to: Andrew Pitcairn

    Task Reviewed by: Rishab Prasad (Peer Review)

    (Updating the user manual and instructions according to our Project Milestone)
 - [ ] Design and create Issac Newton (also an Isuue)

   Status: Ongoing

   Assigned to: Tahsin Bin Sohail and Aditya Gutti Prakash

   Code and Task Reviewed by: Andrew Pitcairn and Rishab Prasad (Peer Review)

   Issues inside the task:

                           - Design a sketch or image for Issac Newton
                           - Create a program that shows Issac Newton

   (Creating and properly designing a proper model of Issac Newton)
 - [ ] Design and create the oscillating money program

   Status: Ongoing

   Assigned to: Andrew Pitcairn and Rishab Prasad

   Code and Task Reviewed by: Tahsin Bin Sohail and Aditya Gutti Prakash (Peer Review)

   Issues inside the task: Sketch or create an image of money (Closed)

   (Creating and properly designing an oscillating money program which interacts with our Issac Newton Program)
 - [x] Update Interim Report - Fill out introduction (also an issue)

   Status: Done

   Assigned to: Rishab Prasad

   Task Reviewed by: Andrew Pitcairn (Peer Review)

   (Giving a proper introduction to our Interim Report)
 - [x] Update Interim Report - List all user stories and requirements for the game (also an issue)

   Status: Done

   Assigned to: Andrew Pitcairn

   Task Reviewed by: Rishab Prasad (Peer Review)

   (List all the user stories and requirements needed for our 'Issac Newton Oscillating Money' program)
 - [x] Update Interim Report - User acceptance tests (also an issue)

   Status: Done

   Assigned to: Aditya Gutti Prakash

   Task Reviewed by: Tahsin Bin Sohail (Peer Review)

   (List all the possible tests we are required to do in order to meet our requirements according to the user stories)
 - [x] Update Interim Report - Update coding guidelines (also an issue)

   Status: Done

   Assigned to: Andrew Pitcairn

   Task Reviewed by: Rishab Prasad (Peer Review)

   (List all the coding guidelines required for the project)
 - [ ] Update Interim Report - Update Project Mangement section (also an issue)

   Status: In Review

   Assigned to: Tahsin Bin Sohail

   Task Reviewed by: Aditya Gutti Prakash (Peer Review)

   (Updating our Project Management section to include all the tasks and issues)
