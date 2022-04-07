//
//  vc1.swift
//  VistaBancoSinStoryboard
//
//  Created by Mobdev on 07-04-22.
//

import UIKit

class vc1: UIViewController {

    
    struct Cells{
        static let mycell = "my cell"
        static let mycell2 = "my cell 2"
        static let mycell3 = "my cell 3"
        static let mycell4 = "my cell 4"
    }
    var tableView = UITableView ()
//    var tabBarVC = UITabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Plan"
        configureTableView()
        
    }
//    func conftabBar(){
//        tabBarVC.setViewControllers([vc1], animated: false)
//
//    }
    
    func configureTableView() {
        
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 300
        tableView.register(DetailViewCell.self, forCellReuseIdentifier: Cells.mycell)
        tableView.register(CardViewCell.self, forCellReuseIdentifier: Cells.mycell2)
        tableView.register(OtherViewCell.self, forCellReuseIdentifier: Cells.mycell3)
        tableView.register(BudgetsViewCell.self, forCellReuseIdentifier: Cells.mycell4)
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.pin(to :view)
        
    }
    func setTableViewDelegates(){
        tableView.dataSource = self
        tableView.delegate = self
    }
}



extension vc1: UITableViewDataSource {
    
    //    indica cuantas celdas queremos que tenga nuestra tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
        
        //        print(characterList)
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath.row{
        case .zero:
            let cell = tableView.dequeueReusableCell(withIdentifier:Cells.mycell) as! DetailViewCell
            cell.prepare()
            return cell
            
        case 1:
            let cellcard = tableView.dequeueReusableCell(withIdentifier:Cells.mycell2) as! CardViewCell
            cellcard.card1 = Card(imageTrip: "japon", current: 890.22, total: 1900.00)
            //            cellcard.prepare()
            return cellcard
        case 2:
            let budgetscell = tableView.dequeueReusableCell(withIdentifier: Cells.mycell4) as! BudgetsViewCell
            budgetscell.prepare()
            return budgetscell
            
        case 3:
            return prepareDataCell(tableView, key: "Food & Drink", content: "890.22",image: "burguer")
        case 4:
            return prepareDataCell(tableView, key: "Travel", content: "360.00",image: "vacations")
            
            
        default:
            return UITableViewCell()
        }
        
    }
    
    private func prepareDataCell(_ tableView: UITableView, key: String, content: String, image: String) -> OtherViewCell{
        let mylabelcell = tableView.dequeueReusableCell(withIdentifier: Cells.mycell3) as! OtherViewCell
        mylabelcell.otherLabel.text = key
        mylabelcell.moneyLabel.text = content
        mylabelcell.imageIcon.image = UIImage(named: image)
        
        mylabelcell.prepare()
        
        return mylabelcell
    }
    
    
}

extension vc1: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case .zero:
            return 150
        case 1:
            return 230
        case 2:
            return 50
        default:
            return 100
        }
    }
}
