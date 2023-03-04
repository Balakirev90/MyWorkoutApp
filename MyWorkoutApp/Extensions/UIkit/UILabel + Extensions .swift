//
//  UILabel + Extensions .swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 25.02.2023.
//

import UIKit

extension UILabel {
    
    convenience init (text: String = "", font: UIFont?, textColor: UIColor ) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = textColor
        self.adjustsFontSizeToFitWidth = true
        self.minimumScaleFactor = 0.7
    }
    
}


