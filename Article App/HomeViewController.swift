//
//  HomeViewController.swift
//  Article App
//
//  Created by Kokpheng on 10/20/16.
//  Copyright © 2016 Kokpheng. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var articleTableView: UITableView!
    var data = Article.articles
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        data += [Article(id: 1, title: "Hello", dateTime: NSDate(), description: "description", photos: [UIImage(named: "macbook pro")!])]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = articleTableView.dequeueReusableCellWithIdentifier("articleCell", forIndexPath: indexPath) as! ArticleTableViewCell
        
        cell.titleLabel?.text = data[indexPath.row].title
        cell.thumbnailImageView?.image = data[indexPath.row].photos[0]
        cell.dateTimeLabel.text = "\(data[indexPath.row].dateTime)"
        
        
        return cell
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
