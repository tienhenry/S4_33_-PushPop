//
//  View3.swift
//  PushPop
//
//  Created by admin on 10/19/16.
//  Copyright © 2016 tien. All rights reserved.
//

import UIKit

class View3: UIViewController {
    
    @IBOutlet var lblP1: UILabel!
    @IBOutlet var lblP2: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    @IBOutlet var labelRight: UILabel!
    @IBOutlet var labelWrong: UILabel!
    @IBOutlet var labeltime: UILabel!
    
    var dung:Int = 0
    var sai:Int = 0
    var time:Int = 10
    var ketQua:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timeout), userInfo: nil, repeats: true)
        
        setRandom()
        
    }
    func timeout() {
        
        time = time - 1
        
        labeltime.text = "Time: \(time)"
        
    }
    
    @IBAction func buttonAction(sender: UIButton) {
        
     print(ketQua)
        
        if ketQua == Int((sender.titleLabel?.text!)!) {
            
            dung = dung + 1
            
            labelRight.text = "Right : \(dung)"
            
        } else {
            
            sai = sai + 1
            
            labelWrong.text = "Wrong : \(sai)"
        }
        setRandom()
        
        time = 10
        
    }
    func setRandom() {
        
        // Lấy ra 2 số ngẫu nhiên
        let random1 = Int(arc4random_uniform(4)) + 1 // Random ra từ 1 đến 4
        
        let random2 = Int(arc4random_uniform(4)) + 1 // Random ra từ 1 đến 4
        
        // print("\(random1) \(random2)")
        
        // Hiện thị 2 số ngẫu nhiên lên view
        
        lblP1.text = String(random1)
        lblP2.text = String(random2)
        ketQua = Int(random1) + Int(random2)
        setResult(random1, randomB: random2)
    }
    
    // Hiển thị kết quả
    func setResult(randomA: Int, randomB: Int) {
        
        let randomPlace = Int(arc4random_uniform(2))
       
        print(randomPlace)
        
        if(randomPlace == 0) { // Tổng vào button 1
            
            button3.setTitle(String(randomB), forState: .Normal)
            button1.setTitle(String(randomA), forState: .Normal)
            button1.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
        }
        if(randomPlace == 1) { // Tổng vào button 2
            
            button1.setTitle(String(randomA), forState: .Normal)
            button3.setTitle(String(randomB), forState: .Normal)
            button2.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
        }
        if(randomPlace == 2) { // Tổng vào button 3
            
            button1.setTitle(String(randomA), forState: .Normal)
            button2.setTitle(String(randomB), forState: .Normal)
            button3.setTitle(String(sum(randomA, p2: randomB)), forState: .Normal)
            
        }
        
    }
    // Tính tổng
    func sum(p1: Int, p2: Int) -> Int {
        
        return p1+p2;
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
