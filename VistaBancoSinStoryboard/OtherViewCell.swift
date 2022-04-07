//
//  OtherViewCell.swift
//  VistaBancoSinStoryboard
//
//  Created by Mobdev on 07-04-22.
//

import UIKit

class OtherViewCell: UITableViewCell {

   var  otherLabel = UILabel()
    var  moneyLabel = UILabel()
    var imageIcon = UIImageView()
    
    func prepare() {
        contentView.addSubview(imageIcon)
        contentView.addSubview(otherLabel)
        contentView.addSubview(moneyLabel)
        confOtherLabel()

        imageIconConstraint ()
        otherLabelConstraint ()
        confMoneyLabel()
        moneyLabelConstraint ()
    }
    
    
    func confOtherLabel() {
        
        otherLabel.font = UIFont.boldSystemFont(ofSize: 18)
        
    }
    func confMoneyLabel() {
        

        moneyLabel.textColor = .green
        
    }

    private func imageIconConstraint () {
        imageIcon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
            
            imageIcon.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageIcon.widthAnchor.constraint(equalToConstant: 40),
            imageIcon.heightAnchor.constraint(equalToConstant: 40)
            
            
        ])
    }
    private func otherLabelConstraint () {
        otherLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            otherLabel.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor,constant: 20),
            
            otherLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30)

        ])
    }
    private func moneyLabelConstraint () {
        moneyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            moneyLabel.leadingAnchor.constraint(equalTo: imageIcon.trailingAnchor,constant: 20),
            
            moneyLabel.topAnchor.constraint(equalTo: otherLabel.bottomAnchor, constant: 5)

        ])
    }
}
