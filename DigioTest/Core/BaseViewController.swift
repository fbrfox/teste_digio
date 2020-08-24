//
//  BaseViewController.swift
//  DigioTest
//
//  Created by Pedro Henrique Borges De Paula Sebastiao (RESOURCE TECNOLOGIA E INFORMATICA LTDA – GEDES – SP) on 23/08/20.
//  Copyright © 2020 Digio Test. All rights reserved.
//

import UIKit
import ProgressHUD

class BaseViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    func showError(_ message: String){
        
        ProgressHUD.showError(message)
    }
    
    

    func showHideProgress(_ show: Bool){
         
         
        if(show) {
            ProgressHUD.show("Aguarde...")
        }
        else{
            ProgressHUD.dismiss()
        }
         
         
     }
   

}
