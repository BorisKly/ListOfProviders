//
//  MainView.swift
//  ListOfProviders
//
//  Created by Borys Klykavka on 07.06.2023.
//

import UIKit
import PinLayout

class MainView: UIView {
    
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    public let FreeNetButton = UIButton()
    public let ITButton = UIButton()
    public let KoloButton = UIButton()
    public let SimNetButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = Colors.backgroundBase
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(stack)
        addButtonsToStackView()
        setConstraints()
    }
    
    private func addButtonsToStackView() {
        stack.addArrangedSubview(FreeNetButton)
        stack.addArrangedSubview(ITButton)
        stack.addArrangedSubview(KoloButton)
        stack.addArrangedSubview(SimNetButton)
        //stackViewOfButtons.setCustomSpacing(5, after: playButton)
        FreeNetButton.setUIButton(title: "FreeNet", titleHighlited: "pressed")

        ITButton.setUIButton(title: "IT", titleHighlited: "pressed")
        KoloButton.setUIButton(title: "KOLO", titleHighlited: "pressed")
        SimNetButton.setUIButton(title: "SimNet", titleHighlited: "pressed")
    }
    
    func setConstraints() {
        stack.pin
            .width(95%)
            .height(50%)
            .hCenter()
            .vCenter()
    }
   
}
