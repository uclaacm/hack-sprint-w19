//
//  ViewController.swift
//  PrettyGoodPokedex
//
//  Created by Kevin Tan on 1/28/18.
//  Copyright © 2018 ACM Hack. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {
    let pokemonArray = getPokemon()
    
    let infoView = PokemonInfoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoView.isHidden = true
        infoView.closeButton.addTarget(self, action: #selector(closeInfoView), for: .touchUpInside)

        view.addSubview(infoView)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        // Set frames
        infoView.frame = CGRect(x: (view.frame.width - infoView.frame.width) / 2,
                                y: (view.frame.height - infoView.frame.height) / 2,
                                width: infoView.frame.width,
                                height: infoView.frame.height)
    }

    // MARK: - UITableViewDataSource, UITableViewDelegate methods
    
    // MARK: - User Actions
    
    // Function called when we tap the close button on the info view.
    @objc func closeInfoView() {
        infoView.fadeOut()
    }
    
    // MARK: - Helper Functions
    
    // Cache images so we don't have to fetch them over a network connection each time.
    private let imageCache = NSCache<NSString, UIImage>()
    
    // This method sets the image in a particular image view from a particular image 
    // URL. It loads and sets the image while running in the background to make the 
    // changes look more smooth to the user.
    private func loadImageFromURL(_ url: URL, into imageView: UIImageView?) {
        guard let imageView = imageView else { return }
        
        let urlString = url.absoluteString as NSString
        if let image = imageCache.object(forKey: urlString) {
            // Cache hit
            imageView.image = image
        } else {
            // Cache miss; move to a background thread to do some long running work
            DispatchQueue.global(qos: .background).async {
                do {
                    let imgData = try Data(contentsOf: url)
                    
                    if let image = UIImage(data: imgData) {
                        // Cache the image
                        self.imageCache.setObject(image, forKey: urlString)
                        
                        // Bounce back to the main thread to update the UI
                        DispatchQueue.main.async {
                            imageView.image = UIImage(data: imgData)
                        }
                    }
                } catch {
                    print("Could not download image URL: \(error.localizedDescription)")
                }
            }
        }
    }
}

