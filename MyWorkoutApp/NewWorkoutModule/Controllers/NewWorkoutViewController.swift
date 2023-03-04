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
    
    private lazy var closeButton = CloseButton(type: .system)
    
    private let nameView = NameView()
    
    private let dateAndrepeatView = DateAndRepeatView()
    
    private let repsOrTimerView = RepsOrTimerView()
    
    private lazy var saveButton = GreenButton(text: "Save")
    
    private var stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        configure()
        setConstraints()
    }
    
    private func setupViews() {
       
        stackView = UIStackView(arrangedSubviews: [nameView, dateAndrepeatView, repsOrTimerView], axis: .vertical, spacing: 10)
        view.setView(nameViewCotrollersLabel)
        view.setView(closeButton)
        view.setView(stackView)
        view.setView(saveButton)
    }
   
    
    private func configure() {
        closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
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
            
            stackView.topAnchor.constraint(equalTo: nameViewCotrollersLabel.bottomAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            nameView.heightAnchor.constraint(equalToConstant: 60),
            dateAndrepeatView.heightAnchor.constraint(equalToConstant: 115),
            repsOrTimerView.heightAnchor.constraint(equalToConstant: 340),
            
            saveButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 25),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            saveButton.heightAnchor.constraint(equalToConstant: 55)
        ])
      
    }
}


