//
//  ViewController.swift
//  Netflix Clone UIKit
//
//  Created by Daniel Spalek on 05/08/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemYellow
        
        // we are adding these navigation controllers because in each page in the bottom menu we will be able to click on a movie for example and go to another view which is why we are making those a navigation controllers (the bottom menu pages)
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: UpcomingViewController())
        let vc3 = UINavigationController(rootViewController: SearchViewController())
        let vc4 = UINavigationController(rootViewController: DownloadsViewController())
        
        // setting the images for the icons
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc2.tabBarItem.image = UIImage(systemName: "play.circle")
        vc3.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        vc4.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        // setting the text for the icons too
        vc1.title = "Home"
        vc2.title = "Coming Soon"
        vc3.title = "Top Search"
        vc4.title = "Downloads"
        
        // changing tint so the icons are more visible
        tabBar.tintColor = .label
        
        // setting them for the bottom menu
        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
        
        
    }


}

