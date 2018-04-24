//
//  ViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/19/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation

var firstSet = ""
var qrCodeString = ""
var directionMoved: Bool!
var furthestPointMoved: Int!
var pitScoutSet = ""
//var secondSet = ""
//var thirdSet = [""]
//var fourthSet = [""]
//var fifthSet = [""]
//var sixthSet = [""]
//var seventhSet = [""]
//var eighthSet = [""]
//var ninthSet = [""]
//var tenthSet = [""]




var teamList = [String]()
var pitScoutList = [String]()

var deviceName = UIDevice.current.name

var runType: Int!


/*   print(string3)
 if string3.range(of:"MacBook") != nil{
 print("hi")
 }
 */



class ViewController: UIViewController {
    @IBOutlet var dataButton: UIButton!
    @IBOutlet var settingsButton: UIButton!
    @IBOutlet var generateQRButton: UIButton!
    @IBOutlet var scanQRButton: UIButton!
    @IBOutlet var popupView: UIView!
    @IBOutlet var popupLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var title2Label: UILabel!
    
    @IBAction func enterMatchScouting(_ sender: Any) {
        directionMoved = true
        furthestPointMoved = 0
        
        performSegue(withIdentifier: "matchScoutingSegue", sender: nil)
        
    }
    @IBOutlet var pitScoutingButton: UIButton!
    @IBAction func enterPitScouting(_ sender: Any) {
        
        
    }
    // @IBOutlet var imageView: UIImageView!
    @IBOutlet var popupButton: UIButton!
    
    @IBAction func popupButtonPressed(_ sender: Any) {
        popupView.isHidden = true
        popupLabel.isHidden = true
        popupButton.isHidden = true

    }
    
    @IBAction func generateQRCode(_ sender: Any) {
        
       // let test = UserDefaults.standard.array(forKey: "teamList")
        //print(test!)
        
        if UserDefaults.standard.array(forKey: "teamList")?.isEmpty == true && UserDefaults.standard.array(forKey: "pitScoutList")?.isEmpty == true{
            //display label about not having list
            displayPopup()
            
            
        }
            
      
            
        else{
            
            qrCodeString = ""
            
            //if UserDefaults.standard.array(forKey: "teamList") != nil
            if UserDefaults.standard.array(forKey: "teamList")?.isEmpty == false{
                teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                print("\(teamList) and \(teamList.count)")
                
                for index in 0...(teamList.count - 1){
                    if UserDefaults.standard.object(forKey: "\(teamList[index])") != nil{
                        let addString = UserDefaults.standard.object(forKey: "\(teamList[index])")
                        
                        if qrCodeString == ""{
                            qrCodeString = "\(addString!)"
                        }
                        else{
                            qrCodeString = "\(qrCodeString) ||| \(addString!)"
                            
                        }
                        
                        print("QR Code String is \(qrCodeString)")
                        let testArray = qrCodeString.components(separatedBy: ", ")
                        
                        print("count is \(testArray.count)")
                        print("testArray is \(testArray)")
                        // let testArray2 = testArray.components(seperatedBy: "|")
                        //print("testArray2 is \(testArray2)")
                        
                    }
                }
                
                
                
                
            }
            else{
                print("teamList is nil")
                
            }   
            qrCodeString = "\(qrCodeString) |||"
            //
            
            
            if UserDefaults.standard.array(forKey: "pitScoutList")?.isEmpty == false{
                pitScoutList = UserDefaults.standard.object(forKey: "pitScoutList") as! [String]
                print("\(pitScoutList) and \(pitScoutList.count)")
                
                for index in 0...(pitScoutList.count - 1){
                    if UserDefaults.standard.object(forKey: "\(pitScoutList[index])") != nil{
                        let addString2 = UserDefaults.standard.object(forKey: "\(pitScoutList[index])")
                        
                        if qrCodeString == ""{
                            qrCodeString = "\(addString2!)"
                        }
                        else{
                            qrCodeString = "\(qrCodeString) /// \(addString2!)"
                            
                        }
                        
                        print("QR Code String is \(qrCodeString)")
                        let testArray = qrCodeString.components(separatedBy: ", ")
                        
                        print("count is \(testArray.count)")
                        print("testArray is \(testArray)")
                        // let testArray2 = testArray.components(seperatedBy: "|")
                        //print("testArray2 is \(testArray2)")
                        
                    }
                }
                
                
                
            }
            else{
                print("teamList is nil")
            }
            
          //  qrCodeString = "\(qrCodeString) /// "
            
            image = generateQRCode(from: qrCodeString)
            
            performSegue(withIdentifier: "segueToQRCodeGenerator", sender: nil)
        }
        
        
        
    }
    
