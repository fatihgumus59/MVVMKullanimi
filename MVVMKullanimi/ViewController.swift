//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Fatih Gümüş on 8.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var sayi1Label: UITextField!
    @IBOutlet weak var sayi2Label: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelSonuc.text = "0"
        
        
    }

    @IBAction func topla(_ sender: Any) {
        if let alinanSayi1 = sayi1Label.text,let alinanSayi2 = sayi2Label.text{
            if let sayi1 = Int(alinanSayi1),let sayi2 = Int(alinanSayi2){
                
                let sonuc = sayi1+sayi2
                
                labelSonuc.text = "Sonuc : \(sonuc)"
                
            }
            
        }
        
    }
    
    @IBAction func carp(_ sender: Any) {
        if let alinanSayi1 = sayi1Label.text,let alinanSayi2 = sayi2Label.text{
            if let sayi1 = Int(alinanSayi1),let sayi2 = Int(alinanSayi2){
                
                let sonuc = sayi1*sayi2
                
                labelSonuc.text = "Sonuc : \(sonuc)"
                
            }
            
        }
    }
    
}

