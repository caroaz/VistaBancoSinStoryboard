
import UIKit

class FinanceViewCell: UITableViewCell {
    
    var dateLabel = UILabel()
    var financeLabel = UILabel()
    
    func   prepare () {
        contentView.addSubview(financeLabel)
        contentView.addSubview(dateLabel)
        
        confFinanceLabel ()
        financeConstraint ()
        dateLabelConstraint ()
        confDateLabel()
    }
    func confDateLabel() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateLabel.text = dateFormatter.string(from: Date())
    }
    func confFinanceLabel () {
        financeLabel.text = "Finance Plan"
        financeLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
    }
    func financeConstraint () {
        financeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            financeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
            financeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant:  -20)
        ])
    }
    func dateLabelConstraint () {
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
            dateLabel.bottomAnchor.constraint(equalTo: financeLabel.topAnchor, constant:  -10)
        ])
    }
}
