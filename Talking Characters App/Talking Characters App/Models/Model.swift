//
//  Model.swift
//  Talking Characters App
//
//  Created by Dillon P on 8/1/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import Foundation
import UIKit

extension Int {
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string }
        return string
    }
}

class Model {
    static let shared = Model()
    private init() {}
    
    enum Animation: String, CaseIterable {
        case bureaucrat = "Talking Bureaucrat"
        case frog = "Talking Frog"
        case ranger = "Talking Ranger"
        case vendor = "Talking Vendor"
        case bot = "Talking Woodbot"
    }
    
    private let cellCounts = [Animation.bureaucrat: 26, .frog: 62, .ranger: 86, .vendor: 36, .bot: 69]
    
    var characters: [Animation] {
        return Animation.allCases
    }
    
    func image(for character: Animation) -> UIImage {
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        return UIImage(imageLiteralResourceName: "\(character.rawValue)000")
        
        //        var image: String
//        switch character {
//        case .bureaucrat:
//            image = "\(Animation.bureaucrat.rawValue) + '000'"
//        case .frog:
//            image = "\(Animation.bureaucrat.rawValue) + '000'"
//        case .ranger:
//            image = "\(Animation.bureaucrat.rawValue) + '000'"
//        case .vendor:
//            image = "\(Animation.bureaucrat.rawValue) + '000'"
//        case .bot:
//            image = "\(Animation.bureaucrat.rawValue) + '000'"
//        }
//        return UIImage(imageLiteralResourceName: image)
    }

        func cells(for character: Animation) -> [UIImage] {
            // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
            guard let count = cellCounts[character] else { fatalError("No count for this number") }
                
                var images = [UIImage]()
                
                for index in 0 ..< count {
                    let paddedNumber = index.stringPadded(to: 3)
                    let imageName = character.rawValue + "\(paddedNumber)"
                    let image = UIImage(imageLiteralResourceName: imageName)
                    
                    images.append(image)
                }
            
                return images
    }
}
