//
//  ViewController.swift
//  PickerView-swift
//
//  Created by 加藤 周 on 2015/03/07.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var myUIPicker: UIPickerView = UIPickerView()
    
    // 表示する値の配列.
    var myValues: NSArray = ["その一","その二","その三","その四"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // サイズを指定する.
        myUIPicker.frame = CGRectMake(0,0,self.view.bounds.width, 180.0)
        
        // Delegateを設定する.
        myUIPicker.delegate = self
        
        // DataSourceを設定する.
        myUIPicker.dataSource = self
        
        // Viewに追加する.
        self.view.addSubview(myUIPicker)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    /*
    表示するデータ数を返す.
    */
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myValues.count
    }
    
    /*
    値を代入する.
    */
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return myValues[row] as String
    }
    
    /*
    Pickerが選択された際に呼ばれる.
    */
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        println("row: \(row)")
        println("value: \(myValues[row])")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