    func displayPopup(){
        popupView.isHidden = false
        popupLabel.isHidden = false
        popupButton.isHidden = false

    }
    
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        
        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pSFurthestPoint = 0
        directionMoved = true
        furthestPointMoved = 0
       // let testString = "2170, 25, 2, true, 1, 3, 1, 2, 2, 2, 1, Yes, Assisted, good"
        
        runType = 2
        
        if deviceName.range(of:"iPad") != nil{
            //device is iPad
            runType = 1
        }
        else if deviceName.range(of: "iPhone") != nil{
            //device is iPhone
            // print("deviceName is \(deviceName)")
            runType = 2
        }
        print("deviceName is \(deviceName)!")
        
        // Do any additional setup after loading the view, typically from a nib.
        
       // let testString = "sjndakfhiwaejksdfn sdhfijwerda, ieruhqw, uwiherjfdsfn, 8u3ihjrwq"
        
       // arrayOfData = testString.components(separatedBy: ",")
       // print(arrayOfData)
        
        //uncomment to remove userdefaults
        //UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        //UserDefaults.standard.synchronize()
        
        popupView.isHidden = true
        popupLabel.isHidden = true
        popupButton.isHidden = true
        
        popupLabel.adjustsFontSizeToFitWidth = true
        popupLabel.minimumScaleFactor = 0.5
        
        popupButton.titleLabel!.minimumScaleFactor = 0.5
        
        
        //settingsButton.titleLabel!.text = "Enter Scouting Data"
       //  settingsButton.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        //size 40 is iPhone
        
        
       // runType = 1
        
        //runType = 1
        
        if runType == 1{
            settingsButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 65)
            dataButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 65)
            scanQRButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 65)
            generateQRButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 65)
            pitScoutingButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 65)
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            title2Label.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            popupLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            popupButton.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 100)
            
        }
        else if runType == 2{
            settingsButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 40)
            dataButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 40)
            scanQRButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 40)
            generateQRButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 40)
            pitScoutingButton.titleLabel!.font = UIFont.init(name: "Optima-BoldItalic", size: 40)
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
            title2Label.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
            popupLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 40)
            popupButton.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
            
            
        }
        settingsButton.titleLabel!.minimumScaleFactor = 0.01
        //settingsButton.titleLabel!.numberOfLines = 2
        settingsButton.titleLabel!.numberOfLines = 2
        settingsButton.titleLabel!.adjustsFontSizeToFitWidth = true
        settingsButton.titleLabel!.textAlignment = NSTextAlignment.center
       
        settingsButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
       // dataButton.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        dataButton.titleLabel!.minimumScaleFactor = 0.01
        //dataButton.titleLabel!.numberOfLines = 3
        dataButton.titleLabel!.numberOfLines = 3
        dataButton.titleLabel!.adjustsFontSizeToFitWidth = true
        dataButton.titleLabel!.textAlignment = NSTextAlignment.center
        
        dataButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        //scanQRButton.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        scanQRButton.titleLabel!.minimumScaleFactor = 0.01
        scanQRButton.titleLabel!.numberOfLines = 3
        //scanQRButton.titleLabel!.numberOfLines = 2
        scanQRButton.titleLabel!.adjustsFontSizeToFitWidth = true
        scanQRButton.titleLabel!.textAlignment = NSTextAlignment.center
        
        scanQRButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        
      //  generateQRButton.titleLabel!.lineBreakMode = NSLineBreakMode.byWordWrapping
        generateQRButton.titleLabel!.minimumScaleFactor = 0.01
        //generateQRButton.titleLabel!.numberOfLines = 3
        generateQRButton.titleLabel!.numberOfLines = 3
        generateQRButton.titleLabel!.adjustsFontSizeToFitWidth = true
        generateQRButton.titleLabel!.textAlignment = NSTextAlignment.center
        
        generateQRButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        pitScoutingButton.titleLabel!.minimumScaleFactor = 0.01
        //generateQRButton.titleLabel!.numberOfLines = 3
        pitScoutingButton.titleLabel!.numberOfLines = 3
        pitScoutingButton.titleLabel!.adjustsFontSizeToFitWidth = true
        pitScoutingButton.titleLabel!.textAlignment = NSTextAlignment.center
        
        pitScoutingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        
        
        titleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        title2Label.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        titleLabel.adjustsFontSizeToFitWidth = true
        title2Label.adjustsFontSizeToFitWidth = true
        
        titleLabel.minimumScaleFactor = 0.01
        title2Label.minimumScaleFactor = 0.01
        
        deviceName = UIDevice.current.name
        
        /*   print(string3)
         if string3.range(of:"MacBook") != nil{
         print("hi")
         }
         */
        
    
        
    }
    
  //  override func viewDidAppear(_ animated: Bool) {
        
  //  }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

