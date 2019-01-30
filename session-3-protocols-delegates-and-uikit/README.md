# Hack Sprint Session 3 README

**Slides**: https://docs.google.com/presentation/d/1Mhj2pIHINDBj-jBvQNyKM6AApOk-yffR7wGLuSP4PJM/edit?usp=sharing

## Table of Contents

- Getting Started
  - <a href="#1">Downloading the Code</a>
- <a href="#2">Designing the UITableViewController</a>
  - <a href="#3">Designing the Individual Cells</a>
  - <a href="#4">Setting the Attributes and Constraints</a>
  - <a href="#5">Linking the Image View and the Label </a>
- Coding in Swift
  - <a href="#6">Creating a Pokemon Class</a>
  - <a href="#7">Configuring the UITableViewController</a>
  - <a href="#8">Configuring the Cells</a>
- <a href="#9">Bonus: Animating a Modal View</a>
- <a href="#10">Challenge: Try to Group Pokemon in Sections by Type</a>

## Getting Started

### <a id="1">Downloading the Code</a>

1. We're going to provide some boilerplate code for this session's project. Navigate to this [GitHub repo](https://github.com/acm-hacksprint-w18/session-3).

   The boilerplate code contains:

   - A file **JSONHelperFunctions.swift** that contains functions to parse a JSON file and extra data about each Pokemon.
   - A file **PokemonTableViewController.swift** with function skeletons (to be filled out) that serves as the code for the main Table View Controller as a whole.
     - This file contains a helper function named `loadImageFromURL()` that takes in a URL and a UIImageView and [asynchronously](https://en.wikipedia.org/wiki/Asynchrony_(computer_programming)) fetches the image at the URL and sets it as the UIImageView's image.
   - A file **PokemonTableViewCell.swift** which contains an empty class that serves as the code for each individual cell in the Table View.
   - A file **Main.storyboard** which contains a UITableViewController of type **PokemonTableViewController**, whose table cells are of type **PokemonTableViewCell**.
   - A Pokeball image located in **Assets.xcassets**.
   - A file **pokedex.json** containing data about each Pokemon in [JSON format](https://www.tutorialspoint.com/json/json_overview.htm).
   - A file **info.plist** that has been updated to allow us to make requests to URLs that begin with just http (as opposed to https).

2. Click on the "Clone or Download" button on the right side of the page and selected "Download ZIP."

<img src="https://lh5.googleusercontent.com/-Hhsf-gWh0wyPZbrFxIw1dk0znQOG4ypddvTfEQNLjln-YiEavBRzo2RYWt1MT-1VpMklleU3i58A1_OQwz-QvbiPLAwk7HxPZ0si72lS2loNSRO7fqOdHKS8jTaaQJWkiXqsx8O" width="400px">

---

3. Open the folder you just downloaded; it should be called **session-3-master**.
4. Open the folder PrettyGoodPokedex**Starter**.
5. Double-click the file **PrettyGoodPokedex.xcodeproj** to open the project in Xcode.

## <a id="2">Designing the UITableViewController</a>

1. Using the **Project Navigator** on the left side of Xcode, open the Interface Builder by clicking on the **Main.storyboard** file.
2. Click on the **Table View** (i.e. the gray area, not the Prototype Cell). 
3. On the right side of the screen, open the **Size Inspector** by clicking the ruler icon, ensuring that it has a header that says **Table View**. If it says  **View Controller**, click on the Table View again and it should change.

<img src="https://lh3.googleusercontent.com/KCuwZMaWJ0iAurDpgjtTyjt9tvienaf_P3hXTrzL06EMnmhBl67JIy1_D-rvwzYHuWQoM9ATw3O4NWN-qHYZbcbEpvbmF_jd1aRG_Ajr13sLHYpsNOWY6RLJsR9VP9Ntg1KrHtD4" width="500px">

---

4. Locate the **Row Height** field at the top of the Size Inspector and set it to **50**. The "Automatic" box should become unchecked.

<img src="https://lh5.googleusercontent.com/lqOWLVjerDLNRPTkZ4DC5akdL3Ua82H4rvBOXIeVpcyA2eQUSJwCS4OYKizFHKAJHc8IpeRzwfiqS4ZEYprSJyCXvmU58wVc8I8Zhh5ht7YI5Y40Wr3Xi94S0WMHxgkBAMDrdPs1" width="300px">

---

### <a id="3">Designing the Individual Cells</a>

1. It may be helpful to zoom in, using pinch-drag, for this next part.
2. In the bottom right of the screen, ensuring that the third tab is selected, scroll until you find the **Image View** element.

<img src="https://lh5.googleusercontent.com/gurPSXOmGZEhfKtmhweauRrM8Yo9pWrownrJt97A8Suw74S_OacDfpj6CM84gpCFc5OXUlX8Vlr-wKfFq3JmpflrXfggIyYyI2tFAZii6NO1bcl-19bxBmhZy3bKjSnfcxLXAVVz" width="300px">

---

3. Drag an Image View **into the Prototype Cell** (i.e. the small white region at the top of the View Controller) and arrange it similar to the image below:

<img src="https://lh4.googleusercontent.com/9j3Wp09ZsddrW3ly7AV3a9FJvMjMq_ZshyxhlQhPEEUrbdi3Dg_7R31sWdLh5mTDMEQPWfJRXH6rS9JXsGrBHzzQMy1SLwjv2t8mC8fvowoyuCSMXPiME7wYbGfr_lVHGjAYGLU2" width="400px">

---

4. Returning to the bottom right side of Xcode, scroll up until you find the **Label** element.

<img src="https://lh4.googleusercontent.com/W_2IZyuZwL23rUJZ7pLXzu6ClrDU1QcHNNLYzdj1mZ3sTv8e7MKJIWLWuXSpeZeDuTYI8FpsTJyKSHXAlfP6zbF_e9MKBtbBcoj80plSTsBR56tyHnr2TsCgPXaeaeNM7OpA0Klz" width="300px">

---

5. Drag a Label **into the Prototype Cell** and arrange it similar to the image below:

<img src="https://lh5.googleusercontent.com/G6oKbhNbDnnTKEJTFAyK1XfaZfpRpfih0FNRwu2W-HkOJ9TKYJG0CuWe9e0Ym-dWCbMDh0Ii7LDBiGZyQpRLev9nZNI2fr9MeDJDEqSQGsCFuY6xd_yRJjyseQxUL12ZwkdFU6DU" width="400px">

---

### <a id="4">Setting Attributes and Constraints</a>

1. Select the **Image View** again.
2. On the right side of the screen, open the **Attributes Inspector** by clicking on the icon to the left of the ruler icon.
3. Locate the **Image** field at the top of the Inspector and use the drop-down menu to change it to the Pokeball image.

<img src="https://lh3.googleusercontent.com/KJ378vj0V-JdDOB_DIh9w9Qp65vdWrS2O_0n7Ny4ppkaBVSowygcCx49LPDjqnU0vhUXMfK4q9wIoH5RKp-MKSkiXhyXYquPjXGkCQ8HNGWeQhLUjoEsWNoI32CYH4Wb56mM-mcZ" width="400px">

---

4. With the Image View still selected, click the "Add New Constraints" button near the bottom right of the screen.
5. Set the top, left, and bottom margins to **0**, and set the right margin to **10**. The red lines should now be solid instead of dashed.
6. Set the Width to **50**. The box next to "Width" should now be checked.
7. Click "Add 4 Constraints".

<img src="https://lh3.googleusercontent.com/8pFauufrtPKDnPRLOm_mmDb0QJ7MC4QSvdEtebYfraYnCI1ySYqFWYUfppHGifGwn9rghMHGKbWvfdViFKw0tq-lboHB_rhbA7MjIz-ZOy4wWsmkduhLQK_7zj2VpFCX3M4tBEjM" width="400px">

---

8. Select the **Label**.
9. Click on the button to the left of the "Add New Constraints" button.
10. Check the "Vertically in Container" box.
11. Click "Add 1 Constraint".

<img src="https://lh4.googleusercontent.com/1n-Hd3UcHHcOVhuyeF0tf7vpbB4zfrABiwwjc1Hlrh42_4hYqvso5lIwvQlJxtLAhvhDlAozsX2Blugi3kKQ71kQtoGV4BH8KnLSdXK4XQKvamdOsGXWDc_zYziT_SBK6No4mShd" width="400px">

---

### <a id="5">Linking the Image View and Label</a>

We're going to add IBOutlets manually without the use of the Assistant editor.

1. Using the Project Navigator on the left side of Xcode, select **PokemonTableViewCell.swift**.

2. Inside the class declaration, check that the following code is there:

   ```
   @IBOutlet var pokemonImageView: UIImageView!
   @IBOutlet var nameLabel: UILabel!
   ```

<img src="https://lh4.googleusercontent.com/gVKRibvDgyLPyFFxQgicDRzWgPjEikHZNcRJESossf0exHcUpRXZObExlqYCZRrE3LCS02m4n9iMEWybhLDq5v6kyl7l7nnMdgYAxa0XIViQF5gu-MBEwi6gKG3A9PzD_mFPVDaR" width="300px">

---

3. Return to the Interface Builder by selecting **Main.storyboard** in the Project Navigator.
4. Click on the **Prototype Cell** (white area containing the UI elements we just dragged in). You can check that you've selected the right object by opening either the Attributes Inspector or Size Inspector and verifying that the top header says **Table View Cell**.
5. Open the **Connections Inspector** by clicking on the arrow icon to the right of the ruler icon.
6. Locate **pokemonImageView** and **nameLabel** in the Outlets section. If you do not see them, you may need to go back into PokemonTableViewCell.swift and save the file (cmd+s).

<img src="https://lh4.googleusercontent.com/42BRfZxNkgnteP-gpO9-fromXcVBV0khMWGx56rXo00FeV_NUryNxBQhu2uYLVtw8YhXOXhMTCO9HF8NbO6dE5_gzKqwS4bySVqdI6G6DF-8QILC9t-mK7h0URdxjOFsgVhzIfKM" width="300px">

---

7. If you hover over the circle to the right of **pokemonImageView** you should see a plus sign appear within it. Click on the circle and drag to the Image View (with the Pokeball) that we added earlier.
8. Click on the circle to the right of **nameLabel** and drag to the Label that we added earlier.
9. If you erroneously connect to the wrong elements, simply tap the "x" that appears in the outlet (seen below):

<img src="https://lh4.googleusercontent.com/nYms_eRJpEJxWfTm0wmS3693XUpBkb4lflaCWsLJlQm5MXiekRS1l-PWe1oGE27YDzvyElSa9XhpZsE3f5tKfz7HdM_-SwejGHOVZOM3QfpnzEsZ1xSNtTysqRHG-XNUfENymKi0" width="300px">

---

We're all set to begin coding!

## Coding in Swift

### <a id="6">Creating a Pokemon Class</a>

We're going to create a custom Pokemon class that encapsulates all of the data that we need to know about a Pokemon.

1. At the top of your screen, select File > New > File.

<img src="https://lh3.googleusercontent.com/aAqOJ9DS1E9NyDdWWEo3i0pjF4TR5jDPRU2c0GycNQu-nsU32IW22zFwz3dLVrNezDGbtqsyHM7P3F4hEAlbWTDxVgys8adjD0rAN4qs-z9DX7huBbic6xyBmsXh_xWtW364UEaQ" width="400px">

---

2. Double click on "Swift File".
3. Name it "**Pokemon**" and click Create. You should now be looking at a new file named **Pokemon.swift**.

<img src="https://lh5.googleusercontent.com/d2hl1c98gH2fjx4xA_lesoguEhDPDoH8bpa8bKrksEgVSu4w7-L3KE1kaRD1HVRkQNBR59Uf-fwqCRaFBL0kwCdUfZTH3m7GBkCa9QtzWSyyrBT-gJB4vcNauw_ElkSZKdgFxZ1x" width="500px">

---

4. Create a Pokemon class by adding the following code to the file:

   ```
   class Pokemon {
       
       var name: String
       var imageURL: URL
       var type: String
       var weight: String
       
   }
   ```

5. Add an initializer inside Pokemon class, below all of the properties we just declared:

   ```
   init(name: String, imageURL: String, type: String, weight: String) {
           self.name = name
           self.imageURL = URL(string: imageURL)!
           self.type = type
           self.weight = weight
   }
   ```

**Checkpoint**: You should now be able to build and run your app. You won't see any cells though; let's add those next!

### <a id="7">Configuring the UITableViewController</a>

1. Return to the Project Navigator and click on the **PokemonTableViewController.swift** file.

2. Add a `pokemonArray` property above all of the function declarations, which is initialized to an empty array of Pokemon objects. This array will be used to store all of the Pokemon data.

   ```
   var pokemonArray = [Pokemon]()
   ```

3. Add the following code to `viewDidLoad()`:

   ```
   pokemonArray = getPokemon()
   ```

4. Our Table View will have only one section, so change the `numberOfSections(in:)` function to return 1:

   ```
   override func numberOfSections(in tableView: UITableView) -> Int {
           return 1
   }
   ```

5. The number of cells in our Table View should be equal to the number of Pokemon we have, so change the `tableView(_:numberOfRowsInSection:)` function:

   ```
   override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return pokemonArray.count
   }
   ```

### <a id="8">Configuring the Cells</a>

Now for the most complex function regarding UITableViews. The `tableView(_:cellForRowAt:)` function returns the UITableViewCell object that should be shown at a given row:

1. Return to the Interface Builder by selecting the **Main.storyboard** file via the Project Navigator.
2. Click on the **Prototype Cell** and open the Attributes Inspector by clicking on the icon to the left of the ruler, ensuring that the header says **Table View Cell**.
3. Locate the **Identifier** field two rows from the top and give it a value of "PokemonCell".
4. Press Enter.

<img src="https://lh5.googleusercontent.com/80zqvYbbW0kNS4fU1c-PlFFnpztLvIlqUNDt1CC0xLL_0oEg0fvMx_RzPKEYDDADrgPpW9ou3in7yWRqWm7nfM1tch9B5cPMFObsJ6ou3oXz_CAeHxwhYYmu0dwAUOUKAZ60mi3d" width="500px">

---

5. Return to **PokemonTableViewController** via the Project Navigator.

6. Replace `tableView(_:cellForRowAt:)` with the following code:

   ```
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
   	guard let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonCell") as? PokemonTableViewCell else {
   		fatalError("Cell is not of type PokemonTableViewCell")
   	}
           
       let pokemon = pokemonArray[indexPath.row]
           
       cell.pokemonImageView.image = UIImage(named: "Pokeball")
   	loadImageFromURL(pokemon.imageURL, into: cell.pokemonImageView)
       cell.nameLabel.text = pokemon.name
           
       return cell
       
   }
   ```

**Checkpoint**: Build and run your app to see all of the Pokemon!

## <a id="9">Animating a Modal View</a>

1. Declare a new property just underneath `pokemonArray`:

```
var pokemonArray = [Pokemon]()
var modalView: UIView? = nil
```

2. Add the following code to the class:

```
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // Get the Pokemon object
        let pokemon = pokemonArray[indexPath.row]
        
        // Size of the screen
        let screen = UIScreen.main.bounds
        
        // Create a 300x200 modal view with a light gray background color. Place it in the center
        // of the screen.
        let newModalView = UIView()
        newModalView.frame.size = CGSize(width: 300, height: 200)
        newModalView.center = CGPoint(x: screen.width/2, y: screen.height/2)
        newModalView.backgroundColor = UIColor.lightGray
        
        // Create a UILabel whose text is "Type: pokemon.type". Call sizeToFit() to automatically
        // size the UILabel. Vertically center it within the modal view but set it's centerY to
        // be the top fourth of the modal View.
        let typeLabel = UILabel()
        typeLabel.text = "Type: " + pokemon.type
        typeLabel.sizeToFit()
        typeLabel.center = CGPoint(x: newModalView.center.x, y: newModalView.frame.height * 0.25)
        
        // Create a UILabel whose text is "Weight: pokemon.weight". Call sizeToFit() to
        // automatically size it. Vertically center it within the modal view but set it's
        // centerY to be the bottom fourth of the modal View.
        let weightLabel = UILabel()
        weightLabel.text = "Weight: " + pokemon.weight
        weightLabel.sizeToFit()
        weightLabel.center = CGPoint(x: newModalView.center.x, y: newModalView.frame.height * 0.75)
        
        // Create a UIButton that has "X" as its title and call sizeToFit() to automatically
        // size it. Set it's center to be the top left corner of the modal view. When the user
        // taps and releases on the button, perform the selector (i.e. function) closeModalView()
        // which is declared below.
        let closeButton = UIButton()
        closeButton.setTitle("X", for: .normal)
        closeButton.sizeToFit()
        closeButton.center = CGPoint(x: 20, y: 20)
        closeButton.addTarget(self, action: #selector(closeModalView), for: .touchUpInside)
        
        // Add the two labels and the close button to the modal view.
        newModalView.addSubview(typeLabel)
        newModalView.addSubview(weightLabel)
        newModalView.addSubview(closeButton)
        
        // Set the modal view's transparency to 0 (hidden) and add it to the tableView.
        newModalView.alpha = 0
        self.tableView.superview?.addSubview(newModalView)
        
        // Hold on to a reference of the modal view we just created so we can refer to/access it
        // in another function
        modalView = newModalView
        
        // Use the UIView.animate function to perform animations; inside the animations
        // parameter you pass in a block of code that contains what you want the final state
        // of the objects to be after the animation. This code reads, in a duration of 0.25s
        // linearly change the value of newModalView.alpha from whatever it currently is (in
        // our case, 0) to 1.
        UIView.animate(withDuration: 0.25, animations: {
            newModalView.alpha = 1
        })
        
        // Disable tableView for now.
        tableView.isScrollEnabled = false
        tableView.allowsSelection = false
        
    }
    
    // Function called when we tap the close button.
    @objc func closeModalView() {
        
        if let unwrappedModalView = modalView {
            
            // Fade out the modal view. The completion: parameter accepts a block of code that
            // will be executed after the animation completes. We want to remove the modal view
            // from the table view and also set our modalView property to nil.
            UIView.animate(withDuration: 0.25, animations: {
                unwrappedModalView.alpha = 0
            }, completion: { (success) in
                unwrappedModalView.removeFromSuperview()
                self.modalView = nil
            })
            
            // Reenable the table view.
            tableView.isScrollEnabled = true
            tableView.allowsSelection = true
            
        }
        
    }
```

## <a id="10">Challenge: Try to Group Pokemon in Sections by Type</a>

do it to win a prize woohoo
