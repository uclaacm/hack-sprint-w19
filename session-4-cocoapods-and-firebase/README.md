# Hack Sprint Session 4 README

**Slides**: https://docs.google.com/presentation/d/1iEuiUNEiflwrfPvlXO24LsyUL4RqdT2c5sE9tm1wC3s/edit?usp=sharing

## Table of Contents

- Getting Started
  - <a href="#1">Downloading the Code</a>
- <a href="#2">Setting Up CocoaPods</a>
  - <a href="#3">Adding Firebase via CocoaPods</a>
- Coding in Swift
  - <a href="#4">Configuring Firebase</a>
  - <a href="#5">Observing Messages in our Database</a>
  - <a href="#6">Sending Messages</a>

## Getting Started

### <a id="1">Downloading the Code</a>

1. We're going to provide some boilerplate code for this session's project. Navigate to this [GitHub repo](https://github.com/uclaacm/hack-sprint-w19/tree/master/session-3-protocols-delegates-and-uikit).

   The boilerplate code contains:

   - A file **ViewController.swift** that serves as the code for the main View Controller as a whole.
     - Our View Controller has a UITableView for displaying messages, as well as a UITextField and UIButton for sending messages.
     - It also contains a helper function named `scrollTableViewToBottom()` that will scroll our table view to the bottom.
   - A file **Main.storyboard** which contains a UIViewController of type **ViewController**.
   - A file **GoogleService-Info.plist** that contains configuration data for Firebase. This file was downloaded from the Firebase website when we set up our app. The entire (and short) process to setup a Firebase iOS project is well-documented [here](https://firebase.google.com/docs/ios/setup).

2. Click on the "Clone or Download" button on the right side of the page and selected "Download ZIP."

<img src="https://lh5.googleusercontent.com/-Hhsf-gWh0wyPZbrFxIw1dk0znQOG4ypddvTfEQNLjln-YiEavBRzo2RYWt1MT-1VpMklleU3i58A1_OQwz-QvbiPLAwk7HxPZ0si72lS2loNSRO7fqOdHKS8jTaaQJWkiXqsx8O" width="400px">

------

## <a id="2">Setting Up CocoaPods</a>

1. Open your Terminal.

2. If you haven't already installed CocoaPods, type the command:

   ```shell
   sudo gem install cocoapods
   ```

3. After the installation completes, navigate to the folder downloaded earlier using the `cd` command. If the folder is still in your Downloads folder, the following command should work:

   ```
   cd ~/Downloads/hack-sprint-w19-master
   ```

4. Once in the folder, `cd` into the directory named session-4-cocoapods-and-firebase:

   ```
   cd session-4-cocoapods-and-firebase
   ```

5. Finally, `cd` into the directory named UsChatStarter

   ```
   cd UsChatStarter
   ```

---

### <a id="3">Adding Firebase via CocoaPods</a>

1. To add CocoaPods to our project, all we have to do is run the following command:

   ```
   pod init
   ```

   This will add a file named "Podfile" to the directory, and make the necessary changes to our project.

2. Using your favorite text editor (i.e. anything but Vim), open the **Podfile** and change its contents to the following:

   ```ruby
   # Uncomment the next line to define a global platform for your project
   # platform :ios, '9.0'
   
   target 'UsChat' do
     # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
     use_frameworks!
   
     # Pods for UsChat
     pod 'Firebase/Core'
     pod 'Firebase/Database'
   end
   ```

3. Return to your Terminal, and run the command:

   ```
   pod install
   ```

   This generates a file named **UsChat.xcworkspace**. We're ready to start coding!

---

## Coding in Swift

### <a id="4">Configuring Firebase</a>

1. Open the project by double-clicking the file **UsChat.xcworkspace** in Finder, or if you're still in the Terminal simply run the command:

   ```
   open UsChat.xcworkspace
   ```

2. Using the Project Navigator on the left of the screen, navigate to the **AppDelegate.swift** file.

3. At the top of the file, add the line:

   ```swift
   import Firebase
   ```

4. Add the following code to the `application(_:didFinishLaunchingWithOptions)` function:

   ```swift
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       // Override point for customization after application launch.
       FirebaseApp.configure()
       return true
   }
   ```

---

### <a id="5">Observing Messages in our Database</a>

1. Using the Project Navigator on the left of the screen, navigate to the **ViewController.swift** file.

2. Find the skeleton function `observeMessages()` and fill it out with the following code:

   ```swift
   Database.database().reference().child("messages").observe(.childAdded) { (snapshot) in
       if let text = snapshot.value as? String {
           self.messages.append(text)
           self.messageTableView.reloadData()
                   
           // Scroll to bottom
           self.scrollTableViewToBottom()
       }
   }
   ```

Build and run your project. You should be able to see messages loaded!

---

### <a id="6">Sending Messages</a>

1. Find the skeleton function `sendMessage()` and fill it out with the following code:

   ```swift
   if let message = chatTextField.text {
       chatTextField.text = ""
       Database
           .database()
           .reference()
           .child("messages")
           .childByAutoId()
           .setValue(message)
   }
   ```

Build and run your project. Congratulations, you have a fully functioning messaging app!