
import UIKit

class DetailViewCell: UITableViewCell {
    
    var incomesView = UIView()
    var expensesView = UIView()
    var incomesLabel = UILabel()
    var amountIncomesLabel = UILabel()
    var expensesLabel = UILabel()
    var amountExpensesLabel = UILabel()
 
    func prepare() {
        contentView.addSubview(incomesView)
        contentView.addSubview(expensesView)
        incomesConstraint ()
        confIncomesView()
        confExpensesView()
        expensesConstraint()
        incomesLabelConstraint()
        confLabelIncome()
        confLabelAmountincomes()
        amountIncomesLabelConstraint()
        confLabelAmountExpenses()
        confLabelExpenses()
        expensesLabelConstraint()
        amountExpensesLabelConstraint()
    }

    private func confIncomesView(){
        incomesView.backgroundColor = .lightGray
        incomesView.addSubview(incomesLabel)
        incomesView.addSubview(amountIncomesLabel)
        incomesView.layer.cornerRadius = 5
        
        
    }
    
    private func confExpensesView() {
        expensesView.backgroundColor = .lightGray
        expensesView.addSubview(expensesLabel)
        expensesView.addSubview(amountExpensesLabel)
        expensesView.layer.cornerRadius = 5
    }
    private func incomesConstraint () {
        incomesView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            incomesView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
                        incomesView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            incomesView.heightAnchor.constraint(equalToConstant: 120),
            incomesView.widthAnchor.constraint(equalToConstant: 180),

            
        ])
    }
    private func confLabelAmountincomes(){
        amountIncomesLabel.text = "$ 5978.22"
        amountIncomesLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
    }
    private func confLabelIncome(){
        incomesLabel.text = "Incomes"
    }
    
    private func confLabelAmountExpenses(){
        amountExpensesLabel.text = "$ 4535.12"
        amountExpensesLabel.font = UIFont.boldSystemFont(ofSize: 20)
        
    }
    private func confLabelExpenses(){
        expensesLabel.text = "Expenses"
    }
    private func expensesConstraint () {
       expensesView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            expensesView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10),
            expensesView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            expensesView.heightAnchor.constraint(equalToConstant: 120),
            expensesView.widthAnchor.constraint(equalToConstant: 180)
            
      ])
    }
    
    private func incomesLabelConstraint(){
        incomesLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            incomesLabel.centerYAnchor.constraint(equalTo: incomesView.centerYAnchor),
            incomesLabel.leadingAnchor.constraint(equalTo: incomesView.leadingAnchor, constant: 5)
        ])
    }
    private func amountIncomesLabelConstraint(){
        amountIncomesLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amountIncomesLabel.topAnchor.constraint(equalTo: incomesLabel.bottomAnchor,constant: 10),
            amountIncomesLabel.leadingAnchor.constraint(equalTo: incomesView.leadingAnchor, constant: 5),

        ])
    }
    
    private func expensesLabelConstraint(){
        expensesLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            expensesLabel.centerYAnchor.constraint(equalTo: expensesView.centerYAnchor),
            expensesLabel.leadingAnchor.constraint(equalTo: expensesView.leadingAnchor, constant: 5)
        ])
    }
    private func amountExpensesLabelConstraint(){
        amountExpensesLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            amountExpensesLabel.topAnchor.constraint(equalTo: expensesLabel.bottomAnchor,constant: 10),
            amountExpensesLabel.leadingAnchor.constraint(equalTo: expensesView.leadingAnchor, constant: 5),

        ])
    }
    
        

}
