//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Jolyon Rudolph on 06/06/2019.
//  Copyright © 2019 Jolyon Rudolph. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var completeLabel: UILabel!
    
    var task : Task? = nil
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
        completeLabel.text = "❗️\(task!.name!)"
        } else {
            completeLabel.text = task!.name!
        }

    }
    
    @IBAction func completeTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
        
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
