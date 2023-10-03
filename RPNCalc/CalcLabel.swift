//
//  CalcLabel.swift
//  RPNCalc
//
//  Created by Finbar Allan on 02/10/2023.
//

import Foundation

import UIKit

class CalcLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
}
