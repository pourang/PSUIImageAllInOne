//
//  ViewController.swift
//  PSUIImageAllInOne
//
//  Created by git on 11/08/2019.
//  Copyright (c) 2019 git. All rights reserved.
//

import UIKit
import PSUIImageAllInOne

class ViewController: UIViewController {

    @IBOutlet weak var imgVDemo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imgVDemo.roundView(borderColor: UIColor.green, borderWidth: 10.0)
        
        let deadlineTime1 = DispatchTime.now() + .seconds(0)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime1) {
           self.imgVDemo.fadeOut(duration: 1.0)
        }
        
        let deadlineTime2 = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime2) {
            self.imgVDemo.fadeIn(duration: 1.0)
        }
    
        
        let deadlineTime3 = DispatchTime.now() + .seconds(2)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime3) {
           self.imgVDemo.image = self.imgVDemo.image?.imageWithColor(color: UIColor.purple)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        

        
    }

}

