//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Aysu on 12.02.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,
    UITableViewDataSource
{
//    var secilenSehirIsim: String = ""
//    var secilenSehirBolge: String = ""
//    var secilenSehirResim: String = ""
    var sehir : Sehirler?
    @IBOutlet weak var tableView: UITableView!
    var sehirler: [Sehirler] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        sehirler = [
            Sehirler(
                sehirIsmi: "Ordu",
                sehirBolgesi: "Karadeniz",
                sehirResmi: "ordu"
            ),
            Sehirler(
                sehirIsmi: "Bursa",
                sehirBolgesi: "Marmara",
                sehirResmi: "bursa"
            ),
            Sehirler(
                sehirIsmi: "İstanbul",
                sehirBolgesi: "Marmara",
                sehirResmi: "istanbul"
            ),
            Sehirler(
                sehirIsmi: "Sivas",
                sehirBolgesi: "İç Anadolu",
                sehirResmi: "sivas"
            ),
        ]
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)
        -> Int
    {
        return sehirler.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
        -> UITableViewCell
    {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirler[indexPath.row].sehirIsmi
        return cell
    }

    func tableView(
        _ tableView: UITableView,
        editingStyleForRowAt indexPath: IndexPath,
        commit editingStyle: UITableViewCell.EditingStyle
    ) {
        if editingStyle == .delete {
            sehirler.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }

    }
    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        print("Tapped")
        sehir = sehirler[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as? DetailsSehirler
//            destinationVC?.secilenSehirIsmi = secilenSehirIsim
//            destinationVC?.secilenSehirBolgesi = secilenSehirBolge
//            destinationVC?.secilenSehirResmi = secilenSehirResim
            destinationVC?.sehirinKendisi = sehir!
        }
    }
}
