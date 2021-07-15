//
//  NewViewController.swift
//  table
//
//  Created by Diana on 08.07.2021.
//

import UIKit

class NewViewController: UIViewController {
    
    var receivedInt: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        //UI Label
        let oneLabel: UILabel = UILabel (frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        oneLabel.center = CGPoint (x: 160, y: 284)
        oneLabel.textAlignment = NSTextAlignment.center
        oneLabel.text = "\(receivedInt)"
        self.view.addSubview(oneLabel)
        
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
