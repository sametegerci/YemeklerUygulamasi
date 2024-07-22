//
//  YemekModel.swift
//  YemekUygulaması
//
//  Created by  Samet Eğerci on 22.07.2024.
//

import Foundation


class YemekModel {
    var yemekId :Int?
    var yemekAdı: String?
    var yemekResim:String? // burada statik bir şekilde resimleri değiştirebilmek için string istedik
    var yemekFiyat:Double?
    
    init () {
        
    }
    init(yemekId :Int,yemekAdı: String,yemekResim:String,yemekFiyat:Double) {
        self.yemekId = yemekId
        self.yemekAdı = yemekAdı
        self.yemekResim = yemekResim
        self.yemekFiyat = yemekFiyat
    }
    
    
}
