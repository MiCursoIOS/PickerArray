//
//  ViewController.swift
//  PickerArray
//
//  Created by academia moviles4 on 12/27/17.
//  Copyright © 2017 Academa Moviles. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var txtPais: UILabel!
    @IBOutlet weak var txtNombrePais: UITextField!
    
    @IBOutlet weak var agregarNuevoPais: UIButton!
    
    @IBOutlet weak var miPicker: UIPickerView!
    @IBAction func agregarPais(_ sender: Any) {
        let nuevoPais = txtNombrePais.text!
        arrayPaises.insert(nuevoPais, at: 0)
        miPicker.reloadAllComponents()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPaises.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  arrayPaises[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtPais.text = arrayPaises[row]
        txtPais.isHidden = false
    }
    
    var arrayPaises = ["Peru", "Brasil", "Argentina", "Uruguay", "Venezuela", "Costa Rica"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPais.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

