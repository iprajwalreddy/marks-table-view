//
//  ViewController.swift
//  marks-table-view
//
//  Created by Prajwal Reddy on 16/03/17.
//  Copyright © 2017 Prajwal Reddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = ["http://www.fastweb.com/uploads/article_photo/photo/2036316/crop635w_three-things-you-need-to-know-about-financial-aid-now.jpg","http://esq.h-cdn.co/assets/16/15/640x320/landscape-1460489202-esq-50-things-that-are-worth-the-money-02.jpg","http://img.etimg.com/thumb/msid-52914075,width-640,resizemode-4,imglength-61432/new-maruti-ignis-5-things-to-know.jpg","https://nyoobserver.files.wordpress.com/2016/07/photo-1415604934674-561df9abf539.jpeg?quality=80&w=635&h=473","http://www.readersdigest.ca/wp-content/uploads/2015/11/10-things-you-cant-say-to-a-canadian-1024x768.jpg"]
    var uglyTitles = ["Nice","Boring","Not Good","Amazing","zing zing"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "UglyCell") as? UglyCell {
            var img: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOf: url as URL) {
                img = UIImage(data: data as Data)
            } else {
                img = UIImage(named: "dog")
            }
            cell.configureCell(image: img, text: uglyTitles[indexPath.row])
            return cell
        } else {
            return UglyCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
}

