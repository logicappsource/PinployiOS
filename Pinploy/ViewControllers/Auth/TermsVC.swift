//
//  TermsVC.swift
//  Pinploy
//
//  Created by dev on 25/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import WebKit

class TermsVC: UIViewController {

    @IBOutlet weak var wekKitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initTermsWebView()
    }
    
    func initTermsWebView() {
        let request = URLRequest(url: URL(string: "https://www.pinploy.dk/terms")!)
        wekKitView.load(request)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
