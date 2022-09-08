//
//  PhotoDetailViewController.swift
//  FLickr Client App
//
//  Created by hatice Pınarbaşı on 5.09.2022.
//

import UIKit



class PhotoDetailViewController: UIViewController {
    
    var photo: Photo?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var ownerNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Photo Detail "
        
        imageView.backgroundColor = .gray
        ownerImageView.backgroundColor = .darkGray
        ownerNameLabel.text = "owner name"
        descriptionLabel.text = "description label description label description label description label description label description label  "

        // Do any additional setup after loading the view.
        ownerNameLabel.text = photo?.ownername
        
        
        if let iconserver = photo?.iconserver,
//           let iconfarm = photo?.iconfarm,
//           let nsid = photo?.owner,
           NSString(string: iconserver).intValue > 0 {
            
//            fetchImage(with: "http://farm\(iconfarm).staticflickr.com/\(iconserver)/buddyicons/\(nsid).jpg") { data in
//                cell.ownerImageView.image = UIImage(data: data)
//            }
//        }else {
            NetworkManager.shared.fetchImage(with: "https://www.flickr.com/images/buddyicon.gif") { data in
                self.ownerImageView.image = UIImage(data: data)
            }
        }
        
        NetworkManager.shared.fetchImage(with: photo?.urlZ) { data in
            self.imageView.image = UIImage(data: data)
        }
        
        
        title = photo?.title
        descriptionLabel.text = photo?.responseJSONDescription?.content
    }
    
        
    
}
