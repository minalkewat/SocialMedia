//
//  DetailViewController.swift
//  FileManagerDemo
//
//  Created by Meenal Kewat on 5/17/19.
//  Copyright © 2019 Meenal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var imgString = String()

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.tintColor = UIColor.black
        img.image = UIImage(named: imgString)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
