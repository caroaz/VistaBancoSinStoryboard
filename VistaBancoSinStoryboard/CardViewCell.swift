
import UIKit
struct Card {
    let imageTrip: String
    let current : Double
    let total : Double
}

class CardViewCell: UITableViewCell {
    
    var card1 : Card? {
        didSet {prepare() }
    }
    var imageTrip = UIImageView()
    var cardView = UIView()
    var goalsLabel = UILabel()
    var oflabel = UILabel()
    var slider = UISlider()
    var leftLabel = UILabel()
    var spentMoneyLabel = UILabel()
    var tripLabel = UILabel()
    var button = UIButton ()
    
    func prepare() {
        
        contentView.addSubview(cardView)
        contentView.addSubview(goalsLabel)
        cardConstraint ()
        confCardView()
        confOfLabel ()
        ofLabelConstraint ()
        sliderConstraint()
        confSlider()
        confLeftLabel()
        leftLabelConstraint ()
        confSpentMoneyLabel()
        spentMoneyLabelConstraint ()
        confGoalsLabel()
        goalsConstraint()
        confImageTrip()
        imageTripConstraint()
        confTripLabel()
        tripLabelConstraint ()
        confButton()
        buttonConstraint ()
    }
    
    
    
    private func confCardView(){
        cardView.addSubview(oflabel)
        cardView.addSubview(slider)
        cardView.addSubview(leftLabel)
        cardView.addSubview(spentMoneyLabel)
        cardView.addSubview(imageTrip)
        cardView.addSubview(tripLabel)
        cardView.addSubview(button)
        cardView.backgroundColor = UIColor(patternImage: UIImage(named: "fondoazul.jpg")!)
        cardView.layer.cornerRadius = 5
       
    }
    
    private func confButton(){
        
        button.configuration = .filled()
        button.configuration?.title = "..."
        button.configuration?.baseBackgroundColor = .systemBlue
//        button.configuration?.baseBackgroundColor = .white
//        button.setTitle("...", for: .normal)
//        button.backgroundColor = .white
//        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
//        button.setTitleColor(.blue, for: .normal)
//        button.layer.cornerRadius = button.frame.size.width/2
//        button.clipsToBounds = true
//
    }
    
    private func confImageTrip(){
        imageTrip.image = UIImage(named: card1?.imageTrip ?? "")
    }
    private func confTripLabel(){
        tripLabel.text = "Trip To Japan"
        tripLabel.textColor = .white
    }
    private func confGoalsLabel() {
        goalsLabel.text  = "Goals"
        goalsLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }
    private func confSlider(){
        slider.center = self.cardView.center
        slider.minimumTrackTintColor = .blue
        slider.minimumValue = 1
        slider.maximumValue = Float(card1?.total ?? 0.0)
        slider.value = Float(card1?.current ?? 0.0)
        slider.setThumbImage(UIImage(), for: .normal)
    }
    
    private func confOfLabel (){
        
        oflabel.text = "Of: $\(card1?.total ?? 0.0)"
        oflabel.textColor = .white
        
    }
    private func confLeftLabel(){
        leftLabel.text  = "$\(Int (Double((card1?.total ?? 0.0)) - Double(card1?.current ?? 0.0))) left"
        leftLabel.textColor = .white
        
    }
    
    private func confSpentMoneyLabel(){
        spentMoneyLabel.text  = "$\(card1?.current ?? 0.0)"
        spentMoneyLabel.textColor = .white
        spentMoneyLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }
    private func cardConstraint () {
        cardView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
            cardView.topAnchor.constraint(equalTo: goalsLabel.bottomAnchor, constant: 10),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -10)
            
        ])
    }
    private func buttonConstraint () {
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -10),
            button.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            button.heightAnchor.constraint(equalToConstant: 40),
            button.widthAnchor.constraint(equalToConstant: 40)
            
            
            
        ])
    }
    private func goalsConstraint() {
        
        goalsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            goalsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            goalsLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            goalsLabel.heightAnchor.constraint(equalToConstant: 20)
            
        ])
        
    }
    
    private func imageTripConstraint() {
        
        imageTrip.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageTrip.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            imageTrip.topAnchor.constraint(equalTo: cardView.topAnchor,constant: 10),
            imageTrip.heightAnchor.constraint(equalToConstant: 30),
            imageTrip.widthAnchor.constraint(equalToConstant: 30)
            
            
        ])
        
    }
    private func tripLabelConstraint () {
        tripLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tripLabel.leadingAnchor.constraint(equalTo: imageTrip.trailingAnchor,constant: 10),
            
            tripLabel.centerYAnchor.constraint(equalTo: imageTrip.centerYAnchor),
            
            
            
        ])
    }
    private func ofLabelConstraint () {
        oflabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            oflabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 10),
            
            oflabel.bottomAnchor.constraint(equalTo: slider.topAnchor,constant: -10)
            
            
        ])
    }
    private func leftLabelConstraint () {
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leftLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -10),
            
            leftLabel.bottomAnchor.constraint(equalTo: slider.topAnchor,constant: -10)
            
            
        ])
    }
    
    private func spentMoneyLabelConstraint () {
        spentMoneyLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            spentMoneyLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 10),
            spentMoneyLabel.bottomAnchor.constraint(equalTo: oflabel.topAnchor,constant: -20),
      
        ])
    }
    
    private func sliderConstraint() {
        slider.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            slider.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            slider.bottomAnchor.constraint(equalTo: cardView.bottomAnchor,constant: -20),
            slider.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10)
            //            slider.widthAnchor.constraint(equalToConstant: 350)
        ])
    }
}
