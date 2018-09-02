//
//  CreationCollectionViewController.swift
//  TrueTokenTracker
//
//  Created by Thomas Bahen on 2018-08-06.
//  Copyright © 2018 Thomas Bahen. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CreationCollectionViewController: UICollectionViewController{
    
    @IBOutlet weak var keywordArea: UICollectionView!
    
    @IBOutlet weak var tokenNameTextField: UITextField!
    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var toughnessTextField: UITextField!
    
    
    
    let commonKeywords:[String] = ["Flying",
                                   "Haste",
                                   "Deathtouch",
                                   "Vigilance",
                                   "Menace",
                                   "Defender",
                                   "First Strike",
                                   "Double Strike",
                                   "Lifelink",
                                   "Trample",
                                   "Hexproof",
                                   "Indestructible",
                                   "Reach",
                                   "Flash"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "keyword")

        // Do any additional setup after loading the view.
        keywordArea.dataSource = self
        
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return commonKeywords.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "keyword", for: indexPath) as! KeywordCollectionViewCell
    
        cell.keywordName.text = commonKeywords[indexPath.row]
        
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
