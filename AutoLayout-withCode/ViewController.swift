//
//  ViewController.swift
//  AutoLayout-withCode
//
//  Created by Jassem Al-Buloushi on 4/16/19.
//  Copyright © 2019 Jassem Al-Buloushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lable1 = UILabel()
        lable1.translatesAutoresizingMaskIntoConstraints = false  //To make our own contsraints
        lable1.backgroundColor = .red
        lable1.text = "THESE"
        lable1.sizeToFit()
        
        let lable2 = UILabel()
        lable2.translatesAutoresizingMaskIntoConstraints = false
        lable2.backgroundColor = .cyan
        lable2.text = "ARE"
        lable2.sizeToFit()
        
        let lable3 = UILabel()
        lable3.translatesAutoresizingMaskIntoConstraints = false
        lable3.backgroundColor = .yellow
        lable3.text = "SOME"
        lable3.sizeToFit()
        
        let lable4 = UILabel()
        lable4.translatesAutoresizingMaskIntoConstraints = false
        lable4.backgroundColor = .green
        lable4.text = "AWESOME"
        lable4.sizeToFit()
        
        let lable5 = UILabel()
        lable5.translatesAutoresizingMaskIntoConstraints = false
        lable5.backgroundColor = .orange
        lable5.text = "LABELS"
        lable5.sizeToFit()
        
        view.addSubview(lable1)
        view.addSubview(lable2)
        view.addSubview(lable3)
        view.addSubview(lable4)
        view.addSubview(lable5)
        
        let viewsDictionary = ["label1": lable1, "label2": lable2, "label3": lable3, "label4": lable4, "label5": lable5]
        
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        }
        
        let metrics = ["labelHeight": 88]
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight)]-[label2(labelHeight)]-[label3(labelHeight)]-[label4(labelHeight)]-[label5(labelHeight)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
    }


}

