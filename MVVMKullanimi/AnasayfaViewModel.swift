//
//  AnasayfaViewModel.swift
//  MVVMKullanimi
//
//  Created by Fatih Gümüş on 8.01.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    var sonuc = BehaviorSubject<String>(value: "0")
    var mRepo = MatematikRepository()
    
    init(){
        sonuc = mRepo.sonuc
    }
    
    func toplamaYap(alinanSayi1:String,alinanSayi2:String){
        mRepo.toplamaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
    }
    
    func carpmaYap(alinanSayi1:String,alinanSayi2:String){
        mRepo.carpmaYap(alinanSayi1: alinanSayi1, alinanSayi2: alinanSayi2)
    }
}
