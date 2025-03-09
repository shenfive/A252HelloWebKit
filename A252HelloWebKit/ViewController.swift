//
//  ViewController.swift
//  A252HelloWebKit
//
//  Created by DannyShen on 2025/3/9.
//

import UIKit
import WebKit

class ViewController: UIViewController {
   
    @IBOutlet weak var theInputTextFeild: UITextField!
    
    @IBOutlet weak var theWebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        openWeb(urlString:"www.ichih.com")
    }

    
    func openWeb(urlString:String){
        if let url = URL(string:"https://\(urlString)"){
            let request = URLRequest(url: url)
            theWebView.load(request)
        }
    }
    
    
    @IBAction func goWeb(_ sender: Any) {
        let urlString = theInputTextFeild.text ?? ""
        self.view.endEditing(true)
        openWeb(urlString: urlString)
    }
    
    
    @IBAction func goForword(_ sender: Any) {
        theWebView.goForward()
    }
    
    @IBAction func goBack(_ sender: Any) {
        theWebView.goBack()
    }
    
    
    
}

