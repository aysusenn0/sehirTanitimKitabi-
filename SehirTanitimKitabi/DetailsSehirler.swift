//
//  DetailsSehirler.swift
//  SehirTanitimKitabi
//
//  Created by Aysu on 13.02.2026.
//

import UIKit

class DetailsSehirler: UIViewController {
    //    var secilenSehirIsmi: String = ""
    //    var secilenSehirBolgesi: String = ""
    //    var secilenSehirResmi: String = ""
    var sehirinKendisi: Sehirler = Sehirler(
        sehirIsmi: "",
        sehirBolgesi: "",
        sehirResmi: ""
    )

    @IBOutlet weak var sehirBolgesi: UILabel!
    @IBOutlet weak var sehirIsmi: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        sehirIsmi.text = sehirinKendisi.sehirIsmi
        sehirBolgesi.text = sehirinKendisi.sehirBolgesi

        if !sehirinKendisi.sehirResmi.isEmpty {
            imageView.image = UIImage(named: sehirinKendisi.sehirResmi)
        }
    }
}
