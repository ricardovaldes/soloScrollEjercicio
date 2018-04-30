//
//  ViewController.swift
//  soloScrollEjercicio
//
//  Created by RICARDO VALDES on 16/04/18.
//  Copyright © 2018 RICARDO VALDES. All rights reserved.
//  Added to GitHub


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myScroll: UIScrollView!
    
    var carsArray = [UIImage]()
    
    var constraints = [NSLayoutConstraint]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        carsArray = [#imageLiteral(resourceName: "fasto1"), #imageLiteral(resourceName: "fasto2"), #imageLiteral(resourceName: "fasto3"), #imageLiteral(resourceName: "fasto4")]
        
        var const = [NSLayoutConstraint]()
        var views: [String: UIView]
        var previous: UIImageView? = nil
        
        for index in 0..<carsArray.count{
            
            let newImageView = UIImageView()
            newImageView.image  = carsArray[index]
            newImageView.translatesAutoresizingMaskIntoConstraints = false
            myScroll.addSubview(newImageView)
            self.myScroll.setNeedsLayout()
            
            
            views = ["newImageView": newImageView, "myScroll": myScroll]
            
            if previous == nil{
            const.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|[newImageView(240)]",  metrics: nil, views: views))
            }
            else{
            const.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:[previous]-20-[newImageView(240)]", metrics: nil, views: ["newImageView": newImageView, "previous": previous!]))
            }
            
            previous = newImageView
            
            const.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:[previous]|", metrics: nil, views: ["previous": newImageView]))
            
            const.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|[newImageView(240)]|", metrics: nil, views: views))
            
        }
        NSLayoutConstraint.activate(const)
        
    }

  
}

