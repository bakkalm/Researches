//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

let crutchConstant : CGFloat = 8.0

// Appearance Settings
let view = UIView(frame: CGRect(x: 0, y: 0, width: 620, height: 500))
view.backgroundColor = .red
let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 120, height: 500))
scrollView.backgroundColor = .yellow
scrollView.translatesAutoresizingMaskIntoConstraints = false
let imageView = UIImageView(image: UIImage(named: "img"))
imageView.contentMode = .scaleAspectFill
imageView.clipsToBounds = true
imageView.translatesAutoresizingMaskIntoConstraints = false

// Adding to stack
view.addSubview(scrollView)
scrollView.addSubview(imageView)

// ImageView Layout Constraints
let imgLeftConstraint = NSLayoutConstraint(item: imageView, attribute: .leftMargin, relatedBy: .equal, toItem: scrollView, attribute: .left, multiplier: 1, constant: crutchConstant)
let imgRightConstraint = NSLayoutConstraint(item: imageView, attribute: .rightMargin, relatedBy: .equal, toItem: scrollView, attribute: .right, multiplier: 1, constant: 0)
let imgVerticalConstraint = NSLayoutConstraint(item: imageView, attribute: .topMargin, relatedBy: .equal, toItem: scrollView, attribute: .top, multiplier: 1, constant: 0)
let imgWidthConstraint = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: scrollView, attribute: .width, multiplier: 1, constant: 0)
//let imgHeightConstraint = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 300)
scrollView.addConstraints([imgLeftConstraint, imgRightConstraint, imgVerticalConstraint, imgWidthConstraint, /*imgHeightConstraint*/])
imageView.addConstraint(NSLayoutConstraint(item: imageView,
                                           attribute: .height,
                                           relatedBy: .equal,
                                           toItem: imageView,
                                           attribute: .width,
                                           multiplier: imageView.frame.size.height / imageView.frame.size.width,
                                           constant: 0))

// Scroll Layout Constraints
let horizontalConstraint = NSLayoutConstraint(item: scrollView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
let verticalConstraint = NSLayoutConstraint(item: scrollView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
let widthConstraint = NSLayoutConstraint(item: scrollView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 320)
let heightConstraint = NSLayoutConstraint(item: scrollView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 500)

view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])

widthConstraint.constant = 500

// Seeting view
PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = view



