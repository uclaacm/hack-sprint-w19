//
//  ReadPostViewController.swift
//  Pretty Post
//
//  Created by Kevin Tan on 1/22/19.
//  Copyright © 2019 Kevin Tan. All rights reserved.
//

import UIKit

class ReadPostViewController: UIViewController {
    var titleText: String?
    var bodyText: String?
    
    let backgroundImageView = UIImageView()
    let darkView = UIView()
    let titleLabel = UILabel()
    let bodyTextView = UITextView()
    let backButton = UIButton(type: .system)
    
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
    
    @objc func tappedBack() {
        dismiss(animated: true, completion: nil)
    }
}
