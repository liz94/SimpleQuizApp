//
//  TwoViewController.swift
//  SimpleQuizApp
//
//  Created by LIZANDRA ALMEIDA on 29/3/19.
//  Copyright © 2019 LIZANDRA ALMEIDA. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var score: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if score != nil {lbl.text = score}
        // Do any additional setup after loading the view.
        //spmetginh
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
