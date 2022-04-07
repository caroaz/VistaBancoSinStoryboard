

import UIKit

class ViewController: UIViewController {
    
    
    let buttonVC = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        configureButton()
        buttonVC.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        buttonVC.center = view.center
    }
    @objc func didTapButton () {
        let tabBarVC = UITabBarController()
        let vc1 = UINavigationController(rootViewController: vc1())
        vc1.title = "Finance Plan"
        tabBarVC.setViewControllers([vc1], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        for item in items {
            item.image = UIImage(named: "stadistics")
        }
    }
    func configureButton(){
        buttonVC.configuration = .gray()
        buttonVC.configuration?.baseForegroundColor = .white
        //            buttonVC.setTitle("Click Here", for: .normal)
        buttonVC.configuration?.title = "Click Here"
        buttonVC.configuration?.baseBackgroundColor = .blue
        
        buttonConstraint()
    }
    func buttonConstraint() {
        view.addSubview(buttonVC)
        buttonVC.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonVC.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonVC.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonVC.widthAnchor.constraint(equalToConstant: 200),
            buttonVC.heightAnchor.constraint(equalToConstant: 100)
            
        ])
        
    }
}
