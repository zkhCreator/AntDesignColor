//
//  ViewController.swift
//  AntDesignColor
//
//  Created by zkh90644@gmail.com on 09/05/2020.
//  Copyright (c) 2020 zkh90644@gmail.com. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    let tableView:UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
        tableView.register(ColorInfoTableViewCell.self, forCellReuseIdentifier: NSStringFromClass(ColorInfoTableViewCell.self))
        tableView.register(ColorInfoSectionHeaderView.self, forHeaderFooterViewReuseIdentifier: NSStringFromClass(ColorInfoSectionHeaderView.self))
        tableView.estimatedSectionFooterHeight = 0.01
        tableView.estimatedSectionHeaderHeight = 44.0

        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor.white
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return ColorManager.data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ColorManager.data[section].colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let data = ColorManager.data[indexPath.section].colors[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: NSStringFromClass(ColorInfoTableViewCell.self)) as? ColorInfoTableViewCell else {
            return UITableViewCell()
        }
        
        cell.update(with: data)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44.0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: NSStringFromClass(ColorInfoSectionHeaderView.self)) as? ColorInfoSectionHeaderView else {
            return nil;
        }
        let info = ColorManager.data[section]
        view.update(title: info.title, desc: info.desc)
        return view
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = ColorManager.data[indexPath.section].colors[indexPath.row]
        
        let pasteboard = UIPasteboard.general
        pasteboard.string = data.colorValue
    }
}

