//
//  TableViewExtension.swift
//  uitableviewdefalut
//
//  Created by dzc on 2021/8/3.
//
import UIKit

extension MyTableView {
    public override func reloadData(){
        super.reloadData()
        
        var sections = 1
        var rows = 0
        
        let dataSource = dataSource
        if ((dataSource?.responds(to: #selector(numberOfRows(inSection:)))) != nil) {
            sections = dataSource?.numberOfSections?(in: self) ?? 1
            if ((dataSource?.responds(to: #selector(numberOfRows(inSection:)))) != nil) {
                for i in 0..<sections {
                    rows += dataSource?.tableView(self, numberOfRowsInSection: i) ?? 0
                }
            }
        }
        if rows == 0 {
            emptyView.isHidden = false
        }else{
            emptyView.isHidden = true
        }
        
    }
}
