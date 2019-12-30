//
//  WebViewController.swift
//  ios_open_source_learnig_project
//
//  Created by xiongyongjie on 2019/12/18.
//  Copyright © 2019 Justus Woolworth. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: ViewController {
    
    lazy var webView: WKWebView = {
        let view = WKWebView()
        view.navigationDelegate = self
        view.uiDelegate = self
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension WebViewController: WKNavigationDelegate {
    
}

extension WebViewController: WKUIDelegate {
    
}
