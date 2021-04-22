//
//  ViewController.swift
//  pageControl practice
//
//  Created by Lai Po Ying on 2021/4/21.
//

import UIKit

let catImageData = ["daughter.png", "mother.png", "father.png"]
let catLableText = ["女鵝自拍 ♡", "馬麻自拍 ♡", "把拔自拍 😑"]
let pageLabelText = ["Page 1", "Page 2", "Page 3"]
var arrayIndex: Int = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catLabel: UILabel!
    @IBOutlet weak var pageDot: UIPageControl!
    @IBOutlet weak var segmentedIndication: UISegmentedControl!
    @IBOutlet weak var pageLabel: UILabel!
    func sync() {
        catImageView.image = UIImage(named: catImageData[arrayIndex])
        catLabel.text = catLableText[arrayIndex]
        pageDot.currentPage = arrayIndex
        segmentedIndication.selectedSegmentIndex = arrayIndex
        pageLabel.text = pageLabelText[arrayIndex]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sync()
    }
    @IBAction func pageControlChange(_ sender: Any) {
        if pageDot.currentPage == 0 {
            arrayIndex = 0
            sync()
        }
        else if pageDot.currentPage == 1 {
            arrayIndex = 1
            sync()
        }
        else {
            arrayIndex = 2
            sync()
        }
    }
    @IBAction func segmentedChange(_ sender: Any) {
        if segmentedIndication.selectedSegmentIndex == 0 {
            arrayIndex = 0
            sync()
        }
        else if segmentedIndication.selectedSegmentIndex == 1 {
            arrayIndex = 1
            sync()
        }
        else {
            arrayIndex = 2
            sync()
        }
    }
    @IBAction func rightButton(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else {
            arrayIndex = arrayIndex - 2
            sync()
        }
    }
    @IBAction func leftButton(_ sender: Any) {
        if arrayIndex == 2 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else {
            arrayIndex = arrayIndex + 2
            sync()
        }
    }
    
    @IBAction func showNextPhoto(_ sender: Any) {
        if arrayIndex == 0 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex + 1
            sync()
        }
        else {
            arrayIndex = arrayIndex - 2
            sync()
        }
    }
    @IBAction func showPreviousPhoto(_ sender: Any) {
        if arrayIndex == 2 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else if arrayIndex == 1 {
            arrayIndex = arrayIndex - 1
            sync()
        }
        else {
            arrayIndex = arrayIndex + 2
            sync()
        }
    }
    

}

