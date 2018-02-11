//
//  ViewController.swift
//  ExpressConstraintsTester
//
//  Created by John Earle on 2/11/18.
//  Copyright © 2018 John Earle. All rights reserved.
//

import UIKit
import ExpressConstraints

class ViewController: UIViewController {

    var view1 : UIView!
    var view2 : UIView!
    var view3 : UIView!
    var view4 : UIView!
    var view5 : UIView!
    var view6 : UIView!
    
    var scrollView : UIScrollView!
    
    let parentBoxSize = CGFloat(50.0)
    let boxSize = CGFloat(30.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1 = UIView()
        view2 = UIView()
        view3 = UIView()
        view4 = UIView()
        view5 = UIView()
        view6 = UIView()
        
        scrollView = UIScrollView()
        
        self.view.addSubview(scrollView)
        
        scrollView.addSubview(view1)
        scrollView.addSubview(view2)
        scrollView.addSubview(view3)
        scrollView.addSubview(view4)
        scrollView.addSubview(view5)
        scrollView.addSubview(view6)
        
        view1.backgroundColor = UIColor.gray
        view2.backgroundColor = UIColor.gray
        view3.backgroundColor = UIColor.gray
        view4.backgroundColor = UIColor.gray
        view5.backgroundColor = UIColor.gray
        view6.backgroundColor = UIColor.gray
        
        self.view.constrainChild(scrollView, xAlignment: .center, yAlignment: .top, yOffset: UIApplication.shared.statusBarFrame.height)
        scrollView.constrainChild(view1, xAlignment: .center, yAlignment: .top)
        
        view2.constrainBelow(view1, xAlignment: .center)
        view3.constrainBelow(view2, xAlignment: .center)
        view4.constrainBelow(view3, xAlignment: .center)
        view5.constrainBelow(view4, xAlignment: .center)
        view6.constrainBelow(view5, xAlignment: .center)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        
        scrollView.constrainSize(width: self.view.widthConstraint.constant, height: self.view.heightConstraint.constant)
        
        view1.constrainSize(width: self.view.widthConstraint.constant, height: 220)
        view2.constrainSize(width: self.view.widthConstraint.constant, height: 220)
        view3.constrainSize(width: self.view.widthConstraint.constant, height: 220)
        view4.constrainSize(width: self.view.widthConstraint.constant, height: 220)
        view5.constrainSize(width: self.view.widthConstraint.constant, height: 220)
        view6.constrainSize(width: self.view.widthConstraint.constant, height: 220)
        
        scrollView.contentSize = CGSize(width: self.view.widthConstraint.constant, height: 1320)
        
        testConstrainLeftOf()
        testConstrainRightOf()
        testConstrainAbove()
        testConstrainBelow()
        testConstrainChild()
        testConstrainSize()
    }
    
    // use view1
    func testConstrainLeftOf() {
        
        // set label
        let label = UILabel()
        label.text = ".constrainLeftOf()"
        view1.addSubview(label)
        view1.constrainChild(label, xAlignment: .center, yAlignment: .top, yOffset: 5)
        
        let view = UIView()
        view.backgroundColor = UIColor.black
        
        let viewToConstrain = UIView()
        viewToConstrain.backgroundColor = UIColor.red
        
        view1.addSubview(view)
        view1.addSubview(viewToConstrain)
        
        view.constrainSize(width: parentBoxSize, height: parentBoxSize)
        viewToConstrain.constrainSize(width: boxSize, height: boxSize)
        
        view1.constrainChild(view, xAlignment: .center, yAlignment: .center)
        viewToConstrain.constrainLeftOf(view, yAlignment: .center)
    }
    
    // use view2
    func testConstrainRightOf() {
        
        // set label
        let label = UILabel()
        label.text = ".constrainRightOf()"
        view2.addSubview(label)
        view2.constrainChild(label, xAlignment: .center, yAlignment: .top, yOffset: 5)
        
        let view = UIView()
        view.backgroundColor = UIColor.black
        
        let viewToConstrain = UIView()
        viewToConstrain.backgroundColor = UIColor.red
        
        view2.addSubview(view)
        view2.addSubview(viewToConstrain)
        
        view.constrainSize(width: parentBoxSize, height: parentBoxSize)
        viewToConstrain.constrainSize(width: boxSize, height: boxSize)
        
        view2.constrainChild(view, xAlignment: .center, yAlignment: .center)
        viewToConstrain.constrainRightOf(view, yAlignment: .center)
    }
    
    // use view3
    func testConstrainAbove() {
        
        // set label
        let label = UILabel()
        label.text = ".constrainAbove()"
        view3.addSubview(label)
        view3.constrainChild(label, xAlignment: .center, yAlignment: .top, yOffset: 5)
        
        let view = UIView()
        view.backgroundColor = UIColor.black
        
        let viewToConstrain = UIView()
        viewToConstrain.backgroundColor = UIColor.red
        
        view3.addSubview(view)
        view3.addSubview(viewToConstrain)
        
        view.constrainSize(width: parentBoxSize, height: parentBoxSize)
        viewToConstrain.constrainSize(width: boxSize, height: boxSize)
        
        view3.constrainChild(view, xAlignment: .center, yAlignment: .center)
        viewToConstrain.constrainAbove(view, xAlignment: .center)
    }
    
    // use view4
    func testConstrainBelow() {
        
        // set label
        let label = UILabel()
        label.text = ".constrainBelow()"
        view4.addSubview(label)
        view4.constrainChild(label, xAlignment: .center, yAlignment: .top, yOffset: 5)
        
        let view = UIView()
        view.backgroundColor = UIColor.black
        
        let viewToConstrain = UIView()
        viewToConstrain.backgroundColor = UIColor.red
        
        view4.addSubview(view)
        view4.addSubview(viewToConstrain)
        
        view.constrainSize(width: parentBoxSize, height: parentBoxSize)
        viewToConstrain.constrainSize(width: boxSize, height: boxSize)
        
        view4.constrainChild(view, xAlignment: .center, yAlignment: .center)
        viewToConstrain.constrainBelow(view, xAlignment: .center)
    }
    
    // use view5
    func testConstrainChild() {
        
        // set label
        let label = UILabel()
        label.text = ".constrainBelow()"
        view5.addSubview(label)
        view5.constrainChild(label, xAlignment: .center, yAlignment: .top, yOffset: 5)
        
        let parentView = UIView()
        parentView.backgroundColor = UIColor.black
        
        let childView = UIView()
        childView.backgroundColor = UIColor.red
        
        view5.addSubview(parentView)
        parentView.addSubview(childView)
        
        childView.constrainSize(width: boxSize, height: boxSize)
        parentView.constrainSize(width: parentBoxSize, height: parentBoxSize)
        
        view5.constrainChild(parentView, xAlignment: .center, yAlignment: .center)
        parentView.constrainChild(childView, xAlignment: .left, yAlignment: .top)
    }
    
    // use view6
    func testConstrainSize() {
        
        // set label
        let label = UILabel()
        label.text = ".constrainSize()"
        view6.addSubview(label)
        view6.constrainChild(label, xAlignment: .center, yAlignment: .top, yOffset: 5)
        
        let viewToConstrain = UIView()
        viewToConstrain.backgroundColor = UIColor.red
        
        view6.addSubview(viewToConstrain)
        
        viewToConstrain.constrainSize(width: 100, height: 30)
        
        view6.constrainChild(viewToConstrain, xAlignment: .center, yAlignment: .center)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

