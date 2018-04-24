//
//  EmailViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 2/2/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//


import Foundation
import MessageUI
import UIKit

class EmailViewController: UIViewController, MFMailComposeViewControllerDelegate {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("here")
        
        // OLD VIEW CONTROLLER!!! DO NOT USE
        
        sendEmail()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["leoqh6@gmail.com"])
            mail.setSubject("Spreadsheet of Data")
            mail.setMessageBody("<p>You're awesome!</p>", isHTML: true)
            present(mail, animated: true)
            
        
           do {
                // Read the file contents
                readString = try String(contentsOf: url!)
                print(readString)
                let data1 = readString.data(using: .utf8)
                mail.addAttachmentData(data1!, mimeType: "csv", fileName: "Spreadsheet")
            
                print("File Text: \(readString)   !")
            
            

            
            
            } catch {
                //print("Failed reading from URL: \(url!), Error: " + error.localizedDescription)
            }
        
           // present(mail, animated: true)
          //  DispatchQueue.main.async() {
                //call your performSegueWithIdentifier in here
               // self.present(mail, animated: true)
           // }
            
            
            
            /* if let filepath = Bundle.main.path(forResource: "SampleSpreadsheet", ofType: "csv") {
             do {
             let contents = try String(contentsOfFile: filepath)
             print(contents)
             let data1 = contents.data(using: .utf8)
             mail.addAttachmentData(data1!, mimeType: "csv", fileName: "Spreadsheet")
             } catch {
             // contents could not be loaded
             }
             } else {
             // example.txt not found!
             }
             */
            
            
            
        } else {
            // show failure alert
        }
        
        print("mail sent?")

        performSegue(withIdentifier: "segueSegue", sender: nil)
 
        
    }
    
  
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        performSegue(withIdentifier: "segueSegue", sender: nil)
        controller.dismiss(animated: true)

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
