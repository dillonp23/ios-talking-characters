//
//  DetailViewController.swift
//  Talking Characters App
//
//  Created by Dillon P on 8/1/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterAnimatedImage: UIImageView!
    
    // MARK: - Properties
    
    var character: Model.Animation?
    
    // MARK: - Functions
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let character = character else { return }
        
        let cells = Model.shared.cells(for: character)
        characterAnimatedImage.animationImages = cells
        characterAnimatedImage.animationRepeatCount = 0
        characterAnimatedImage.animationDuration = Double(cells.count) / 15
            characterAnimatedImage.startAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
