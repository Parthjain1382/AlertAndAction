//
//  ViewController.swift
//  AlertAndAction
//
//  Created by E5000846 on 02/06/24.
//

import UIKit

class ViewController: UIViewController {

    let number = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alertButton(_ sender: UIButton) {
        sender.backgroundColor = .gray
        sender.layer.cornerRadius = 14
        showActionSheet()
    }

    
     func showAlert(title : String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {action in
            let thanksAlert = UIAlertController(title: nil, message: "Thanks for Asking", preferredStyle: .alert)
                thanksAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(thanksAlert, animated: true, completion: nil)
        }))
        
        present(alert,animated: true)
    }
    
     func showActionSheet(){
        let actionSheet = UIAlertController(title: "Numbers type", message: "Which type of numbers you want to Display", preferredStyle: .actionSheet)
       
        actionSheet.addAction(UIAlertAction(title: "Composite Numbers", style: .default, handler: {action in
            self.showAlert(title: "Composite Number", message: "The composite Number till 30 are \(compositeNumber(number:self.number))")
        }))

        actionSheet.addAction(UIAlertAction(title: "Prime Numbers", style: .default, handler: {action in
            self.showAlert(title: "Prime Number", message: "The Prime Number till 30 are \(primeNumber(number:self.number))")
        }))
      
        actionSheet.addAction(UIAlertAction(title: "Integer Numbers", style: .default, handler: {action in
            self.showAlert(title: "Integer Number", message: "The Integer Number till 30 are \(integerNumber(number:self.number))")
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: {action in
            print("dismiss")
        }))
        
       present(actionSheet,animated: true)
    }
}

