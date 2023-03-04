//
//  SliderAndLabelView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//

import UIKit

class SliderView: UIView {
    
    private let nameLabel = UILabel(text: "Name", font: .robotoMedium18(), textColor: .specialGray)
    private let numberLabel = UILabel(text: "0", font: .robotoMedium24(), textColor: .specialGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    
    convenience init(name: String, minValue: Float, maxValue: Float) {
        self.init(frame: .zero)
        nameLabel.text = name
        valueSlider.minimumValue = minValue
        valueSlider.maximumValue = maxValue
        setupViews()
        configure()
        setConstraints()
        
    }

    private lazy var valueSlider = GreenSlider()
        
    private var stackView = UIStackView()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
        
        let labelStackView = UIStackView(arrangedSubviews: [nameLabel,numberLabel] , axis: .horizontal, spacing: 10)
        labelStackView.distribution = .equalSpacing
        
        stackView = UIStackView(arrangedSubviews: [labelStackView, valueSlider], axis: .vertical, spacing: 10)
        
        setView(stackView)
        
    }
    
    private func configure() {
        valueSlider.addTarget(self, action: #selector(sliderTapped), for: .valueChanged)
        stackView.distribution = .equalSpacing
        backgroundColor = .none
        layer.cornerRadius = 10
    }
    
    @objc private func sliderTapped() {
        print("\(valueSlider.value)")
    }
    
}

    extension SliderView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
//
//            valueSlider.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 0),
//            valueSlider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            valueSlider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//            valueSlider.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
//        ])
    }

}



