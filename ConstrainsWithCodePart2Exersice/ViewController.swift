//
//  ViewController.swift
//  ConstrainsWithCodePart2Exersice
//
//  Created by Art Karma on 5/13/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let blueView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .blue
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let redView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .red
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let yellowView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .yellow
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()
    
    let greenView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .green
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.addSubview(blueView)
        view.addSubview(redView)
        view.addSubview(yellowView)
        view.addSubview(greenView)
        

        let viewVFL = ["redView": redView, "blueView": blueView, "yellowView": yellowView, "greenView": greenView]
        let metrics = ["height": 100, "width": (view.bounds.width / 3), "myTop": (view.bounds.height / 5), "myTop2": (view.bounds.height / 5 * 3)]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-myTop-[greenView(myTop)]-myTop-[redView(myTop)]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-myTop-[yellowView(myTop)]-myTop-[blueView(myTop)]",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[greenView(width)]-50-[yellowView(width)]-|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[redView(width)]-50-[blueView(width)]-|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))

    }


}

