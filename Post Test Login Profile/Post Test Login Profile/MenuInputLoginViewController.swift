//
//  MenuInputLoginViewController.swift
//  Post Test Login Profile
//
//  Created by Abi Sayuti on 10/23/17.
//  Copyright © 2017 AbiSayuti. All rights reserved.
//

import UIKit

class MenuInputLoginViewController: UIViewController {
    
    @IBOutlet weak var etUsername: UITextField!
    
    @IBOutlet weak var etPassword: UITextField!
    
    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etSchool: UITextField!
    
    @IBOutlet weak var etAge: UITextField!
    @IBOutlet weak var etClass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //check what segue with name passData is available or not
        if(segue.identifier == "passData"){
            let sendData = segue.destination as! DataProfileViewController
            sendData.username = etUsername.text!
            //send email data
            sendData.email = etEmail.text!
            //send password data
            sendData.password = etPassword.text!
            sendData.school = etSchool.text!
            //send email data
            sendData.classs = etClass.text!
            //send password data
            sendData.age = etAge.text!
        
        
        
    }
    
    
    
        func didReceiveMemoryWarning() {
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
}
