//
//  PokemonInfoView.swift
//  PrettyGoodPokedex
//
//  Created by Kevin Tan on 1/29/19.
//  Copyright © 2019 ACM Hack. All rights reserved.
//

import UIKit

class PokemonInfoView: UIView {
    let typeLabel = UILabel()
    let weightLabel = UILabel()
    let closeButton = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(origin: .zero, size: CGSize(width: 300,
                                                             height: 200)))
        backgroundColor = .lightGray
        closeButton.setTitle("X", for: .normal)
        
        addSubview(typeLabel)
        addSubview(weightLabel)
        addSubview(closeButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let typeLabelSize = typeLabel.intrinsicContentSize
        let weightLabelSize = weightLabel.intrinsicContentSize
        let verticalSpacing = (self.frame.height - typeLabelSize.height - weightLabelSize.height) / 3
        
        typeLabel.frame = CGRect(x: (self.frame.width - typeLabelSize.width) / 2,
                                 y: verticalSpacing,
                                 width: typeLabelSize.width,
                                 height: typeLabelSize.height)
        weightLabel.frame = CGRect(x: (self.frame.width - weightLabelSize.width) / 2,
                                   y: typeLabel.frame.maxY + verticalSpacing,
                                   width: weightLabelSize.width,
                                   height: weightLabelSize.height)
        
        let buttonPadding: CGFloat = 10
        let closeButtonSize = closeButton.intrinsicContentSize
        closeButton.frame = CGRect(x: buttonPadding,
                                   y: buttonPadding,
                                   width: closeButtonSize.width,
                                   height: closeButtonSize.height)
    }
    
    // MARK: - Mutators
    
    func configure(with pokemon: Pokemon) {
        typeLabel.text = "Type: \(pokemon.type)"
        weightLabel.text = "Weight: \(pokemon.weight)"
        
        setNeedsLayout()
    }
    
    func fadeIn() {
        alpha = 0
        isHidden = false
        
        UIView.animate(withDuration: 0.2) {
            self.alpha = 1
        }
    }
    
    func fadeOut() {
        alpha = 1
        
        UIView.animate(withDuration: 0.2, animations: {
            self.alpha = 0
        }, completion: { (_) in
            self.isHidden = true
        })
    }
}
