//
//  ViewController.swift
//  uitableviewdefalut
//
//  Created by dzc on 2021/8/3.
//

import UIKit

class ViewController: UIViewController {

    var arr: [String] = []
    
    lazy var btn: UIButton = {
        let result = UIButton(type: .custom)
        result.frame = CGRect(x: 10, y: 50, width: 100, height: 50)
        result.setTitle("点击", for: .normal)
        result.backgroundColor = .red
        result.addTarget(self, action: #selector(xxx), for: .touchUpInside)
        return result
    }()
    lazy var btn2: UIButton = {
        let result = UIButton(type: .custom)
        result.frame = CGRect(x: 130, y: 50, width: 100, height: 50)
        result.setTitle("点击2", for: .normal)
        result.backgroundColor = .red
        result.addTarget(self, action: #selector(xxx2), for: .touchUpInside)
        return result
    }()
    @objc func xxx() {
        arr.removeAll()
        tab.reloadData()
    }
    @objc func xxx2() {
        arr.append("阿斯蒂芬")
        arr.append("阿斯啊芬")
        arr.append("阿啊啊啊斯蒂芬")
        arr.append("阿斯对对对蒂芬")
        arr.append("阿斯蒂多逛逛芬")
        arr.append("阿斯222蒂芬")
        arr.append("阿斯蒂芬")
        arr.append("阿斯啊芬")
        arr.append("阿啊啊啊斯蒂芬")
        arr.append("阿斯对对对蒂芬")
        arr.append("阿斯蒂多逛逛芬")
        arr.append("阿斯222蒂芬")
        tab.reloadData()
    }
    lazy var tab: MyTableView = {
        let result = MyTableView(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height - 100), style: .plain)
        result.delegate = self
        result.dataSource = self
        result.register(UITableViewCell.self, forCellReuseIdentifier: "AA")
        result.titles = "就拉萨的房间里撒娇朵法拉上级领单开发及阿拉山口打飞机拉伸"
        return result
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tab)
        view.addSubview(btn)
        view.addSubview(btn2)

        arr.append("阿斯蒂芬")
        arr.append("阿斯啊芬")
        arr.append("阿啊啊啊斯蒂芬")
        arr.append("阿斯对对对蒂芬")
        arr.append("阿斯蒂多逛逛芬")
        arr.append("阿斯222蒂芬")
        tab.reloadData()

    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AA")!
        cell.textLabel?.text = arr[indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
   
}
