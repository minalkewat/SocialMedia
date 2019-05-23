//
//  DetailViewController.swift
//  FileManagerDemo
//
//  Created by Meenal Kewat on 5/17/19.
//  Copyright © 2019 Meenal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var imgString: String?

    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = imgString
        
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.tintColor = UIColor.black
//        img.image = UIImage(named: imgString)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        // Do any additional setup after loading the view.
        
        if let imageToLoad = imgString {
            img.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    
    
    
    @objc func shareTapped(){
        let vc = UIActivityViewController(activityItems: [img.image!], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true, completion: nil)
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
