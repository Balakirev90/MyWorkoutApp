//
//  RepsOrTimerView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//
import UIKit

class RepsOrTimerView: UIView {
    
    let repsOrTimerLabel = UILabel(textSize14: "Reps or timer")
    let chooseLabel = UILabel(textSize14: "Choose repeat or timer")
    
    let backgroundRepsOrTimeView: UIView = {
            let view = UIView()
            view.backgroundColor = .specialBrown
            view.layer.cornerRadius = 10
            return view
        }()
    
    private let setsView = SliderAndLabelView(text: "Sets", countText: "4")
    private let repsView = SliderAndLabelView(text: "Reps", countText: "10")
    private let timerView = SliderAndLabelView(text: "Timer", countText: "1 min 30 sec")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        setView(repsOrTimerLabel)
        setView(backgroundRepsOrTimeView)
        setView(setsView)
        setView(chooseLabel)
        setView(repsView)
        setView(timerView)
        chooseLabel.textAlignment = .center
    }
    
    private func configure() {
        backgroundColor = .specialBackground
        layer.cornerRadius = 10
    }
}

    extension RepsOrTimerView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            repsOrTimerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            repsOrTimerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            repsOrTimerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
//            repsOrTimerLabel.heightAnchor.constraint(equalToConstant: 20),
            
            backgroundRepsOrTimeView.topAnchor.constraint(equalTo: repsOrTimerLabel.bottomAnchor, constant: 0),
            backgroundRepsOrTimeView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundRepsOrTimeView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            backgroundRepsOrTimeView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            setsView.topAnchor.constraint(equalTo: backgroundRepsOrTimeView.topAnchor, constant: 10),
            setsView.leadingAnchor.constraint(equalTo: backgroundRepsOrTimeView.leadingAnchor, constant: 10),
            setsView.trailingAnchor.constraint(equalTo: backgroundRepsOrTimeView.trailingAnchor, constant: -10),
        
            chooseLabel.topAnchor.constraint(equalTo: setsView.bottomAnchor, constant: 10),
            chooseLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            chooseLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7),
//            chooseLabel.heightAnchor.constraint(equalToConstant: 20),
            
            repsView.topAnchor.constraint(equalTo: chooseLabel.bottomAnchor, constant: 0),
            repsView.leadingAnchor.constraint(equalTo: backgroundRepsOrTimeView.leadingAnchor, constant: 10),
            repsView.trailingAnchor.constraint(equalTo: backgroundRepsOrTimeView.trailingAnchor, constant: -10),
            
            timerView.topAnchor.constraint(equalTo: repsView.bottomAnchor, constant: 20),
            timerView.leadingAnchor.constraint(equalTo: backgroundRepsOrTimeView.leadingAnchor, constant: 10),
            timerView.trailingAnchor.constraint(equalTo: backgroundRepsOrTimeView.trailingAnchor, constant: -10),
        
        ])
    }

}


