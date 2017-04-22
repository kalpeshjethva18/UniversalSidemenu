//
//  LeftViewController.swift
//  KalpeshTest
//
//  Created by jayesh on 4/21/17.
//  Copyright © 2017 jayesh. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblView: UITableView!
    
    var swiftViewController: UIViewController!
    var javaViewController: UIViewController!

    
    var arrayData = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let swiftViewController = storyboard.instantiateViewController(withIdentifier: "swiftViewcontroller") as! swiftViewcontroller
        self.swiftViewController = UINavigationController(rootViewController: swiftViewController)
        let javaViewController = storyboard.instantiateViewController(withIdentifier: "javaViewcontroller") as! javaViewcontroller
        self.javaViewController = UINavigationController(rootViewController: javaViewController)
     
        for i in 0...9
        {
            arrayData.add(String(0))
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayData.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let objView = Bundle.main.loadNibNamed("HeaderView", owner: self, options: nil)?.first as! HeaderView
        objView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width - 50, height: 50)
        objView.lblHeaderTitle.text = "Section:\(section)"
        objView.btnAction.tag = section
        objView.btnAction.addTarget(self, action: #selector(btnObjAction), for: UIControlEvents.touchUpInside)
        return objView
    }
    func btnObjAction(sender:UIButton){
        
        print(sender.tag)
        if arrayData.object(at: sender.tag) as! String == "0"
        {
            arrayData.replaceObject(at: sender.tag, with: "1")
        }
        else{
            arrayData.replaceObject(at: sender.tag, with: "0")
        }
        tblView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if arrayData.object(at: section) as! String == "0"
        {
            return 0
        }
        else{
            switch section {
            case 0:
                return section + 1
            case 1:
                return section
            case 2:
                return section
            case 3:
                return section
            case 4:
                return section
            case 5:
                return section
            case 6:
                return section
            case 7:
                return section
            case 8:
                return section
            case 9:
                return section
            case 10:
                return section
            default:
                return 10
                
            }
        }

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! leftCell
        cell.lblTitle.text = "kalpesh \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
     
        if indexPath.row == 0
        {
            self.slideMenuController()?.changeMainViewController(self.swiftViewController, close: true)

        }
        else{
            self.slideMenuController()?.changeMainViewController(self.javaViewController, close: true)

        }
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
