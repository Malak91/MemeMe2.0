//
//  MemeCollectionViewController.swift
//  MemeMe1.0
//
//  Created by malak Ahmad on 4/13/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var layoutFlow: UICollectionViewFlowLayout!
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
         let dimensionH = (view.frame.size.height - (2 * space)) / 3.0
        
        layoutFlow.minimumInteritemSpacing = space
        layoutFlow.minimumLineSpacing = space
        layoutFlow.itemSize = CGSize(width: dimension, height: dimensionH)
  
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView!.reloadData()
        self.navigationItem.title = "sent memes"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        let memee : Meme = self.memes[(indexPath as NSIndexPath).row]
        cell.memeImage?.image = memee.memedImage
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let detailController = self.storyboard!.instantiateViewController(withIdentifier:"detailViewController") as! detailViewController
         detailController.MemeImg = self.memes[(indexPath as NSIndexPath).row];   self.navigationController!.pushViewController(detailController, animated: true)
    }
    

}
