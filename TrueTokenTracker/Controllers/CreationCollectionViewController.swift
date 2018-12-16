//
//  CreationCollectionViewController.swift
//  TrueTokenTracker
//
//  Created by Thomas Bahen on 2018-08-06.
//  Copyright © 2018 Thomas Bahen. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CreationCollectionViewController: UICollectionViewController, UITextFieldDelegate{
    
    @IBOutlet weak var keywordArea: UICollectionView!
    
    @IBOutlet var creationTextFields: [UITextField]!
    
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
    
    var currentKeywords:[String]?
    var keywordField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "keyword")

        // Do any additional setup after loading the view.
        keywordArea.dataSource = self
        
        for textField in creationTextFields {
            textField.delegate = self
        }
        
    }
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        //shows that the keyword area is larger than anticipated
        self.keywordArea.flashScrollIndicators()
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        for textField in creationTextFields {
            textField.resignFirstResponder()
        }
        return true
    }

  

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
    
        cell.keywordName.setTitle(commonKeywords[indexPath.row], for: .normal)
        cell.keywordName.titleLabel?.numberOfLines = 1;
        cell.keywordName.titleLabel?.adjustsFontSizeToFitWidth = true;
        cell.keywordName.adjustsImageWhenHighlighted = true
        
        return cell
    }
    
    
    @IBAction func buttonPressed(_ sender: keywordButton) {
        if sender.isOn {
            addKeyword(sender.title(for: .normal)!)
        }
        else{
            removeKeyword(sender.title(for: .normal)!)
        }
    }
    
    
    
    func addKeyword (_ name: String){
        if ( currentKeywords?.append(name) == nil ) {
            currentKeywords = [name]
        }
    }
    
    func removeKeyword(_ name: String){
        currentKeywords = currentKeywords?.filter{$0 != name}
    }
    
    @IBAction func createKeyword(_ sender: UIButton) {
        let keywordController = UIAlertController(title: "Create a Keyword", message: nil, preferredStyle: .alert)
        keywordController.addTextField(configurationHandler: keywordField)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: self.okHandler)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        keywordController.addAction(okAction)
        keywordController.addAction(cancelAction)
        
        self.present(keywordController, animated: true)
    }
    
    func keywordField(textField: UITextField!){
        keywordField = textField
        keywordField?.placeholder = "New Keyword"
    }
    
    func okHandler(alert: UIAlertAction!){
        addKeyword(keywordField!.text!)
        
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
