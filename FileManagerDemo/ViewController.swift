//
//  ViewController.swift
//  FileManagerDemo
//
//  Created by Meenal Kewat on 5/17/19.
//  Copyright © 2019 Meenal. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        detailVC?.imgString = pictures[indexPath.row]
        navigationController?.pushViewController(detailVC!, animated: true)
  
    }

    
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
           navigationController?.navigationBar.prefersLargeTitles = true
     
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        do {
            let items = try fm.contentsOfDirectory(atPath: path)
            
            for item in items {
                print("Found \(item)")
                if item.hasPrefix("nssl")
                {
                     print("image item name : \(item)")
                     pictures.append(item)
                }
            }
        } catch {
            
        }
        
    }


}

