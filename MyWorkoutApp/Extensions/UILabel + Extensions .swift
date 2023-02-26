//
//  UILabel + Extensions .swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 25.02.2023.
//

import UIKit

extension UILabel {
    
    convenience init (text: String) {
        self.init()
        self.text = text
        translatesAutoresizingMaskIntoConstraints = false
        font = .robotoMedium14()
        textColor = .specialLightBrown
    }
    
}


