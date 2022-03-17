//
//  CadastroDoacaoTableViewCell.swift
//  iPet
//
//  Created by Bruno Lopes on 14/03/22.
//

import UIKit

class CadastroDoacaoTableViewCell: UITableViewCell {

    static let identifier: String = "CadastroDoacaoTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    @IBOutlet weak var petNameLabel: UILabel!
    @IBOutlet weak var petNameTextField: UITextField!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var locationSegmentedControl: UISegmentedControl!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var petSexLabel: UILabel!
    @IBOutlet weak var petSexSegmentedControl: UISegmentedControl!
    @IBOutlet weak var breedLabel: UILabel!
    @IBOutlet weak var breedTextField: UITextField!
    @IBOutlet weak var approximatelyPetAgeLabel: UILabel!
    @IBOutlet weak var petAgeLabel: UILabel!
    @IBOutlet weak var petAgeSlider: UISlider!
    @IBOutlet weak var petSizeLabel: UILabel!
    @IBOutlet weak var petSizeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var castratedLabel: UILabel!
    @IBOutlet weak var castratedSwitch: UISwitch!
    @IBOutlet weak var vaccinatedLabel: UILabel!
    @IBOutlet weak var vaccinatedSwitch: UISwitch!
    @IBOutlet weak var wormedLabel: UILabel!
    @IBOutlet weak var wormedSwitch: UISwitch!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func didTapLocationSegmentedControl(_ sender: UISegmentedControl) {
    }
    
    @IBAction func didTapPeTSexSegmentedControl(_ sender: UISegmentedControl) {
    }
    
    @IBAction func didChangePetAgeSlider(_ sender: UISlider) {
    }
    
    @IBAction func didTapPetSizeSegmentedControl(_ sender: UISegmentedControl) {
    }
    
    @IBAction func didTapCastratedSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func didTapVaccinatedSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func didTapWormedSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func didTapSignUpButton(_ sender: UIButton) {
    }
     
}
