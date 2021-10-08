//
//  LoginViewController.swift
//  APPDelivery
//
//  Created by pat002900 on 07/10/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func realizaLogin(_ sender: Any) {
        if(true){
            let tabBar = storyboard?.instantiateViewController(identifier: "tabBarId")
            if (tabBar != nil){
                tabBar?.modalPresentationStyle = .fullScreen
                tabBar?.modalTransitionStyle = .flipHorizontal
                self.present(tabBar!, animated: true, completion: nil)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
