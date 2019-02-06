//
//  ViewController.swift
//  UsChat
//
//  Created by Kevin Tan on 2/5/19.
//  Copyright © 2019 Kevin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                      UITableViewDataSource,
                      UITextFieldDelegate {
    let messageTableView = UITableView()
    let chatTextField = UITextField()
    let sendButton = UIButton(type: .system)
    
    var messages = [String]()
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        messageTableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        messageTableView.separatorStyle = .none
        messageTableView.dataSource = self
        
        chatTextField.placeholder = "Go ahead, type something!"
        chatTextField.borderStyle = .roundedRect
        chatTextField.delegate = self
        
        sendButton.setTitle("Send", for: .normal)
        sendButton.addTarget(self, action: #selector(sendMessage), for: .touchUpInside)
        
        view.addSubview(messageTableView)
        view.addSubview(chatTextField)
        view.addSubview(sendButton)
        
        observeMessages()
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let padding: CGFloat = 20
        
        messageTableView.frame = CGRect(x: 0,
                                        y: view.safeAreaInsets.top,
                                        width: view.bounds.width,
                                        height: view.bounds.height / 2 - view.safeAreaInsets.top)
        
        let buttonSize = sendButton.intrinsicContentSize
        sendButton.frame = CGRect(x: view.bounds.width - buttonSize.width - padding,
                                  y: messageTableView.frame.maxY + padding,
                                  width: buttonSize.width,
                                  height: buttonSize.height)
        
        chatTextField.frame = CGRect(x: padding,
                                     y: messageTableView.frame.maxY + padding,
                                     width: sendButton.frame.minX - padding * 2,
                                     height: buttonSize.height)
    }
    
    // MARK: - User Actions
    
    @objc func sendMessage() {
        // TODO: Send message to Firebase
    }
    
    // MARK: - UITableViewDataSource, UITableViewDelegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {
            fatalError()
        }
        
        cell.selectionStyle = .none
        cell.textLabel?.text = messages[indexPath.row]
        return cell
    }
    
    // MARK: - UITextFieldDelegate
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let currentCharacterCount = textField.text?.count ?? 0
        let newLength = currentCharacterCount + string.count - range.length
        return newLength <= 40
    }
    
    // MARK: Helper Functions
    
    private func observeMessages() {
        // TODO: Listen for messages in Firebase
    }
    
    private func scrollTableViewToBottom() {
        if messages.count > 0 {
            messageTableView.scrollToRow(at: IndexPath(row: messages.count - 1, section: 0),
                                         at: .bottom,
                                         animated: true)
        }
    }
}


