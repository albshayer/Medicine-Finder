//
//  PharmacyDetailsVC.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/19/20.
//

import UIKit
var name = String()
var image = UIImage()
var address = String()


class PharmacyDetailsVC: UIViewController {
    var pharmacy: Pharmacy!
    @IBOutlet weak var pharmacyImage: UIImageView!
    @IBOutlet weak var pharmacyNameLabel: UILabel!
        override func viewDidLoad() {
        super.viewDidLoad()
        setPharmacyDetails()
        pharmacyImage.layer.cornerRadius = pharmacyImage.frame.width / 2

        // Do any additional setup after loading the view.
    }
    func setPharmacyDetails(){
        pharmacyImage.image = UIImage(named: pharmacy.name)
        pharmacyNameLabel.text = pharmacy.name
    }
     
    @IBAction func buttonLocation(_ sender: Any) {
        if let url = NSURL(string: pharmacy.locationUrl){
            UIApplication.shared.openURL(url as URL)
            }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
