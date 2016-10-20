//
//  View2.swift
//  PushPop
//
//  Created by admin on 10/19/16.
//  Copyright © 2016 tien. All rights reserved.
//

import UIKit

class View2: UIViewController {

    @IBOutlet var textFieldUser: UITextField!
    
    
    @IBOutlet var textFieldPassword: UITextField!
    
    var users = ["henry":"123", "guest":"guest", "ok":"567", "1":"1"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (tentaikhoan, password) in users {
            
            print("\(tentaikhoan) :\(password)")
            
        }

    }
    
    @IBAction func actionLogin(sender: AnyObject) {
        
        if let password = users[textFieldUser.text!] {
            
            if password == textFieldPassword.text {
                
                print("Đăng nhập thành công")
                
                let v3 = self.storyboard?.instantiateViewControllerWithIdentifier("v3") as! View3
                
                self.navigationController?.pushViewController(v3, animated: true)
                
                // dispatch_async(dispatch_get_main_queue(),{self.performSegueWithIdentifier("V3", sender: View3.self)} )
            }
            else  {
                
                print("Mật khẩu không đúng")
            }
        }
        else {
            
            print("Tài khoản này không tồn tại")
        }
    }
    
    @IBAction func actionPop(sender: AnyObject) {
        
    self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
