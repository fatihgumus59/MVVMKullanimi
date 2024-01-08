//
//  ViewController.swift
//  MVVMKullanimi
//
//  Created by Fatih Gümüş on 8.01.2024.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var sayi1Label: UITextField!
    @IBOutlet weak var sayi2Label: UITextField!
    
    var viewModel = AnasayfaViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        _ = viewModel.sonuc.subscribe(onNext: { s in
            self.labelSonuc.text = s
        })
        
        
    }

    @IBAction func topla(_ sender: Any) {
        if let alinanSayi1 = sayi1Label.text,let alinanSayi2 = sayi2Label.text{
            viewModel.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
           
        }
        
    }
    
    @IBAction func carp(_ sender: Any) {
        if let alinanSayi1 = sayi1Label.text,let alinanSayi2 = sayi2Label.text{
            viewModel.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
            
        }
    }
    
}

