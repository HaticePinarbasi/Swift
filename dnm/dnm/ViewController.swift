//
//  ViewController.swift
//  dnm
//
//  Created by hatice Pınarbaşı on 31.08.2022.
//


import UIKit
import Foundation

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
 
    @IBOutlet weak var MyTableView: UITableView!
    private var response : ResponseJSON?{
        didSet{
            DispatchQueue.main.async {
                self.MyTableView.reloadData()
        }
    }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        MyTableView.delegate = self
        MyTableView.dataSource = self
        
        
        MyTableView.estimatedRowHeight = MyTableView.rowHeight
        MyTableView.rowHeight = UITableView.automaticDimension


       fetch()

    }
    private func fetch(){




            let headers = [
              "content-type": "application/json",
              "authorization": "apikey 7Iln99HfyPMvZ3PKiibIQH:7ctAMGWePyxO42YNeqAd6Q"
            ]

            let request = NSMutableURLRequest(url: NSURL(string: "https://api.collectapi.com/economy/currencyToAll?int=10&base=USD")! as URL,
                                                    cachePolicy: .useProtocolCachePolicy,
                                                timeoutInterval: 10.0)
            request.httpMethod = "GET"
            request.allHTTPHeaderFields = headers

            let session = URLSession.shared
            let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
              if (error != nil) {
                  print(error!)
              } else {
//                  if let data = data, let response = try? JSONSerialization.jsonObject(with: data) as? [String: Any]{
//                      print(response)
                      if let data = data, let response = try? JSONDecoder().decode(ResponseJSON.self, from: data){
                          
                          self.response = response
                      }
              }
            })

            dataTask.resume()





    }



    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return response?.result?.data?.count ?? .zero
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myTableViewCell

        let data = response?.result?.data?[indexPath.row]


        cell.firstLabel.text = data?.code
        let rate = (data?.rate)!
        cell.secndLabel.text = "\(rate)"


        return cell
    }

}


