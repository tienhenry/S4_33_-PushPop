//
//  ViewController.swift
//  PushPop
//
//  Created by admin on 10/19/16.
//  Copyright © 2016 tien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logo: UIImageView!
    
    @IBOutlet var text: UILabel!
    
    @IBOutlet var hello: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo!.alpha = 0
        
        text!.alpha = 0
        
    }
    
        override func viewWillAppear(animated: Bool) {
            
            super.viewWillAppear(animated)
            
            UIView.animateWithDuration(3, animations: {
                
                self.logo!.alpha = 1
                
            }) { (finished) in
                
                UIView.animateWithDuration(2, animations: {
                    
                    self.text!.center = CGPointMake(self.logo!.center.x, 150)
                    
                    self.text!.alpha = 1
                    
                }) { (finished) in
                    
                        UIView.animateWithDuration(2, animations: {
                        
                            self.hello!.center = CGPointMake(self.logo!.center.x, 570)
                        
                            self.hello!.alpha = 1
                        
                        })
                    
                    
                    }
                
                
                }
            
            }

    @IBAction func actionPush(sender: AnyObject) {
        
        let v2 = self.storyboard?.instantiateViewControllerWithIdentifier("v2") as! View2
        
        self.navigationController?.pushViewController(v2, animated: true)
        
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


