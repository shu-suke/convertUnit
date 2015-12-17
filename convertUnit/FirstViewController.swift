//
//  FirstViewController.swift
//  convertUnit
//
//  Created by kin_shusuke on 2015/12/16.
//  Copyright © 2015年 shusuke. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!
    
//    AppDelegateにアクセスするオブジェクトを作る
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
//    この画面が表示されると呼びだされる
    override func viewWillAppear(animated: Bool) {
//    共有変数の値をテキストフィールドに設定
        dataTextField.text = String(ap.cmValue)
    }

    @IBAction func tapInput() {
//        キーボードを閉じる
        dataTextField.resignFirstResponder()
        if let text = dataTextField.text {
//          テキストフィールドに値があって
            if let cmValue = Double(text) {
//              小数の値に変換できたら共有変数に書き込む
                ap.cmValue = cmValue
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

