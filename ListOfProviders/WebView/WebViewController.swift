//
//  WebViewController.swift
//  ListOfProviders
//
//  Created by Borys Klykavka on 07.06.2023.
//

import UIKit
import WebKit
import RxCocoa
import RxSwift

class WebViewController: UIViewController {

    var request: URLRequest
    let disposeBag = DisposeBag()
    
    private var mainView: WebView? {
        return self.view as? WebView
    }
    
    init(request: URLRequest){
        self.request = request
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let codeView = WebView(frame: CGRect.zero)
        self.view = codeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView?.webView.load(request)
        mainView?.webView.navigationDelegate = self
        
        bindView()
    }
    
    private func bindView() {
        
        mainView?.backToMainScreenButton.rx.tap.bind(onNext: { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }).disposed(by: disposeBag)
    }
    
    
}
extension WebViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("Web view finish loading")
    }
}
