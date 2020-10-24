//
//  PharmacyVC.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/14/20.
//

import UIKit

class PharmacyVC: UITableViewController, UISearchBarDelegate{
//    let datapharmacy: [Pharmacy]! = nil
    let datapharmacy = ["Royal Pharmacy","AlZahra Pharmacy","Bayan Pharmacy","Pharmatee Pharmacy","Farwaniya Pharmacy","Ahlam Pharmacy","CURE Pharmacy","Pharmazone"]
    var dataFiltered: [String]!
    
    @IBOutlet weak var pharmacySearch: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        pharmacySearch.delegate = self
        dataFiltered = datapharmacy
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataFiltered.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PharmacyCell
        
        cell.pharmacyLabel.text = PharmacyData[indexPath.row].name
        cell.pharmacyImage.image = UIImage(named: PharmacyData[indexPath.row].name)
        cell.pharmacyImage.layer.cornerRadius = cell.pharmacyImage.frame.width / 2
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pharmacy = PharmacyData[indexPath.row]
        performSegue(withIdentifier: "details", sender: pharmacy)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        160
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sender = sender as! Pharmacy
        let vc = segue.destination as! PharmacyDetailsVC
        vc.pharmacy = sender
        
    }
      func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
       dataFiltered = []
         if searchText == ""{
          dataFiltered = datapharmacy
        }else{
      for pharmaceis in datapharmacy {
           if pharmaceis.lowercased().contains(searchText.lowercased()){
            dataFiltered.append(pharmaceis)
          }
         }
      }
     self.tableView.reloadData()
  }
}
