//
//  ViewController.swift
//  ScrollThePage
//
//  Created by Belma İbrahimbaş on 4.08.2017.
//  Copyright © 2017 Belma Ibrahimbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    var contentWidth: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
    
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageview = UIImageView(image: image)
            images.append(imageview)
            
            var newX: CGFloat = 0.0
            newX = scrollView.frame.size.width / 2 + scrollView.frame.size.width * CGFloat(x)
            contentWidth += newX
            
            scrollView.addSubview(imageview)
            imageview.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)
        }
        
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
        scrollView.clipsToBounds = false
        

    }


}

