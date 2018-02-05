//
//  TotalViewController.swift
//  QPizza
//
//  Created by Swift on 19/01/2018.
//  Copyright © 2018 Eduardo. All rights reserved.
//

import UIKit

class TotalViewController: UIViewController {

    
    //MARK: - Outlets
    @IBOutlet weak var labelTotal: UILabel!
    
    
    
    //MARK: - M
    override func viewDidLoad() {
        super.viewDidLoad()

        objetoDeAcessoTotalVC = self
        labelTotal.text = "R$ \(somarArray(arrayFloat: arraySoma))"
    
    }

   
    


}
