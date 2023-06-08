//
//  WebView.swift
//  ListOfProviders
//
//  Created by Borys Klykavka on 07.06.2023.
//

import UIKit
import WebKit
import PinLayout

class WebView: UIView {
    
    var webView: WKWebView!
    let webConfiguration = WKWebViewConfiguration()
    
    public let backToMainScreenButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        webView = WKWebView(frame: self.bounds, configuration: webConfiguration)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(webView)
        self.addSubview(backToMainScreenButton)
        backToMainScreenButton.setUIButtonRoundSystem(systemName: "chevron.backward")
        setConstraints()
    }
    
    func setConstraints() {
        backToMainScreenButton.pin.left(5).top(50).size(40)
        webView.pin
            .below(of: backToMainScreenButton)
            .left()
            .right()
            .bottom()
            .marginTop(1)
    }
}
