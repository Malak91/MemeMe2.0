//
//  TableViewController.swift
//  MemeMe1.0
//
//  Created by malak Ahmad on 4/13/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    
    
    @IBOutlet weak var TableView: UITableView!
    

    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TableView.reloadData()
        self.navigationItem.title = "sent memes"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return self.memes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")!
        let meme = memes[indexPath.row]
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topTextField + "...." + meme.bottomTextField
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier:"detailViewController") as! detailViewController
        //let meme = memes[indexPath.row]
        detailController.MemeImg = self.memes[(indexPath as NSIndexPath).row];  self.navigationController!.pushViewController(detailController, animated: true)
    }

}
