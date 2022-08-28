//
//  ViewController.swift
//  MyBook
//
//  Created by hatice Pınarbaşı on 26.08.2022.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var cellSpacingHeight: CGFloat = 10

    @IBOutlet weak var myTableView: UITableView!
    
    let MyTableViewCellReuseIdentifier = "MyTableViewCellReuseIdentifier"
    
    let titlesF = [("Entertainment Weekly"),
                   ("Apple Never fall"),
                   ("The sand man II"),
                   ("The  Storyteller: Tales of Life and music "),
                   ("The Keeper of Happy  Ending"),
                   ("Entertainment Weekly")]
    
    let desF = [("Alice Schertle, Jill McElmurry"),
                ("Liana moriatory"),
                ("Alice Schertle, Jill McElmurry"),
                ("Alice Schertle, Jill McElmurry"),
                ("Alice Schertle, Jill McElmurry"),
                ("Alice Schertle, Jill McElmurry")]
    
    let star = ["4.6","4.2","4.1","3.8","4.0","4.2"]
    
    let imagesF = [UIImage(named: "Rectangle1"),
                  UIImage(named: "Rectangle2"),
                  UIImage(named: "Rectangle3"),
                  UIImage(named: "Rectangle4"),
                  UIImage(named: "Rectangle5"),
                  UIImage(named: "Rectangle6")
            
    
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
        
        
    
        myTableView.rowHeight = UITableView.automaticDimension
        myTableView.estimatedRowHeight = 300
         
        self.myTableView.register(UINib(nibName: String(describing: MyTableViewCell.self), bundle: nil), forCellReuseIdentifier: MyTableViewCellReuseIdentifier)
       
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        cellSpacingHeight = 115
        return cellSpacingHeight
    }
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titlesF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! MyTableViewCell
//        let _: CGFloat = 25
        cell.imageCell.image = self.imagesF[indexPath.row]
        cell.titleLabel.text = self.titlesF[indexPath.row]
        cell.textLabel02.text = self.desF[indexPath.row]
        cell.starLabel.text = self.star[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return cellSpacingHeight
       }

}
