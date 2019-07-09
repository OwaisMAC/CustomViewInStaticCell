//
//  CustomView.swift
//  CustomViewInStaticCell
//
//  Created by MAC on 4/19/19.
//  Copyright © 2019 The MAC. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet var clickMeBtn: UIButton!
    
    override func awakeFromNib() {
        //self.backgroundColor = UIColor.red
        initSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        print("moved")
        
    }
    
    func initSubviews() {
        let nib = UINib(nibName: "CustomView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
    }
    
    @IBAction func ClickMeTapped(_ sender: Any) {
        print("tapped")
    }
    

}
