//
//  ViewController.swift
//  Pretty Post
//
//  Created by Kevin Tan on 1/22/19.
//  Copyright © 2019 Kevin Tan. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {
    
    let titleTextField = UITextField()
    let bodyTextView = UITextView()
    let postButton = UIButton(type: .system)

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
        postButton.addTarget(self, action: #selector(tappedPost), for: .touchUpInside)

        // Add subviews
        view.addSubview(titleTextField)
        view.addSubview(bodyTextView)
        view.addSubview(postButton)
    }
    
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
}

