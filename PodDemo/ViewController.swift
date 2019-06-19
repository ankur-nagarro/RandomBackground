//
//  ViewController.swift
//  PodDemo
//
//  Created by Ankur Arya on 17/06/19.
//  Copyright © 2019 Ankur Arya. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fantasticView = Background(frame: self.view.bounds)
        
        self.view.addSubview(fantasticView)
        
        let rxError = RxError.overflow
        print("This is rx error \(rxError.localizedDescription)")
    }


}

