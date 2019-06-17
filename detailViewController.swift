//
//  detailViewController.swift
//  MemeMe1.0
//
//  Created by malak Ahmad on 4/15/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    
    @IBOutlet weak var memeImage: UIImageView!
    
    var MemeImg: Meme!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        memeImage.image = MemeImg.memedImage
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

        override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

}
