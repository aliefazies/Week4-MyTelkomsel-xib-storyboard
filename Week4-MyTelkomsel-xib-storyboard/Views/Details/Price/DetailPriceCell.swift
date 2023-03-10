//
//  DetailPriceCell.swift
//  Week4-MyTelkomsel-xib-storyboard
//
//  Created by Alief Ahmad Azies on 07/03/23.
//

import UIKit

class DetailPriceCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var priceBeforeLabel: UILabel!
    @IBOutlet weak var priceAfterLabel: UILabel!
    
    static let identifier = "detailPriceCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupDetailPriceData(before: String, after: String) {
        if before.isEmpty {
            priceBeforeLabel.text = before
            priceBeforeLabel.isHidden = true
            priceAfterLabel.text = after
            priceAfterLabel.textColor = UIColor.black
        } else {
            let attributeString: NSMutableAttributedString = NSMutableAttributedString(string: before)
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSRange(location: 0, length: attributeString.length))
            priceBeforeLabel.attributedText = attributeString
            priceAfterLabel.text = after
        }
        
    }
    
    func setupDetailPriceUI() {
        priceBeforeLabel.font = UIFont.systemFont(ofSize: 14)
        priceAfterLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        
        priceBeforeLabel.textColor = UIColor(rgb: 0x747D8C)
        priceAfterLabel.textColor = UIColor(rgb: 0xEC2028)
    }

}
