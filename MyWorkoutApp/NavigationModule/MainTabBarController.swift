//
//  MainTabBarController.swift
//  MyWorkoutApp
//
//  Created by Mikhail Balakirev on 28.02.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBar()
        setupItems()
    }
    
    private func setupBar() {
        tabBar.backgroundColor = .specialTabBar
        tabBar.tintColor = .specialDarkGreen
        tabBar.unselectedItemTintColor = .specialGray
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.specialLightBrown.cgColor
    }
    
    private func setupItems() {
        
        let mainVc = MainViewController()
        let statisticsVC = StatisticsViewContoller()
        
        setViewControllers([mainVc, statisticsVC], animated: true)
        
        guard let items = tabBar.items else { return }
        items[0].title = "Main"
        items[1].title = "Statistics"
        
        items[0].image = Resources.Image.mainTabBar
        items[1].image = Resources.Image.statisticTabBar
        
        UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont(name: "Roboto-Bold", size: 12) as Any], for: .normal)
    }
}
