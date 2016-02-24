# GroupMessage
iOS project to do send messages to a small group selected from contacts. This app is smart to filter and show only the contacts with mobile phone numbers.

The intent of this project is for kids to get started on Apps development in Xcode environment. 
##Getting Started
1. Beginners get familiarized with Swift and fundamentals of App development.  https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/ will provide a very good turorial. 
2. Get to know about predicate programming guide - https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/Predicates/AdditionalChapters/Introduction.html
3. Familiarize with https://developer.apple.com/library/prerelease/mac/documentation/Contacts/Reference/CNContact_Class/index.html

## Instructions
1. Mac OS with Yosemite or El Capitan is needed to build and run this application
2. Validate if you have the Xcode installed. Pressing Command space bar and type  Atleast Xcode 7.2 is needed. The sample code for this project was written using Xcode version 7.2.1.  If Xcode is not installed, download and install it from Mac app store https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12 
3. Download the project from https://github.com/psenthil/groupmessage/archive/master.zip . Alternatively you can download the code by opening up Terminal app and use git clone  https://github.com/psenthil/groupmessage.git to download in your favorite folder. 
4. Locate GroupMessage.xcodeproj from the downloaded folder location.
5. Double click on the GroupMessage.xcodeproj file and it should open up the project in Xcode
6. Once opened, make sure to select a simulator device and click on Play button  as shown ![screenshot](https://github.com/psenthil/groupmessage/blob/master/xcode_project_view.png)
7. It should start the app after installing in the simulator. First run might take a bit longer and the subsequent runs will be faster. It should show following screen
 ![first screen](https://github.com/psenthil/groupmessage/blob/master/screen1.png)
8. Type in the message you wanted to send to your group of friends in the message box and clicking  on "Select Friends" button will show the following screen ![Second screen](https://github.com/psenthil/groupmessage/blob/master/selection.png)
9. Important Note: iOS simulators cannot send messages. You will see the following screen ![Simulator screen](https://github.com/psenthil/groupmessage/blob/master/error.png) 
10. Connect a  the iPhone or iPad device and select the device to install app. This might also take a bit longer for the first time. Once installed follow above steps 8 to 10
10. Select few friends to send the message. Clicking on "Done" button will open up the message view with your selected friends and message populated as below ![Message screen](https://github.com/psenthil/groupmessage/blob/master/message.png)
11. Going back to Xcode and clicking on the ViewController.swift will provide the glimpse of the program ![screenshot](https://github.com/psenthil/groupmessage/blob/master/program.png)
12. Also Main.storyboard will show how the UI components are laid out
13. Have fun and enjoy making changes and playing with it. 

##Additional Resources
1. Swift - https://developer.apple.com/swift/resources/
2. http://www.appcoda.com/ios-contacts-framework/
3. http://devstreaming.apple.com/videos/wwdc/2015/223rmo6dv9hxh/223/223_introducing_the_contacts_framework_for_ios_and_os_x.pdf

