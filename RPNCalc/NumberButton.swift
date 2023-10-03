//
//  NumberButton.swift
//  RPNCalc
//
//  Created by Finbar Allan on 02/10/2023.
//

import Foundation

import UIKit

class NumberButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
        layer.masksToBounds = true
    }
}
