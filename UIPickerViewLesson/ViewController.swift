//
//  ViewController.swift
//  UIPickerViewLesson
//
//  Created by UrataHiroki on 2021/09/18.
//

import UIKit

class ViewController: UIViewController {

    let pickerViewContents = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = {() -> UIPickerView in
            
            let picker = UIPickerView(frame: CGRect(x: view.frame.minX, y: view.frame.maxY / 7.5, width: view.frame.width, height: self.view.frame.size.height / 7.5))
            
            return picker
        }()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
        
    }


}

extension ViewController:UIPickerViewDelegate{
    
    
}

extension ViewController:UIPickerViewDataSource{
        
    
}
