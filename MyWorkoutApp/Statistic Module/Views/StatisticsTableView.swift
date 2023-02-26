//
//  StatisticsTableView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 26.02.2023.
//

import Foundation

import UIKit

class StatisticsTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        confugure()
        setDelegate()
        register(StatisticsTableViewCell.self, forCellReuseIdentifier: StatisticsTableViewCell.idStatisticsTableViewCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func confugure() {
        backgroundColor = .none
        bounces = false
        showsVerticalScrollIndicator = false
        
    }
    
    private func setDelegate() {
        dataSource = self
        delegate = self
    }
}

// MARK: - UITableViewDataSource

extension StatisticsTableView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: StatisticsTableViewCell.idStatisticsTableViewCell, for: indexPath) as? StatisticsTableViewCell else { return UITableViewCell() }
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension StatisticsTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        80
    }
}
