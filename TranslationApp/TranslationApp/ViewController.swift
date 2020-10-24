//
//  ViewController.swift
//  TranslationApp
//

//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        view.addSubview(TranslateLabel)
        TranslateLabel.frame = view.bounds

    }
    
    private let TranslateLabel: UILabel = {
      let label = UILabel()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        label.text = "Hello".localized()
        return label    
    }()
}

extension String{
    func localized() -> String {
        return NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self)
    }
}

