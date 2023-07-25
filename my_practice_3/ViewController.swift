//
//  ViewController.swift
//  my_practice_3
//
//  Created by 이태윤 on 2023/07/06.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet var picker_view: UIPickerView!
    @IBOutlet var label: UILabel!
    @IBOutlet var image_view: UIImageView!
    let data_count = 7
    let row = 2
    var image_text = ["1.jpeg", "2.jpeg", "3.jpeg", "4.jpeg", "5.jpeg", "6.jpeg", "7.jpeg"]
    var image_array = [UIImage?]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<data_count {
            let image = UIImage(named: image_text[i])
            image_array.append(image)
        }
        label.text = image_text[0]
        image_view.image = image_array[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return row
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data_count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageview = UIImageView(image: image_array[row])
        imageview.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        return imageview
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            label.text = image_text[row]
        } else {
            image_view.image = image_array[row]
        }
    }

}

