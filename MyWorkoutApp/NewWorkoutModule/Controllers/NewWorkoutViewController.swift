//
//  NewWorkoutViewController.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 01.03.2023.
//

import UIKit

class NewWorkoutViewController : UIViewController {
    
    private let nameViewCotrollersLabel: UILabel = {
        let label = UILabel()
        label.text = "NEW WORKOUT"
        label.font = .robotoMedium22()
        label.textColor = .specialGray
        label.textAlignment = .center
        return label
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(Resources.Image.closeButton, for: .normal)
        button.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let nameView = NameView()
    
    private let dateAndrepeatView = DateAndRepeatView()
    
    private let repsOrTimerView = RepsOrTimerView()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.backgroundColor = .specialGreen
        button.tintColor = .white
        button.setTitle("Save", for: .normal)
        button.titleLabel?.font = .robotoBold16()
        button.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        configure()
        setConstraints()
    }
    
    private func setupViews() {
        view.setView(nameViewCotrollersLabel)
        view.setView(closeButton)
        view.setView(nameView)
        view.setView(dateAndrepeatView)
        view.setView(repsOrTimerView)
        view.setView(saveButton)

    }
   
    
    private func configure() {
        view.backgroundColor = .specialBackground
        
    }
    
    @objc private func closeButtonTapped() {
        dismiss(animated: true)
    }
    
    @objc private func saveButtonTapped() {
        print("saveButton")
    }
}

extension NewWorkoutViewController {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameViewCotrollersLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nameViewCotrollersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameViewCotrollersLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            closeButton.centerYAnchor.constraint(equalTo: nameViewCotrollersLabel.centerYAnchor),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            closeButton.heightAnchor.constraint(equalToConstant: 35),
            closeButton.widthAnchor.constraint(equalToConstant: 35),
            
            nameView.topAnchor.constraint(equalTo: nameViewCotrollersLabel.bottomAnchor, constant: 10),
            nameView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            nameView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nameView.heightAnchor.constraint(equalToConstant: 60),
            
            dateAndrepeatView.topAnchor.constraint(equalTo: nameView.bottomAnchor, constant: 10),
            dateAndrepeatView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            dateAndrepeatView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            dateAndrepeatView.heightAnchor.constraint(equalToConstant: 110),
            
            repsOrTimerView.topAnchor.constraint(equalTo: dateAndrepeatView.bottomAnchor, constant: 10),
            repsOrTimerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            repsOrTimerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            repsOrTimerView.heightAnchor.constraint(equalToConstant: 350),
            
            saveButton.topAnchor.constraint(equalTo: repsOrTimerView.bottomAnchor, constant: 25),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            saveButton.heightAnchor.constraint(equalToConstant: 55)
    
        ])
      
    }
}


