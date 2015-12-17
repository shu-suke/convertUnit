//
//  thirdViewController.swift
//  convertUnit
//
//  Created by kin_shusuke on 2015/12/16.
//  Copyright © 2015年 shusuke. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    @IBOutlet weak var dataTextField: UITextField!

//    AppDelegateにアクセスするオブジェクトを作る
    let ap = UIApplication.sharedApplication().delegate as! AppDelegate
//    この画面が表示されるとき呼び出される
    override func viewWillAppear(animated: Bool) {
//    共有変数の値をテキストフィールドに書き込む
        let sunValue = ap.cmValue * 0.33
        dataTextField.text = String(sunValue)
    }
    
    @IBAction func tapInput() {
//        キーボードを閉じる
        dataTextField.resignFirstResponder()
        if let text = dataTextField.text {
//        テキストフィールドに値があって
            if let sunValue = Double(text) {
//                小数の値に変換できたらcmに単位換算して共有変数に書き込む
                ap.cmValue = sunValue / 0.33
            }
        }

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
