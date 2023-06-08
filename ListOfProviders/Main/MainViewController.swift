//
//  MainViewController.swift
//  ListOfProviders
//
//  Created by Borys Klykavka on 07.06.2023.
//

import UIKit
import WebKit
import RxCocoa
import RxSwift

class MainViewController: UIViewController {

    var viewModel: MainViewModel
    let disposeBag = DisposeBag()

    private var mainView: MainView? {
        return self.view as? MainView
    }

    init(viewModel: MainViewModel){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let codeView = MainView(frame: CGRect.zero)
        self.view = codeView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindView()
    }
    
    private func bindView() {
        
        mainView?.FreeNetButton.rx.tap.bind(onNext: { [weak self] _ in
            let request = URLRequest(url: NetworkService.shared.urlFreeNet)
            let newVC = WebViewController(request: request)
            self?.navigationController?.pushViewController(newVC, animated: true)
        }).disposed(by: disposeBag)
        
        mainView?.KoloButton.rx.tap.bind(onNext: { [weak self] _ in
            let request = URLRequest(url: NetworkService.shared.urlKolo)
            let newVC = WebViewController(request: request)
            self?.navigationController?.pushViewController(newVC, animated: true)
        }).disposed(by: disposeBag)
        
        mainView?.ITButton.rx.tap.bind(onNext: { [weak self] _ in
            let request = URLRequest(url: NetworkService.shared.urlIT)
            let newVC = WebViewController(request: request)
            self?.navigationController?.pushViewController(newVC, animated: true)
        }).disposed(by: disposeBag)
        
        mainView?.SimNetButton.rx.tap.bind(onNext: { [weak self] _ in
            let request = URLRequest(url: NetworkService.shared.urlSimNet)
            let newVC = WebViewController(request: request)
            self?.navigationController?.pushViewController(newVC, animated: true)
        }).disposed(by: disposeBag)
    }
}


