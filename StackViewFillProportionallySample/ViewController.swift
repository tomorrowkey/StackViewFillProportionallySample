//
//  ViewController.swift
//  StackViewFillProportionallySample
//
//  Created by tomoki-yamashita on 2017/12/22.
//  Copyright © 2017 Tomoki Yamashita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fillEquallyStackView: UIStackView!
    @IBOutlet weak var fillPropotionallyStackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapChangeWidthButton(_ sender: UIButton) {
        (fillEquallyStackView.arrangedSubviews + fillPropotionallyStackView.arrangedSubviews).flatMap { $0 as? CustomView }.forEach { view in
            let width: Int = Int(arc4random_uniform(100))
            view.intrinsicContentWidth = width
        }
    }
}
