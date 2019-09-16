//
//  KeywordCell.swift
//  QuizChallenge
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

import UIKit

class KeywordCell: UITableViewCell, Reusable {
    
    func setup(with answer: String?) {
        textLabel?.text = answer
    }
    
}
