//
//  MedicineDetailsVC.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/19/20.
//

import UIKit
var name1 = String()
var price = Bool()
var instock = Bool()
var details = String()
var image1 = UIImage()


class MedicineDetailsVC: UIViewController {
    var selectedMedicine: Medicine!
    
    @IBOutlet weak var medicineImage: UIImageView!
    @IBOutlet weak var medicineNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var inStockLabel: UILabel!
    @IBOutlet weak var pharmaceisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMedicineDetails()
        

        // Do any additional setup after loading the view.
    }
    
    func setMedicineDetails(){
        medicineImage.image = UIImage(named: selectedMedicine.name1)
        medicineNameLabel.text = selectedMedicine.name1
        priceLabel.text = selectedMedicine.price
        detailsLabel.text = selectedMedicine.details
        pharmaceisLabel.text = selectedMedicine.pharmacy
        if selectedMedicine.inStock == true {
            inStockLabel.text = "instock"
        }else{
            inStockLabel.text = "out of stock"
        }
//        inStockLabel.text = medicine.inStock
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
