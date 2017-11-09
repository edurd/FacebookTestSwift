//
//  ViewController.swift
//  FacebookTest
//
//  Created by Eduardo Hoyos Loli on 11/9/17.
//  Copyright © 2017 Eduardo Hoyos Loli. All rights reserved.
//

import UIKit
import FacebookLogin


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = LoginButton(readPermissions: [ .publicProfile ])
        loginButton.center = view.center
        
        view.addSubview(loginButton)
        
    }


}

