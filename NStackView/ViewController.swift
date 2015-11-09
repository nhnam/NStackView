//
//  ViewController.swift
//  NStackView
//
//  Created by Nguyen Hoang Nam on 9/11/15.
//  Copyright © 2015 Nguyen Hoang Nam. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @IBOutlet weak var bt_Add: UIButton!
    var nextY:Float!
    var totalH:Float!
    var lastView:UIView!
    
    //------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Nam StackView"
        lastView = bt_Add
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //------------------------------------------------------------
    
    @IBAction func do_AddMore(sender: AnyObject) {
        let v:UIView = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(v)
        v.snp_makeConstraints { (make) -> Void in
            make.height.equalTo((Int)(arc4random_uniform(50)+50))
            make.leading.equalTo(self.view).offset(30)
            make.trailing.equalTo(self.view).offset(-30)
            make.topMargin.equalTo(lastView.snp_bottom).offset(20)
        }
        v.backgroundColor = randomColor()
        lastView = v
    }
    
    //------------------------------------------------------------
    func randomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
}

