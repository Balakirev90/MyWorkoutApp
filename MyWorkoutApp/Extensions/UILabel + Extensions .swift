//
//  UILabel + Extensions .swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 25.02.2023.
//

import UIKit

extension UILabel {
    
    convenience init (textSize14: String) {
        self.init()
        self.text = textSize14
        translatesAutoresizingMaskIntoConstraints = false
        font = .robotoMedium14()
        textColor = .specialLightBrown
    }
    
    convenience init (textSize18: String) {
        self.init()
        self.text = textSize18
        translatesAutoresizingMaskIntoConstraints = false
        font = .robotoMedium18()
        textColor = .specialGray
        
    }
    
}


