//
//  RepsOrTimerView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//
import UIKit

class RepsOrTimerView: UIView {
    
    private let repsOrTimerLabel = UILabel(text: "Reps or timer", font: .robotoMedium14(), textColor: .specialLightBrown)
    private let chooseLabel = UILabel(text: "Choose repeat or timer", font: .robotoMedium14(), textColor: .specialLightBrown)
    
    private let backgroundView = BackgroundView()
    
    private let setsView = SliderView(name: "Sets", minValue: 0, maxValue: 100)
    private let repsView = SliderView(name: "Reps", minValue: 0, maxValue: 50)
    private let timerView = SliderView(name: "Timer", minValue: 0, maxValue: 300)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        configure()
        setConstraints()

    }
    
    private var stackView = UIStackView()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        stackView = UIStackView(arrangedSubviews: [setsView,chooseLabel,repsView,timerView]  , axis: .vertical, spacing: 20)
        setView(repsOrTimerLabel)
        setView(backgroundView)
        setView(stackView)
        chooseLabel.textAlignment = .center
    }
    
    private func configure() {
        backgroundColor = .none
        layer.cornerRadius = 10
    }
}

    extension RepsOrTimerView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            repsOrTimerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            repsOrTimerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            repsOrTimerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
            repsOrTimerLabel.heightAnchor.constraint(equalToConstant: 20),
            
            backgroundView.topAnchor.constraint(equalTo: repsOrTimerLabel.bottomAnchor, constant: 0),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            chooseLabel.heightAnchor.constraint(equalToConstant: 20),
            
            stackView.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 5),
            stackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20)
        ])
    }
}


