# Hack Sprint Session 2 README

Slides: https://docs.google.com/presentation/d/1ZpuYxtzccU85ubqKlXIYiybye5_ts9PbS6-PpKvfrt0/edit?usp=sharing

Image: https://imgur.com/a/eu5Auk8

## Table of Contents

- <a href="#1">Getting Started</a>
- <a href="#11">Creating Classes for our View Controllers</a>
- 
- Coding in Swift
  - <a href="#13">CreatePostViewController</a>
  - <a href="#14">ReadPostViewController</a>
  - <a href="#15">Adding Button Actions</a>

## <a id="1">Getting Started</a>

1. Begin by creating a new project in Xcode.
2. Select "Create a new Xcode project" near the bottom left of the window.

![img](https://lh5.googleusercontent.com/Uv_0UW2wVlVMjLCC0YniMQTgR-SZEVgo27yXnlcWThcU2tvB9wDIeW4swW8Ky9C0LvOwxks0nwM3cjUWRoa_YxKu-Q1EsuSmeIRfAQqAhrJ5lln5IY9lE-8wdxwkNJAKNfHW5Y-v)

------

1. Ensure that the "iOS" tab at the top of the page is selected.
2. Double-click on "Single View App".

![img](https://lh5.googleusercontent.com/8K6MDiviiQGT4Zh34welL_CBntAvjlPDZAcGhEXWoswlfNNYY_Mxx1SPEqdgLpZF6wGVWqlUKfimvS_jXOlvPhSAmeHiZ4k76at4I3uYb_KM-TUFqRUNOE2hJvqPmcZXISCsqWaM)

------

1. Name your project "Pretty Post".
2. Pick whatever Team, Organization Name and Organization Identifier that you want.
3. Ensure that the Language field is set to "Swift".
4. Ensure that "Use Core Data" is unchecked.
5. Click "Next".
6. On the following window, select where you'd like your project's folder to be create (default location is ~/Desktop) and click "Create".

![img](https://lh5.googleusercontent.com/0LhI5jKG2WxVHKicqbBWnavePNkYdAja9X1a3YDN40B9MT691Q5wQQPzvyh5okaxyZZCfroSgesli3jTerNr2qMPbpBoVELuAI6ajD6EVy5f7ZCnndrCA-QqIKAI2h5QRL0ZDrIV)

---

## <a id="11">Creating Classes for our View Controllers</a>

1. Using the **Project Navigator** on the left side of Xcode, select the **ViewController.swift** file.
2. Change the class name from "ViewController" to "**CreatePostViewController**".

```
class CreatePostViewController: UIViewController {
	...
}
```

3. Using the Project Navigator, click on the ViewController.swift file and rename it to **CreatePostViewController.swift**.

<img src="https://lh5.googleusercontent.com/AzKfi2byxj40tC2fbfxW4gkj4H_5GUieU7rD9AZ_FIv6R06k5pYVKsQ7l607H6DcIEQS8DGkT5gB-C5LCtDAzYiYqtWnfRO1zIILOR3lJ_kbYd41EEzuq_3YJ6c0TZqNs0MbGo04" width="300px">

---

4. Now, at the top of your screen click **File** > **New** > **File**.
5. In the menu that appears, double-click "**Cocoa Touch Class**".
6. In the menu that appears, change the "Class" field to "**ReadPostViewController**".
7. Use the drop-down menu in the "Subclass of" field to select "**UIViewController**".
8. Ensure that language is set to "Swift".
9. Click Next.

<img src="https://lh6.googleusercontent.com/r6sxxJ5OP0wRg075CsBxT8rTDg5D86FZP5DnBfyhA2He99LfUuprZq_gD_5tCQVMWcesOo7dGiWVkRkKfYWUnRlQBHC62W5buQCFWZNbaB3Lcuy6ecUDkd9pP_rkp0s0ZxnyZUKT">

---

10. Click "Create".
11. Return via the **Project Navigator** to the Interface Builder by selecting **Main.storyboard**.
12. Select the View Controller.
13. Click the tab to the left of the Attributes Inspector.
14. Using the drop-down menu, set the "Class" field (first one) to **CreatePostViewController**.

<img src="https://lh4.googleusercontent.com/nPYHielQCgK2p_qgimmBBC8KbqPpMmzlSC2OfN-2y6SaQej4ZYgp6GchgjHuXsHq27Hf3QEhVT63ixpU5CItUNsAVdCbdVlfC7rWvRB4_rOnjsOmGkN_8zYRtXE15emplu_MgWtO" width="500px">

---

##<a id="xcassets">Adding Images Using XCAssets</a>

1. In the **Project Navigator** on the left, select the folder icon named **Assets.xcassets**.
2. In the left pane (the one containing the "AppIcon" entry), right click and select "New Image Set".

<img src="https://lh6.googleusercontent.com/Q_4yL6lxZfpBEQ4xr8Bm5TisttCFoFa3ViMsUX6SeSPD3zYOGM6wJxTbgTka2A9htAkzOpijw56YsrWmGJ3vmvC27D74Mg8uPnNwKtj0Sj1DM1zScYKsKv3XwqpYZiNxycowrJoQ" width="400px">

------

3. Single click our newly created **Image** and rename it to **PrettyBG**.

4. Click [here](https://imgur.com/a/eu5Auk8) and download the image.

5. From Finder/your Downloads, drag the downloaded image into the slot in **PrettyBG** labeled **1x**.

<img src="https://lh5.googleusercontent.com/v0Jm285egnClRSOAc4WnckClgojyK6OJH0F0ilcWBcIyC-d8_DMdvu5VqIkd0XmlZDpuCsGHOERpxpRF203w7rgFluPSsFvFhvWl6H0lqo3trTvxuIx6vbRdr0AxZmSrlUzT-Dn4" width="400px">

---

## Coding in Swift

### <a id="13">CreatePostViewController</a>

1. Using the Project Navigator, select the **CreatePostViewController.swift** file.

2. Declare the views that we'll need by adding the following code to the class:

```swift
class CreatePostViewController: UIViewController {
    
    let titleTextField = UITextField()
    let bodyTextView = UITextView()
    let postButton = UIButton(type: .system)
   
    ...
}
```

3. Change `viewDidLoad()` to the following:


```swift
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
    // Configure subviews
    titleTextField.font = UIFont.systemFont(ofSize: 18)
    titleTextField.placeholder = "Title"
    titleTextField.borderStyle = .roundedRect
        
    bodyTextView.font = UIFont.systemFont(ofSize: 14)
    bodyTextView.text = "Go ahead, type something!"
    bodyTextView.layer.borderWidth = 1.0
    bodyTextView.layer.borderColor = UIColor.lightGray.cgColor
    bodyTextView.layer.cornerRadius = 5.0
    
    postButton.setTitle("Post", for: .normal)

    // Add subviews
    view.addSubview(titleTextField)
    view.addSubview(bodyTextView)
    view.addSubview(postButton)
}
```

4. Add the following code underneath:

```swift
override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
        
    // Set frames
    let padding: CGFloat = 25
    titleTextField.frame = CGRect(x: padding,
                                  y: view.safeAreaInsets.top + padding,
                                  width: view.frame.width - padding * 2,
                                  height: 30)
        
    let buttonSize = postButton.intrinsicContentSize
    postButton.frame = CGRect(x: (view.frame.width - buttonSize.width) / 2,
                              y: view.frame.height - padding - buttonSize.height,
                              width: buttonSize.width,
                              height: buttonSize.height)
        
    bodyTextView.frame = CGRect(x: padding,
                                y: titleTextField.frame.maxY + padding,
                                width: view.frame.width - padding * 2,
                                height: postButton.frame.minY - titleTextField.frame.maxY - padding * 2)
}
```

**Checkpoint**: Build and run your app to see what we have!

### <a id="14">ReadPostViewController</a>

1. Using the Project Navigator, select the **ReadPostViewController.swift** file.
2. Declare the properties and views that we'll need by adding the following code to the class:

```swift
class ReadPostViewController: UIViewController {
    var titleText: String?
    var bodyText: String?
    
    let backgroundImageView = UIImageView()
    let darkView = UIView()
    let titleLabel = UILabel()
    let bodyTextView = UITextView()
    let backButton = UIButton(type: .system)
    
    ...
}
```

3. Change `viewDidLoad()` to the following:

```swift
override func viewDidLoad() {
    super.viewDidLoad()
        
    // Configure subviews
    backgroundImageView.image = UIImage(named: "PrettyBG")
    backgroundImageView.contentMode = .scaleAspectFill
        
    darkView.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
    titleLabel.font = UIFont.systemFont(ofSize: 30)
    titleLabel.textColor = UIColor.white
    if let text = titleText {
        titleLabel.text = text
    } else {
        titleLabel.text = "No Title"
    }
        
    bodyTextView.font = UIFont.systemFont(ofSize: 14)
    bodyTextView.textColor = UIColor.white
    bodyTextView.textAlignment = .center
    bodyTextView.backgroundColor = .clear
    bodyTextView.isEditable = false
    if let text = bodyText {
        bodyTextView.text = text
    } else {
        bodyTextView.text = "This post is empty."
    }
        
    backButton.setTitle("Back", for: .normal)
    backButton.addTarget(self, action: #selector(tappedBack), for: .touchUpInside)
        
    // Add subviews
    view.addSubview(backgroundImageView)
    view.addSubview(darkView)
    view.addSubview(titleLabel)
    view.addSubview(bodyTextView)
    view.addSubview(backButton)
}
```

4. Add the following code underneath:

```swift
override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
        
    // Set frames
    let padding: CGFloat = 20
    backgroundImageView.frame = view.frame
        
    darkView.frame = CGRect(x: padding,
    						y: view.safeAreaInsets.top + padding,
                            width: view.frame.width - padding * 2,
                            height: view.frame.height - view.safeAreaInsets.top - padding * 2)
        
    let labelSize = titleLabel.intrinsicContentSize
    titleLabel.frame = CGRect(x: (view.frame.width - labelSize.width) / 2,
                              y: darkView.frame.minY + padding,
                              width: labelSize.width,
                              height: labelSize.height)
        
    let backButtonSize = backButton.intrinsicContentSize
    backButton.frame = CGRect(x: (view.frame.width - backButtonSize.width) / 2,
                              y: darkView.frame.maxY - padding - backButtonSize.height,
                              width: backButtonSize.width,
                              height: backButtonSize.height)
        
    let textViewWidth = darkView.frame.width - padding * 2
    let textViewHeight = backButton.frame.minY - titleLabel.frame.maxY - padding * 2
    bodyTextView.frame = CGRect(x: (view.frame.width - textViewWidth) / 2,
                                y: titleLabel.frame.maxY + padding,
                                width: textViewWidth,
                                height: textViewHeight)
}
```

**Checkpoint**: Build and run your app to see what we have!

### <a id="15">Adding Button Actions</a>

1. Using the Project Navigator, select the **CreatePostViewController.swift** file.
2. Add the following function to the class (at the bottom):

```swift
@objc func tappedPost() {
    let readPostVC = ReadPostViewController()
        
    if
    	let text = titleTextField.text,
    	!text.isEmpty
    {
        readPostVC.titleText = titleTextField.text
    }
        
    if
        let text = bodyTextView.text,
        !text.isEmpty
    {
        readPostVC.bodyText = bodyTextView.text
    }
        
    present(readPostVC, animated: true, completion: nil)
}
```

3. Add the following code to `viewDidLoad()`:

```swift
...
bodyTextView.layer.cornerRadius = 5.0
        
postButton.setTitle("Post", for: .normal)
// Add this "addTarget" line! 
postButton.addTarget(self, action: #selector(tappedPost), for: .touchUpInside)

// Add subviews
...
```

4. Using the Project Navigator, select the **ReadPostViewController.swift** file.
5. Add the following function to the class (at the bottom):

```swift
@objc func tappedBack() {
    dismiss(animated: true, completion: nil)
}
```

6. Add the following code to `viewDidLoad()`:

```swift
...
} else {
    bodyTextView.text = "This post is empty."
}
        
backButton.setTitle("Back", for: .normal)
// Add this "addTarget line!
backButton.addTarget(self, action: #selector(tappedBack), for: .touchUpInside)
        
// Add subviews
...
```

**Checkpoint**: Build and run your app. Congratulations, you've created your first multi-view application!