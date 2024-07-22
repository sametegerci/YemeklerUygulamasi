//
//  ViewController.swift
//  YemekUygulaması
//
//  Created by  Samet Eğerci on 22.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var yemekliste = [YemekModel]() // buradaki veri model deki veriler
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //Nesneleri Oluşturma
        let y1 = YemekModel(yemekId: 1, yemekAdı: "Ayran", yemekResim: "ayran", yemekFiyat: 3.0)
        let y2 = YemekModel(yemekId: 2, yemekAdı: "Baklava", yemekResim: "baklava", yemekFiyat: 20.0)
        let y3 = YemekModel(yemekId: 3, yemekAdı: "Fanta", yemekResim: "fanta", yemekFiyat: 5.0)
        let y4 = YemekModel(yemekId: 4, yemekAdı: "Izgara Somon", yemekResim: "izgarasomon", yemekFiyat: 25.0)
        let y5 = YemekModel(yemekId: 5, yemekAdı: "Izgara Tavuk", yemekResim: "izgaratavuk", yemekFiyat: 15.0)
        let y6 = YemekModel(yemekId: 6, yemekAdı: "Kadayıf", yemekResim: "kadayif", yemekFiyat: 16.0)
        let y7 = YemekModel(yemekId: 7, yemekAdı: "Kahve", yemekResim: "kahve", yemekFiyat: 6.0)
        let y8 = YemekModel(yemekId: 8, yemekAdı: "Köfte", yemekResim: "kofte", yemekFiyat: 15.0)
        let y9 = YemekModel(yemekId: 9, yemekAdı: "Lazanya", yemekResim: "lazanya", yemekFiyat: 21.0)
        let y10 = YemekModel(yemekId: 10, yemekAdı: "Makarna", yemekResim: "makarna", yemekFiyat: 13.0)
        let y11 = YemekModel(yemekId: 11, yemekAdı: "Pizza", yemekResim: "pizza", yemekFiyat: 18.0)
        let y12 = YemekModel(yemekId: 12, yemekAdı: "Su", yemekResim: "su", yemekFiyat: 1.0)
        let y13 = YemekModel(yemekId: 13, yemekAdı: "Sütlaç", yemekResim: "sutlac", yemekFiyat: 10.0)
        let y14 = YemekModel(yemekId: 14, yemekAdı: "Tiramisu", yemekResim: "tiramisu", yemekFiyat: 16.0)
        //Verilerin Listeye Eklenmesi
        yemekliste.append(y1)
        yemekliste.append(y2)
        yemekliste.append(y3)
        yemekliste.append(y4)
        yemekliste.append(y5)
        yemekliste.append(y6)
        yemekliste.append(y7)
        yemekliste.append(y8)
        yemekliste.append(y9)
        yemekliste.append(y10)
        yemekliste.append(y11)
        yemekliste.append(y12)
        yemekliste.append(y13)
        yemekliste.append(y14)


        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource,YemekTableViewCellProtocol {
    func yemekSıparısVer(indexPath: IndexPath) {
        let gelenYemek = yemekliste[indexPath.row]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yemekliste.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenYemek = yemekliste[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! YemekTableViewCell
        cell.yemekIsımLabel.text = gelenYemek.yemekAdı
        cell.yemekFiyatLabel.text = "\(gelenYemek.yemekFiyat!) TL "
        cell.yemekImageView.image = UIImage(named: gelenYemek.yemekResim!)
        
        cell.cellProtocol = self
        cell.indexPath = indexPath
        return cell
     
        
    }
    
    
    
}

