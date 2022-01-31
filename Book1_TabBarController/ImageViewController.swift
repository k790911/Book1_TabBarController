//
//  ViewController.swift
//  Book1_PageControl
//
//  Created by 김재훈 on 2022/01/29.
//

import UIKit

class ImageViewController: UIViewController {
    
    var images = ["1.JPG", "2.JPG", "3.JPG", "4.JPG", "5.JPG", "6.JPG"]

    @IBOutlet var currentPageNo: UILabel!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("ImageViewController is loaded.")
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
        currentPageNo.text = "0"
    }
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
        currentPageNo.text = String(pageControl.currentPage)
    }
    deinit {
        print("ImageViewController is unloaded.")
    }
    
}

