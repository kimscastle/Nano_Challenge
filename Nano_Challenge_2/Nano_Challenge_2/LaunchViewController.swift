//
//  LaunchViewController.swift
//  Nano_Challenge_2
//
//  Created by uiskim on 2022/08/30.
//

import UIKit

class LaunchViewController: UIViewController {

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
    @IBAction func aaa(_ sender: UIButton) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "survey") else { return }
        uvc.modalTransitionStyle = .coverVertical
        uvc.modalPresentationStyle = .fullScreen
        self.present(uvc, animated: true)
    }

    
}
