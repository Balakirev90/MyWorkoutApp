//
//  WeatherView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 22.02.2023.
//

import UIKit

class WeatherView: UIView {
    
    private let wheaterImageView: UIImageView = {
        let view = UIImageView()
        view.image = Resources.Image.sunnyImage
        return view
    }()

    private let weatherLabel = UILabel(text: "Солнечно", font: .robotoMedium18(), textColor: .specialGray)
    
    private let weatherDescriptionLabel = UILabel(text: "Хорошая погода, чтобы позаниматься на улице", font: .robotoMedium14(), textColor: .specialLine)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
        addShadowOnView()
    }
    

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    private func setupViews() {
        setView(wheaterImageView)
        setView(weatherLabel)
        setView(weatherDescriptionLabel)
        backgroundColor = .white
        layer.cornerRadius = 10
        weatherDescriptionLabel.numberOfLines = 0
    }
    }

    extension WeatherView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            wheaterImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            wheaterImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            wheaterImageView.heightAnchor.constraint(equalToConstant: 65),
            wheaterImageView.widthAnchor.constraint(equalToConstant: 65),
            
            weatherLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            weatherLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherLabel.trailingAnchor.constraint(equalTo: wheaterImageView.leadingAnchor, constant: 10),
            
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 10),
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: wheaterImageView.leadingAnchor, constant: -10),
            weatherDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10)
        ])
    }

}
