//
//  MainTableView.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 25.02.2023.
//

import UIKit

class MainTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        confugure()
        setDelegate()
        register(WorkoutTableViewCell.self, forCellReuseIdentifier: WorkoutTableViewCell.idTableViewCell)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func confugure() {
        backgroundColor = .none
        separatorStyle = .singleLine
        bounces = false
        showsVerticalScrollIndicator = false
        
    }
    
    private func setDelegate() {
        dataSource = self
        delegate = self
    }
}

// MARK: - UITableViewDataSource

extension MainTableView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WorkoutTableViewCell.idTableViewCell, for: indexPath) as? WorkoutTableViewCell else { return UITableViewCell() }
        
        return cell
    }
}

// MARK: - UITableViewDelegate

extension MainTableView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
