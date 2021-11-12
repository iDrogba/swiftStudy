//
//  ViewController.swift
//  PageControl
//
//  Created by 김상현 on 2021/02/25.
//

import UIKit

var images = ["1.jpeg","2.jpeg","3.jpeg","4.jpeg","5.jpeg"]

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

