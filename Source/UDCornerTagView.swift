//
//  CornerTagView.swift
//  CornerTagView
//
//  Created by JMan on 28/07/2017.
//  Copyright © 2017 JMan. All rights reserved.
//

import UIKit
import Foundation

public enum UDCornerTagStyle: String{
    case left   = "UDConerTagTopRight"
    case right  = "UDConerTagTopLeft"
}



class UDCornerTagView: UIView {

    private var lable:UILabel?
    private var style:UDCornerTagStyle = .left
    var lableBackgroudColor:UIColor{
        get{
            return (lable?.backgroundColor)!
        }
        set {
            lable?.backgroundColor = newValue
        }
    }
    
    var textColor:UIColor{
        get{
            return (lable?.textColor)!
        }
        set{
            lable?.textColor = newValue
        }
    }
    
    var font:UIFont{
        get{
            return (lable?.font)!
        }
        set{
            lable?.font = newValue
        }
    }
    
    var text:String{
        get{
            return (lable?.text)!
        }
        set{
            lable?.text = newValue
        }
    }
    
    override init(frame: CGRect) {
        
        var _lableHeight = CGFloat(20)
        if frame.width < 20.0 {
            _lableHeight = frame.width
        }
        super.init(frame: CGRect.init(x: 0, y: 0, width: frame.width, height: frame.width))
        initContent(style: .left, lableHeight: _lableHeight)
        
    }
    
    init(maxX:CGFloat = 40, lableHeight:CGFloat = 20.0, style:UDCornerTagStyle = .left) {
        
        var _lableHeight = lableHeight
        if lableHeight > maxX {
            _lableHeight = maxX
        }
        
        super.init(frame: CGRect.init(x: 0, y: 0, width: maxX, height: maxX))
        self.style = style
        
        initContent(style: style, lableHeight: _lableHeight)
    }
    
    private init(x:CGFloat,y:CGFloat,maxX:CGFloat,lableHeight:CGFloat = 20.0) {
        
        super.init(frame: CGRect.init(x: x, y: y, width: maxX, height: maxX))
        
    }
    
    
    private func initContent(style:UDCornerTagStyle, lableHeight:CGFloat = 20.0){
        self.clipsToBounds = true
        
        let maxWidth = self.frame.width
        let lableWidth = sqrt(2)*maxWidth                           // label's width
        let lableCenterY = maxWidth/2.0 - sqrt(2)*lableHeight/4.0   // lable's center's Y
        var _rotationAngle = -.pi / 4.0
        var lableCenterX = lableCenterY
        if style == .right {
            
            lableCenterX = maxWidth - lableCenterY
            _rotationAngle = .pi / 4.0
        }
        
        lable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: lableWidth, height: lableHeight))
        lable?.textAlignment = .center
        lable?.textColor = .blue
        self.addSubview(lable!)
        lable?.center = CGPoint.init(x: lableCenterX, y: lableCenterY)
        self.backgroundColor = .clear
        lable?.transform = CGAffineTransform.init(rotationAngle: CGFloat(_rotationAngle))
        self.backgroundColor = .clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func draw(_ rect: CGRect) {
        
        if style == .right {
            let width = self.bounds.width
            if let superView = self.superview {
                
                let superFrame = superView.frame
                self.frame = CGRect.init(x:superFrame.width - self.bounds.width, y: 0, width: width, height: width)
                let path = UIBezierPath()
                
                self.backgroundColor?.setFill()
                UIColor.clear.setStroke()
                
                path.move(to: CGPoint.init(x: 0, y: 0))
                path.addLine(to: CGPoint.init(x: width - 1.0, y: 0))
                path.addLine(to: CGPoint.init(x: width, y: width - 1.0))
                path.addLine(to: CGPoint.init(x: 0, y: 0))
                path.fill()
                path.stroke()
                
                let shapeLayer = CAShapeLayer()
                shapeLayer.path = path.cgPath
                self.layer.mask = shapeLayer;
            }
            
        }
        else{
            let width = self.frame.width
            let path = UIBezierPath()
            
            self.backgroundColor?.setFill()
            UIColor.clear.setStroke()
            
            path.move(to: CGPoint.init(x: 0, y: 0))
            path.addLine(to: CGPoint.init(x: 0, y: width-1.0))
            path.addLine(to: CGPoint.init(x: width-1.0, y: 0))
            path.addLine(to: CGPoint.init(x: 0, y: 0))
            path.fill()
            path.stroke()
            
            let shapeLayer = CAShapeLayer()
            shapeLayer.path = path.cgPath
            self.layer.mask = shapeLayer;

        }
        
        
        
        
    }
}
