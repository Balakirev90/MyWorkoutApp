//
//  CloseButton.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 04.03.2023.
//

import UIKit



class CloseButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        setBackgroundImage(Resources.Image.closeButton, for: .normal)
    }
    
}
