//
//  MainTopView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 21.02.2023.
//

import UIKit

class MainTopView: UIView {
    
    private let userPhotoImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = Resources.Colors.userPhoto
        view.layer.borderColor = Resources.Colors.whiteColor.cgColor
        view.layer.borderWidth = 5
        return view
    }()
    
    private let calendarView: UIView = {
        let view = UIView()
        view.backgroundColor = Resources.Colors.calendarView
        view.layer.cornerRadius = 10
        return view
    }()
    
    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Mikhail Balakirev"
        label.textColor = .black
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        userPhotoImageView.layer.cornerRadius = userPhotoImageView.frame.width / 2
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    private func setupViews() {
        setView(calendarView)
        setView(userPhotoImageView)
        setView(userNameLabel)
    }
}

extension MainTopView {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            userPhotoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            userPhotoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            userPhotoImageView.widthAnchor.constraint(equalToConstant: 100),
            userPhotoImageView.heightAnchor.constraint(equalToConstant: 100),
            
            calendarView.topAnchor.constraint(equalTo: userPhotoImageView.centerYAnchor),
            calendarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            calendarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            calendarView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            
            userNameLabel.leadingAnchor.constraint(equalTo: userPhotoImageView.trailingAnchor, constant: 10),
            userNameLabel.bottomAnchor.constraint(equalTo: calendarView.topAnchor, constant: -10),
            userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        
        ])
    }
}
