//
//  BudgetsViewCell.swift
//  VistaBancoSinStoryboard
//
//  Created by Mobdev on 07-04-22.
//

import UIKit

class BudgetsViewCell: UITableViewCell {
    
    var dataLabel = UILabel()

    func prepare(){
        contentView.addSubview(dataLabel)
        confDataLabel()
        dataLabelConstraint()
    }
    
    
    private func confDataLabel(){
        dataLabel.text = "Budgets"
        dataLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        
    }

    private func dataLabelConstraint() {
        
        dataLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dataLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            dataLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
            
        ])
        
    }
}
