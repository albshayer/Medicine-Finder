//
//  MedicineVC.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/14/20.
//

import UIKit

class MedicineVC: UITableViewController, UISearchBarDelegate {
    
    
    let datamedicine = [ "asonor", "Gaviscon", "Minisec", "Panadol", "Tobrex", "Vitamin A", "Vitamin B", "Vitamin C", "Zyrtec"]
    var filteredData: [String]!
    
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
            super.viewDidLoad()
      searchBar.delegate = self
        filteredData = datamedicine
        }

   
        // MARK: - Table view data source

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return filteredData.count
        }

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MedicineCell

            cell.medicineLabel.text = medicineData[indexPath.row].name1
            cell.medicineImage.image = UIImage(named: medicineData[indexPath.row].name1)
//            cell.textLabel?.text = filteredData[indexPath.row]
            return cell
        }
    
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let medicine = medicineData[indexPath.row]
        performSegue(withIdentifier: "details", sender: medicine)
       }
    
       override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            160
       }
        
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let sender = sender as! Medicine
            let vc = segue.destination as! MedicineDetailsVC
            vc.selectedMedicine = sender
         }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == ""{
       filteredData = datamedicine
         }else{
          for medicines in datamedicine {
            if medicines.lowercased().contains(searchText.lowercased()){
             filteredData.append(medicines)
              }
             }
          }
         self.tableView.reloadData()
      }
   }
