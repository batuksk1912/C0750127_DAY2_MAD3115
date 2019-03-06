//
//  ViewController.swift
//  C0750127_DAY2_MAD3115
//
//  Created by Baturay Kayatürk on 5.03.2019.
//  Copyright © 2019 Lambton College. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblControl: UILabel!
    @IBAction func swcCheck(_ sender: UISwitch) {
        if sender.isOn {
            lblControl.text = "ON"
        } else {
            lblControl.text = "OFF"
        }
    }
    @IBAction func btnNavigator(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let logoVc = sb.instantiateViewController(withIdentifier: "logoVC") as! LogoViewController
        self.present(logoVc,animated: true)
        
    }
    
    @IBAction func btnTwo(_ sender: UIButton) {
        let alert = UIAlertController(title: "What's your name?", message: nil, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Input your name here..."
        })
        
        alert.addTextField(configurationHandler: { textField in textField.isSecureTextEntry = true
            textField.placeholder = "Input your password"
        })
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            
            if let name = alert.textFields?[0].text {
                print("Your name: \(name)")
            }
            if let pass = alert.textFields?[1].text {
                print("Your password: \(pass)")
            }
        }))
        
        self.present(alert, animated: true)
    }
    
    
    @IBAction func btnOne(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message: "How are you ?", preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction(title: "Default", style: .default) { (action:UIAlertAction) in
            print("You've pressed default");
        }
        
        let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
            print("You've pressed cancel");
        }
        
        let action3 = UIAlertAction(title: "Destructive", style: .destructive) { (action:UIAlertAction) in
            print("You've pressed the destructive");
        }
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        self.present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

