//
//  ViewController.swift
//  TestKeyChainWrapper
//
//  Created by Miguel Mexicano Herrera on 09/10/20.
//

import UIKit
import KeychainWrapper
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Set Data
        do {
            guard let pass = "SecretPassword".data(using: .utf8) else { return }
            try Key
            try KeychainWrapper.set(value: pass, account: "password")
        } catch {
            // Handle Error
        }
        
        // Get Data
        do {
            let retrievedPassword = try KeychainWrapper.get(account: "password")
            print(String(data: retrievedPassword!, encoding: .utf8)!)
        } catch {
            // Handle Error
        }
        
        // Delete Data
        do {
            try KeychainWrapper.delete(account: "password")
        } catch {
            // Handle Error
        }
    }


}

