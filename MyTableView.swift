//
//  MyTableView.swift
//  uitableviewdefalut
//
//  Created by dzc on 2021/8/3.
//

import UIKit

class MyTableView: UITableView {

//    var emptyView: UIView = MyEmptyView() { didSet {emptyViewConfig()} }
//    func emptyViewConfig() {
//        emptyView.isHidden = true
//        addSubview(emptyView)
//        emptyView.frame = self.bounds
//    }
    
    var emptyView = MyEmptyView()
    var titles: String = "" {
        didSet{
            emptyView.title = titles
        }
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.tableFooterView = UIView.init()
        emptyView = MyEmptyView(frame: self.bounds)
        addSubview(emptyView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
