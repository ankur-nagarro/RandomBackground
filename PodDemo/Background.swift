//
//  Background.swift
//  PodDemo
//
//  Created by Ankur Arya on 17/06/19.
//  Copyright © 2019 Ankur Arya. All rights reserved.
//

import UIKit
import RxSwift

public class Background: UIView {
    let colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
   public override init(frame: CGRect) {
        super.init(frame: frame)
        changeColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeColor() {
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true) { (timer) in  //1
            UIView.animate(withDuration: 2.0) {  //2
                self.layer.backgroundColor = self.colors.randomElement()?.cgColor
            }
        }
        scheduledColorChanged.fire()
        
        let rxError = RxError.overflow
        print("This is rx error \(rxError.localizedDescription)")
    }
}
