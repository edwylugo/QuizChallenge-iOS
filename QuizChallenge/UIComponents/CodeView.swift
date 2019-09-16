//
//  CodeView.swift
//  QuizChallenge
//
//  Created by Edwy Lugo on 14/09/19.
//  Copyright © 2019 ArcTouch. All rights reserved.
//

public protocol CodeView: AnyObject {
    func setupViews()
    func configureViews()
    func setupViewHierarchy()
    func setupConstraints()
}

extension CodeView {
    public func setupViews() {
        configureViews()
        setupViewHierarchy()
        setupConstraints()
    }
}

