//
//  MemeMe.swift
//  MemeMe1.0
//
//  Created by malak Ahmad on 4/2/19.
//  Copyright © 2019 Udacity. All rights reserved.
//
import Foundation
import UIKit

struct Meme {
    var topTextField: String!
    var bottomTextField: String!
    var originalImage: UIImage!
    var memedImage: UIImage!
    
    init(topTextField: String, bottomTextField: String, originalImage: UIImage, memedImage: UIImage) {
        self.topTextField = topTextField
        self.bottomTextField = bottomTextField
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
