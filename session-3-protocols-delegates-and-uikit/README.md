# Hack Sprint Session 3 README

**Slides**: https://docs.google.com/presentation/d/1e4iSAzpBlwWiphI0tkpbH_CdbIb6_tYwuibTLDI7a7Y/edit?usp=sharing

## Table of Contents

- Getting Started
  - <a href="#1">Downloading the Code</a>
- Coding in Swift
  - <a href="#7">Adding the UITableView</a>
  - <a href="#8">UITableViewDataSource</a>
  - <a href="#9">UITableViewDelegate</a>

## Getting Started

### <a id="1">Downloading the Code</a>

1. We're going to provide some boilerplate code for this session's project. Navigate to this [GitHub repo](https://github.com/uclaacm/hack-sprint-w19/tree/master/session-3-protocols-delegates-and-uikit).

   The boilerplate code contains:

   - A file **JSONHelperFunctions.swift** that contains functions to parse a JSON file and extra data about each Pokemon.
   - A file **PokemonInfoView.swift** that contains the code for a custom UIView that will display info for a given Pokemon. It has three functions for us to use:
     - `configure(with:)` that takes in a Pokemon struct and fills out the view's labels accordingly
     - `fadeIn()` and `fadeOut()` which we will call to show and hide the view.
   - A file **PokemonViewController.swift** that serves as the code for the main View Controller as a whole.
     - This file contains a helper function named `loadImageFromURL()` that takes in a URL and a UIImageView and [asynchronously](https://en.wikipedia.org/wiki/Asynchrony_(computer_programming)) fetches the image at the URL and sets it as the UIImageView's image.
   - A file **Main.storyboard** which contains a UIViewController of type **PokemonViewController**.
   - A Pokeball image located in **Assets.xcassets**.
   - A file **pokedex.json** containing data about each Pokemon in [JSON format](https://www.tutorialspoint.com/json/json_overview.htm).
   - A file **info.plist** that has been updated to allow us to make requests to URLs that begin with just http (as opposed to https).

2. Click on the "Clone or Download" button on the right side of the page and selected "Download ZIP."

<img src="https://lh5.googleusercontent.com/-Hhsf-gWh0wyPZbrFxIw1dk0znQOG4ypddvTfEQNLjln-YiEavBRzo2RYWt1MT-1VpMklleU3i58A1_OQwz-QvbiPLAwk7HxPZ0si72lS2loNSRO7fqOdHKS8jTaaQJWkiXqsx8O" width="400px">

---

3. Open the folder you just downloaded; it should be called **hack-sprint-w19-master**.
4. Open the folder session-3-protocols-delegates-and-uikit.
5. Open the folder PrettyGoodPokedex**Starter**.
6. Double-click the file **PrettyGoodPokedex.xcodeproj** to open the project in Xcode.

## Coding in Swift

### <a id="7">Adding the UITableView</a>

1. Return to the Project Navigator and click on the **PokemonViewController.swift** file.

2. Add a UITableView property to our view controller by adding it above the PokemonInfoView declaration:

   ```swift
   ...
   // Add this line!
   let tableView = UITableView()
   let infoView = PokemonInfoView()
      
   override func viewDidLoad() {
   ...
   ```

3. Change `viewDidLoad()` so it looks like the following:

   ```swift
   override func viewDidLoad() {
       super.viewDidLoad()
       
       // Add this line!
       tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
           
       infoView.isHidden = true
       infoView.closeButton.addTarget(self, action: #selector(closeInfoView), for: .touchUpInside)
   
       // Add this line!
       view.addSubview(tableView)
       view.addSubview(infoView)
   }
   ```

4. Change `viewWillLayoutSubviews()` so it looks like the following:

   ```swift
   override func viewWillLayoutSubviews() {
       super.viewWillLayoutSubviews()
   
       // Set frames
       // Add these lines!
       tableView.frame = CGRect(x: 0,
                                y: view.safeAreaInsets.top,
                                width: view.frame.width,
                                height: view.frame.height - view.safeAreaInsets.top)
           
       infoView.frame = CGRect(x: (view.frame.width - infoView.frame.width) / 2,
                               y: (view.frame.height - infoView.frame.height) / 2,
                               width: infoView.frame.width,
                               height: infoView.frame.height)
   }
   ```

**Checkpoint:** Build and run your app. You should be able to see an empty table view!

### <a id="8">UITableViewDataSource</a>

Now we need to tell our table view what it should display. We can do that by conforming to the **UITableViewDataSource** protocol.

1. Make our view controller conform to the UITableViewDataSource protocol by changing its declaration to the following:

   ```swift
   class PokemonViewController: UIViewController, UITableViewDataSource {
       ...
   ```

2. Add the following function to the class. This function tells our table view how many sections it has:

   ```swift
   func numberOfSections(in tableView: UITableView) -> Int {
       return 1
   }
   ```

3. Add the following function to the class. This function tells our table view how many cells each section has (note that we only have one section)

   ```swift
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return pokemonArray.count
   }
   ```

4. Now for the most complex function regarding UITableViews. The `tableView(_:cellForRowAt:)` function returns the UITableViewCell object that should be shown at a given row:

   ```swift
   func tableView(_ tableView: UITableView,
                  cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // Try to dequeue a reusable cell; otherwise, create a new one.
       let cell: UITableViewCell
       if let reusableCell = tableView.dequeueReusableCell(withIdentifier: "Cell") {
           cell = reusableCell
       } else {
           cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
       }
           
       let pokemon = pokemonArray[indexPath.row]
           
       // Set image
       cell.imageView?.image = UIImage(named: "Pokeball")
       loadImageFromURL(pokemon.imageURL, into: cell.imageView)
           
       // Set text
       cell.textLabel?.text = pokemon.name
           
       return cell
   }
   ```

5. Finally, return to `viewDidLoad()` and add the following line:

   ```swift
   override func viewDidLoad() {
   	...
       tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
       // Add this line!
       tableView.dataSource = self
       ...
   ```

**Checkpoint:** Build and run your app. You should now be able to see the table view is populated with Pokemon!

---

### <a id="9">UITableViewDelegate</a>

Let's make our table view show information about a Pokemon after a row is tapped. We can let our table view know what code it should execute when a row is tapped by conforming to the **UITableViewDelegate** protocol.

1. Make our view controller conform to the UITableViewDataSource protocol by changing its declaration to the following:

   ```swift
   class PokemonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
       ...
   ```

2. Add the following function to the class. This function tells our table view what it should do when a given cell is tapped.

   ```swift
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // Get the Pokemon object
       let pokemon = pokemonArray[indexPath.row]
           
       infoView.configure(with: pokemon)
       infoView.fadeIn()
           
       // Disable tableView for now.
       tableView.isScrollEnabled = false
       tableView.allowsSelection = false
       tableView.deselectRow(at: indexPath, animated: true)
   }
   ```

3. Modify the `closeInfoView()` function to the following:

   ```swift
   @objc func closeInfoView() {
       infoView.fadeOut()
           
       // Reenable the table view.
       tableView.isScrollEnabled = true
       tableView.allowsSelection = true
   }
   ```

Build and run your app. Congratulations! You've got a pretty good Pokedex. :)