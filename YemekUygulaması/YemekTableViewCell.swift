//
//  YemekTableViewCell.swift
//  YemekUygulaması
//
//  Created by  Samet Eğerci on 22.07.2024.
//

import UIKit
protocol YemekTableViewCellProtocol {
    func yemekSıparısVer(indexPath:IndexPath)
}




// butona tıklama işlemini viewController daki cell fonksiyonun dan denetliyeceğin için butona belirtmek için protocol oluşturucaksın
// protocolün içinde func olucak indexPath isteyen
// protocole değer atıcaksın siparişverbutonuda kullanmak için nesney oluşturuyorsun yani
// protocolde istenen indexPath içinde nesne oluşturacaksın
// bu verileri viewController a gönderebilmek için yaptık



class YemekTableViewCell: UITableViewCell {
    @IBOutlet weak var yemekImageView: UIImageView!
    @IBOutlet weak var yemekIsımLabel: UILabel!
    @IBOutlet weak var yemekFiyatLabel: UILabel!
    
    var cellProtocol:YemekTableViewCellProtocol?
    var indexPath:IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func sıparisVerButtonClicked(_ sender: Any) {
        cellProtocol?.yemekSıparısVer(indexPath: indexPath!)
        
        
    }
}
