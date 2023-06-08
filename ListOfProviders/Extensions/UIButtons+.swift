//
//  UIButtons+.swift
//  ListOfProviders
//
//  Created by Borys Klykavka on 07.06.2023.
//


import UIKit

extension UIButton {
    
    public func setUIButton(title: String, titleHighlited: String) {
        self.backgroundColor = Colors.primaryColor
        self.setTitleColor(Colors.colorWhite, for: .normal)
        self.layer.cornerRadius = CGFloat(CornerRadius.forButtons)
        self.titleLabel?.font = Fonts.fontKnewave40
        self.setTitle(title, for: .normal)
        self.setTitleColor(.green, for: .highlighted)
//        self.addTarget(self, action: #selector(butoonPressed), for: .touchUpInside)
        self.setTitle(titleHighlited, for: .highlighted)
    }
    
    public func setUIButtonRoundSystem(systemName: String) {
        self.backgroundColor = Colors.colorYellow
        self.setTitleColor(Colors.colorWhite, for: .normal)
        self.layer.cornerRadius = CGFloat(CornerRadius.forRoundButtons)
        self.titleLabel?.font = Fonts.fontKnewave40
        let vector = UIImage(systemName: systemName)
//        self.addTarget(self, action: #selector(btnPressed), for: .touchUpInside)
        self.setImage(vector, for: .normal)
    }
}
