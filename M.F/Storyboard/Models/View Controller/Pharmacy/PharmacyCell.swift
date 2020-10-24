//
//  PharmacyCell.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/14/20.
//

import UIKit

class PharmacyCell: UITableViewCell {

    @IBOutlet weak var pharmacyLabel: UILabel!
    @IBOutlet weak var pharmacyImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let lightgreenView = UIView(frame: bounds)
          lightgreenView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
          self.backgroundView = lightgreenView


          let darkgreenView = UIView(frame: bounds)
          darkgreenView.backgroundColor =  #colorLiteral(red: 0.2553907037, green: 0.4958263636, blue: 0.4971125126, alpha: 0.7577299736)
          self.selectedBackgroundView = darkgreenView
        
        // Initialization code
    }
    
    func configureCell(pharmcy: Pharmacy){
        self.pharmacyImage.image = UIImage(named: pharmcy.name)
        self.pharmacyLabel.text = pharmcy.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   

}
