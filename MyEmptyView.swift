//
//  MyEmptyView.swift
//  uitableviewdefalut
//
//  Created by dzc on 2021/8/3.
//

import UIKit

class MyEmptyView: UIView {

    lazy var uiimageV: UIImageView = {
        let result = UIImageView()
        result.backgroundColor = .red
        return result
    }()
    lazy var tips: UILabel = {
        let result = UILabel()
        result.text = "阿斯顿发送到"
        result.textColor = .red
        result.textAlignment = .center
        return result
    }()
    //外界更新提示文案
    var title:String = ""{
        didSet{
            tips.text = title
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        uiimageV.frame = CGRect(x: (self.bounds.size.width - 200)/2, y: 300, width: self.bounds.size.width - 200, height: self.bounds.size.width - 200)
        tips.frame = CGRect(x: 0, y: 300 + self.bounds.size.width - 200 + 50, width: self.bounds.size.width, height: 20)
        addSubview(uiimageV)
        addSubview(tips)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
