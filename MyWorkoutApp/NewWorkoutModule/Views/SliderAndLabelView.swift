//
//  SliderAndLabelView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//

import UIKit

class SliderAndLabelView: UIView {
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .robotoMedium18()
        label.textColor = .specialGray
        return label
    }()
    
    var countLabel: UILabel = {
        let label = UILabel()
        label.font = .robotoMedium22()
        label.textColor = .specialGray
        return label
    }()

    private lazy var valueSlider: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.maximumTrackTintColor = .specialLightBrown
        slider.minimumTrackTintColor = .specialGreen
        slider.addTarget(self, action: #selector(sliderTapped), for: .valueChanged)
        return slider
    }()
    
    private var stackView = UIStackView()
    
    init(text: String?, countText: String? ) {
        super.init(frame: .zero)
        setupViews()
        setConstraints()
        descriptionLabel.text = text
        countLabel.text = countText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        stackView = UIStackView(arrangedSubviews: [descriptionLabel, countLabel], axis: .horizontal, spacing: 10)
        setView(stackView)
        setView(valueSlider)
    }
    
    private func configure() {
        backgroundColor = .specialBackground
        layer.cornerRadius = 10
    }
    
    @objc private func sliderTapped() {
        print("\(valueSlider.value)")
    }
    
}

    extension SliderAndLabelView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
                                           
            valueSlider.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 0),
            valueSlider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            valueSlider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            valueSlider.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
        ])
    }

}



