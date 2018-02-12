//
//  ExpressConstraintsTests.swift
//  ExpressConstraintsTests
//
//  Created by John Earle on 2/11/18.
//  Copyright © 2018 John Earle. All rights reserved.
//

import XCTest
@testable import ExpressConstraints

class ExpressConstraintsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testConstrainAbove() {
        let stage = UIView()
        let view1 = UIView()
        let view2 = UIView()
        
        stage.addSubview(view1)
        stage.addSubview(view2)
        
        view2.constrainSize(width: 40, height: 40)
        view1.constrainAbove(view2, xAlignment: .center, width: 30, height: 30)
        
        var xAlignmentIsCenter = false;
        var view1AboveView2 = false;
        
        for c in stage.constraints {
            if c.firstItem === view1 && c.secondItem === view2 {
                if c.firstAttribute.rawValue == NSLayoutAttribute.centerX.rawValue {
                    xAlignmentIsCenter = true;
                } else if c.firstAttribute.rawValue == NSLayoutAttribute.bottom.rawValue && c.secondAttribute.rawValue == NSLayoutAttribute.top.rawValue {
                    view1AboveView2 = true;
                }
            }
        }
        
        XCTAssert(xAlignmentIsCenter, "xAlignment is not center")
        XCTAssert(view1AboveView2, "view 1 is not constrained above view 2")
    }
    
    func testConstrainBelow() {
        let stage = UIView()
        let view1 = UIView()
        let view2 = UIView()
        
        stage.addSubview(view1)
        stage.addSubview(view2)
        
        view2.constrainSize(width: 40, height: 40)
        view1.constrainBelow(view2, xAlignment: .center, width: 30, height: 30)
        
        var xAlignmentIsCenter = false;
        var view1BelowView2 = false;
        
        for c in stage.constraints {
            if c.firstItem === view1 && c.secondItem === view2 {
                if c.firstAttribute.rawValue == NSLayoutAttribute.centerX.rawValue {
                    xAlignmentIsCenter = true;
                } else if c.firstAttribute.rawValue == NSLayoutAttribute.top.rawValue && c.secondAttribute.rawValue == NSLayoutAttribute.bottom.rawValue {
                    view1BelowView2 = true;
                }
            }
        }
        
        XCTAssert(xAlignmentIsCenter, "xAlignment is not center")
        XCTAssert(view1BelowView2, "view 1 is not constrained below view 2")
    }
    
    func testConstrainRightOf() {
        let stage = UIView()
        let view1 = UIView()
        let view2 = UIView()
        
        stage.addSubview(view1)
        stage.addSubview(view2)
        
        view2.constrainSize(width: 40, height: 40)
        view1.constrainRightOf(view2, yAlignment: .center, width: 30, height: 30)
        
        var yAlignmentIsCenter = false;
        var view1RightOfView2 = false;
        
        for c in stage.constraints {
            if c.firstItem === view1 && c.secondItem === view2 {
                if c.firstAttribute.rawValue == NSLayoutAttribute.centerY.rawValue {
                    yAlignmentIsCenter = true;
                } else if c.firstAttribute.rawValue == NSLayoutAttribute.left.rawValue && c.secondAttribute.rawValue == NSLayoutAttribute.right.rawValue {
                    view1RightOfView2 = true;
                }
            }
        }
        
        XCTAssert(yAlignmentIsCenter, "yAlignment is not center")
        XCTAssert(view1RightOfView2, "view 1 is not constrained to the right of view 2")
    }
    
    func testConstrainLeftOf() {
        let stage = UIView()
        let view1 = UIView()
        let view2 = UIView()
        
        stage.addSubview(view1)
        stage.addSubview(view2)
        
        view2.constrainSize(width: 40, height: 40)
        view1.constrainLeftOf(view2, yAlignment: .center, width: 30, height: 30)
        
        var yAlignmentIsCenter = false;
        var view1LeftOfView2 = false;
        
        for c in stage.constraints {
            if c.firstItem === view1 && c.secondItem === view2 {
                if c.firstAttribute.rawValue == NSLayoutAttribute.centerY.rawValue {
                    yAlignmentIsCenter = true;
                } else if c.firstAttribute.rawValue == NSLayoutAttribute.right.rawValue && c.secondAttribute.rawValue == NSLayoutAttribute.left.rawValue {
                    view1LeftOfView2 = true;
                }
            }
        }
        
        XCTAssert(yAlignmentIsCenter, "yAlignment is not center")
        XCTAssert(view1LeftOfView2, "view 1 is not constrained to the left of view 2")
    }
    
    func testConstrainSize() {
        let stage = UIView()
        
        stage.constrainSize(width: 45, height: 35)
        
        var widthIs45 = false;
        var heightIs35 = false;
        
        for c in stage.constraints {
            if c.firstItem === stage {
                if c.firstAttribute.rawValue == NSLayoutAttribute.width.rawValue {
                    widthIs45 = c.constant == 45;
                } else if c.firstAttribute.rawValue == NSLayoutAttribute.height.rawValue {
                    heightIs35 = c.constant == 35;
                }
            }
        }
        
        XCTAssert(widthIs45, "width constraint is not correct")
        XCTAssert(heightIs35, "height constraint is not correct")
    }
    
    func testConstrainChild() {
        let stage = UIView()
        let view1 = UIView()
        
        stage.addSubview(view1)
        
        stage.constrainChild(view1, xAlignment: .left, yAlignment: .top)
        
        var xAlignmentIsLeft = false;
        var yAlignmentIsTop = false;
        
        for c in stage.constraints {
            if c.firstItem === view1 && c.secondItem === stage {
                if c.firstAttribute.rawValue == NSLayoutAttribute.left.rawValue {
                    xAlignmentIsLeft = true
                } else if c.firstAttribute.rawValue == NSLayoutAttribute.top.rawValue {
                    yAlignmentIsTop = true
                }
            }
        }
        
        XCTAssert(yAlignmentIsTop, "yAlignment is not top")
        XCTAssert(xAlignmentIsLeft, "xAlignment is not left")
    }
}
