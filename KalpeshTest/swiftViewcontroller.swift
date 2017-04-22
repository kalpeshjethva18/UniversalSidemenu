//
//  swiftViewcontroller.swift
//  KalpeshTest
//
//  Created by jayesh on 4/21/17.
//  Copyright © 2017 jayesh. All rights reserved.
//

import UIKit

class swiftViewcontroller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.setNavigationBarItem()
    }
    
    @IBAction func btnAction(_ sender: UIButton) {
        
        let objjavaa = self.storyboard?.instantiateViewController(withIdentifier: "javaViewcontroller") as! javaViewcontroller
        self.navigationController?.pushViewController(objjavaa, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
