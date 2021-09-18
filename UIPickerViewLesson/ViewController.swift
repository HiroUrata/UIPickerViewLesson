//
//  ViewController.swift
//  UIPickerViewLesson
//
//  Created by UrataHiroki on 2021/09/18.
//

import UIKit

class ViewController: UIViewController {

    let pickerViewContents = ["January","February","March","April","May","June","July","August","September","October","November","December"]
    
    let pickerResultLabel = UILabel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerResultLabel.frame = CGRect(x: view.frame.minX, y: view.frame.maxY * 0.3, width: view.frame.width, height: view.frame.size.height / 5)
        pickerResultLabel.textColor = .black
        view.addSubview(pickerResultLabel)
        
        let pickerView = {() -> UIPickerView in
            
            let picker = UIPickerView(frame: CGRect(x: view.frame.minX, y: view.frame.maxY * 0.75, width: view.frame.width, height: self.view.frame.size.height / 7.5))
            pickerResultLabel.textAlignment = .center
            picker.backgroundColor = .lightGray
            
            return picker
        }()
        
        view.addSubview(pickerView)
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
        
    }


}

extension ViewController:UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerViewContents[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        
        return 75
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        pickerResultLabel.text = pickerViewContents[row]
    }
}

extension ViewController:UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        return pickerViewContents.count
    }
    
    
        
    
}
