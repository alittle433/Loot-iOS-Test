//
//  TransactionView.swift
//  Loot-iOS-Test
//
//  Created by Alex Little on 06/11/2018.
//  Copyright © 2018 Alex Little. All rights reserved.
//

import UIKit
import SnapKit

class TransactionView: UIView {

    var baseView: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        return view
    }()

    lazy var tableView: UITableView = {
        var table = UITableView()
        table.allowsSelection = false
        table.backgroundColor = .clear
        table.separatorStyle = .none
        return table
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        setup()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setup() {
        addSubview(baseView)
        baseView.addSubview(tableView)
        setupTableView()
    }

    func setupTableView() {
        tableView.register(TransactionCell.self, forCellReuseIdentifier: TransactionCell.identifier)
        tableView.register(HeaderView.self, forHeaderFooterViewReuseIdentifier: HeaderView.identifier)
    }

    func setupConstraints() {

        baseView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
