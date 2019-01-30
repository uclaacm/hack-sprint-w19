//
//  ViewController.swift
//  PrettyGoodPokedex
//
//  Created by Kevin Tan on 1/28/18.
//  Copyright © 2018 ACM Hack. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewDelegate, UITableViewController methods
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // TODO
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // TODO
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // TODO
    }
    
    // Helper Functions
    
    // This method sets the image in a particular image view from a particular image 
    // URL. It loads and sets the image while running in the background to make the 
    // changes look more smooth to the user.
    func loadImageFromURL(_ url: URL, into imageView: UIImageView!) {
        // Move to a background thread to do some long running work
        DispatchQueue.global(qos: .background).async {
            do {
                let imgData = try Data(contentsOf: url)
                
                // Bounce back to the main thread to update the UI
                DispatchQueue.main.async {
                    imageView.image = UIImage(data: imgData)
                }
            } catch {
                print("Could not download image URL.")
            }
        }
    }

}

