//
//  ViewController.swift
//  ios_open_source_learnig_project
//
//  Created by Justus Woolworth on 11/13/19.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import UIKit
import RxSwift


class ExmapleViewController: ViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = R.color.primaryTheme()
        Network.shared.newsProviver.request(<#T##target: NewsApi##NewsApi#>, completion: <#T##Completion##Completion##(Result<Response, MoyaError>) -> Void#>)
        Network.shared.newsProviver.request(.everything(query: "tech")) { [weak self](response) in
            do {
                let result = try response.result.get().mapJSON()
                 print(result)
            } catch {
                print(error.localizedDescription)
            }
        }
    }


}

