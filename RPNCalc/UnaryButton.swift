//
//  UnaryButton.swift
//  RPNCalc
//
//  Created by Finbar Allan on 02/10/2023.
//

import Foundation

import UIKit

class UnaryButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 15
        layer.masksToBounds = true
    }
}
