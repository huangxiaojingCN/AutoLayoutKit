/*
 The MIT License (MIT)

 Copyright (c) 2018 HJC hjcapple@gmail.com

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import Foundation
import UIKit
import AutoLayoutKit

class TestView0: TestView {
    var edge: CGFloat = 20

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = UIColor.black

        let redView = self.addColorSubView(UIColor.red)
        let blueView = self.addColorSubView(UIColor.blue)
        let yellowView = self.addColorSubView(UIColor.yellow)
        let greenView = self.addColorSubView(UIColor.green)
        let purpleView = self.addColorSubView(UIColor.purple)

        self.tk_constraint { make in
            make.insetEdges(edge: self.edge)

            make.size(redView, blueView, yellowView, greenView, purpleView) == (make.w * 0.3, make.h * 0.3)

            make.xLeft(redView, blueView)
            make.xRight(yellowView, greenView)

            make.yTop(redView, yellowView)
            make.yBottom(blueView, greenView)

            make.center(purpleView)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

