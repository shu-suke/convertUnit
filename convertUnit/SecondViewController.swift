//
//  SecondViewController.swift
//  convertUnit
//
//  Created by kin_shusuke on 2015/12/16.
//  Copyright © 2015年 shusuke. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!
    
//    AppDelegateにアクセスするオブジェクトを作る
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
//    この画面を表示されるとき呼び出される
    override func viewWillAppear(animated: Bool) {
//       共有変数の値をテキストフィールドに設定
        let inchValue = ap.cmValue * 0.3937
        dataTextField.text = String(inchValue)
    }

    @IBAction func tapInput() {
//        キーボードを閉じる
        dataTextField.resignFirstResponder()
        if let text = dataTextField.text {
//            テキストフィールドに値があって
            if let inchValue = Double(text) {
//                小数の値に変換できたら、cmに単位換算して共有変数に書き込む
                ap.cmValue = inchValue / 0.3937
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

