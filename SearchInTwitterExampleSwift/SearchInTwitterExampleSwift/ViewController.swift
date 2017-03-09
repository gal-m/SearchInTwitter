//
//  ViewController.swift
//  SearchInTwitterExampleSwift
//
//  Created by Gal Mirkin on 09/03/2017.
//  Copyright © 2017 Gal Mirkin. All rights reserved.
//

import UIKit
import SearchInTwitter
import SearchInTwitter.Statuse
import SearchInTwitter.AuthTokenResult
import SearchInTwitter.SearchTwitterResult

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var statusesTable: UITableView!
    
    var  statusesList : NSArray?
    
    // MARK: - Private vars
    weak private(set) var searchInTwitter: SearchInTwitter? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let key = "MwYE7NjeXSQpaUOAUsxY4GQAS"
        let secret =  "CI8oqbpAxq2bxLMbffmkBpoIjMJ574aYqG8Xw8HPVDjypjX2nu"
        
        SearchInTwitter.sharedInstance().getOAuthToken(withConsumerKey: key, consumerSecret: secret, withCallback: { (AuthTokenResult, Error) in
            
            guard Error == nil else {
                return
            }
            if ((AuthTokenResult?.accessToken) != nil) {
                SearchInTwitter.sharedInstance().accessToken = AuthTokenResult?.accessToken
            }
        })
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        self.view.endEditing(true)
        
        //use the text searchTF text for the search
        SearchInTwitter.sharedInstance().search(for: self.searchTF.text, withCallback: { (SearchTwitterResult, Error) in
            
            guard Error == nil else {
                return
            }
            
            if ((SearchTwitterResult?.statuses) != nil) {
                self.statusesList = SearchTwitterResult?.statuses as NSArray?
                self.statusesTable.reloadData()
            }
        })
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if ((self.statusesList?.count) != nil) {
            return (self.statusesList?.count)!
        }
        return 0
    }
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
            ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        
        let row = indexPath.row
        let statuse =   self.statusesList?.object(at: row) as! Statuse
        cell.textLabel?.text = statuse.text
        
        return cell
    }
}

