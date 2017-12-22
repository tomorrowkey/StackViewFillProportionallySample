//
//  CustomView.swift
//  StackViewFillProportionallySample
//
//  Created by tomoki-yamashita on 2017/12/22.
//  Copyright © 2017 Tomoki Yamashita. All rights reserved.
//

import UIKit

class CustomView: UIView {
    var intrinsicContentWidth: Int = 100 {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    var intrinsicContentHeight: Int = 200 {
        didSet {
            invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: intrinsicContentWidth, height: intrinsicContentHeight)
    }
}
