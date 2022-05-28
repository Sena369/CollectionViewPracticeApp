//
//  NextViewController.swift
//  CollectionViewPracticeApp
//
//  Created by 澤田世那 on 2022/05/29.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    static func instanntiate() -> NextViewController {
        let nextVC = UIStoryboard(name: "Next", bundle: nil).instantiateInitialViewController() as! NextViewController
        return nextVC
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
