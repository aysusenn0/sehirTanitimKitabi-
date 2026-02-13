//
//  Sehirler.swift
//  SehirTanitimKitabi
//
//  Created by Aysu on 12.02.2026.
//

import UIKit

class Sehirler: Identifiable {
    var id = UUID()
    var sehirIsmi: String
    var sehirBolgesi: String
    var sehirResmi : String

    init(sehirIsmi: String, sehirBolgesi: String, sehirResmi : String) {
        self.sehirIsmi = sehirIsmi
        self.sehirBolgesi = sehirBolgesi
        self.sehirResmi = sehirResmi
    }
}
