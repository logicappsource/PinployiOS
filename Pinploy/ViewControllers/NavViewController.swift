//
//  NavViewController.swift
//  Pinploy
//
//  Created by dev on 09/03/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import SideMenu

class NavViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nav(_ sender: Any) {
        // Define the menu
        //let menu = SideMenuNavigationController(rootViewController: navigationController!)
        let menu = storyboard!.instantiateViewController(withIdentifier: "profileNavSideBar") as! SideMenuNavigationController
        // SideMenuNavigationController is a subclass of UINavigationController, so do any additional configuration
        // of it here like setting its viewControllers. If you're using storyboards, you'll want to do something like:
        // let menu = storyboard!.instantiateViewController(withIdentifier: "RightMenu") as! SideMenuNavigationController
        present(menu, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
