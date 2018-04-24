//
//  InfoEnterViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/20/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation

var autoScaleCubes: Int!
var autoVaultCubes: Int!
var park = ""
var autoCubes: Int!
var teamNumber = ""
var matchNumber = ""
var scoutNumber = ""
//var drivetrain = ""
var additionalNotes = ""
var autoLineCross: Bool!
var cubeCaptureEffectiveness: Int!
var friendlySwitchCubes: Int!
var scaleCubes: Int!
var opposingSwitchCubes: Int!
var vaultCubes: Int!
var driverAbilities: Int!
var climb = ""
//var climbAccomplished: Bool!
var ramp = ""

var robotsAssisted: Int!

class InfoEnterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var titleLabel: UILabel!

    @IBOutlet var teamLabel: UILabel!
    @IBOutlet var matchLabel: UILabel!
    @IBOutlet var scoutLabel: UILabel!

    @IBOutlet var auto2Label: UILabel!

    @IBOutlet var switchLabel: UILabel!
    @IBOutlet weak var teamTextField: UITextField!
    @IBOutlet weak var matchTextField: UITextField!
    @IBOutlet weak var scoutTextField: UITextField!
    @IBOutlet weak var autoLineCrossSwitch: UISwitch!
    @IBOutlet weak var autoSwitchCubesLabel: UILabel!
    @IBOutlet var autoScaleLabel: UILabel!
    @IBOutlet var autoVaultCubesLabel: UILabel!
    
    @IBAction func addVaultCube(_ sender: Any) {
        autoVaultCubes = autoVaultCubes + 1
        autoVaultCubesLabel.text = "Vault Cubes: \(autoVaultCubes!)"
        
    }
    @IBAction func subtractVaultCube(_ sender: Any) {
        if autoVaultCubes > 0 {
            autoVaultCubes = autoVaultCubes - 1
        }
        autoVaultCubesLabel.text = "Vault Cubes: \(autoVaultCubes!)"
        
    }
    
    
    @IBAction func addAutoScaleCube(_ sender: Any) {
        autoScaleCubes = autoScaleCubes + 1
        autoScaleLabel.text = "Scale Cubes: \(autoScaleCubes!)"
    }
    @IBAction func subtractAutoScaleCube(_ sender: Any) {
        if autoScaleCubes > 0 {
            autoScaleCubes = autoScaleCubes - 1
        }
        autoScaleLabel.text = "Scale Cubes: \(autoScaleCubes!)"
    }
    @IBAction func addAutoCube(_ sender: Any) {
        autoCubes = autoCubes + 1
        autoSwitchCubesLabel.text = "Switch Cubes: \(autoCubes!)"
    }
    @IBAction func subtractAutoCube(_ sender: Any) {
        
        if autoCubes > 0 {
           autoCubes = autoCubes - 1
        }
        autoSwitchCubesLabel.text = "Switch Cubes: \(autoCubes!)"
    }
    @IBAction func autoLineSwitchChange(_ sender: Any) {
        if autoLineCross == false{
            autoLineCross = true
        }
        else{
            autoLineCross = false
        }
        print("AutoLineCross is \(autoLineCross)")
    }
    @IBAction func nextPageButton(_ sender: Any) {
        if teamTextField.text != nil{
            teamNumber = teamTextField.text!
        }
        if matchTextField.text != nil{
            matchNumber = matchTextField.text!
        }
        if scoutTextField.text != nil{
            scoutNumber = scoutTextField.text!
        }
    //    if drivetrainTextField.text != nil{
     //       drivetrain = drivetrainTextField.text!
     //   }
        
        print("teamNumber is \(teamNumber)")
        print("matchNumber is \(matchNumber)")
        print("scoutNumber is \(scoutNumber)")
      //  print("drivetrain is \(drivetrain)")
        
        furthestPointMoved = 1
        
        performSegue(withIdentifier: "segueToTeleop", sender: nil)
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //autoLineCross = false
        teamTextField.delegate = self
        matchTextField.delegate = self
        scoutTextField.delegate = self
        teamTextField.keyboardType = UIKeyboardType.numberPad
        matchTextField.keyboardType = UIKeyboardType.numberPad
        scoutTextField.keyboardType = UIKeyboardType.numberPad
      //  drivetrainTextField.keyboardType = UIKeyboardType.alphabet
        //runType = 1
        if runType == 1{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            teamLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            matchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            scoutLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            auto2Label.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            switchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            autoSwitchCubesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            autoScaleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            autoVaultCubesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            teamTextField.font = UIFont(name: teamTextField.font!.fontName, size: 40)
            matchTextField.font = UIFont(name: matchTextField.font!.fontName, size: 40)
            scoutTextField.font = UIFont(name: scoutTextField.font!.fontName, size: 40)
            
        }
        
        else if runType == 2{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
            teamLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            matchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            scoutLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            auto2Label.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            switchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoSwitchCubesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoScaleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoVaultCubesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            scoutTextField.font = UIFont(name: scoutTextField.font!.fontName, size: 20)
            teamTextField.font = UIFont(name: scoutTextField.font!.fontName, size: 20)
            matchTextField.font = UIFont(name: scoutTextField.font!.fontName, size: 20)
        }
        
        teamLabel.adjustsFontSizeToFitWidth = true
        matchLabel.adjustsFontSizeToFitWidth = true
        scoutLabel.adjustsFontSizeToFitWidth = true
        auto2Label.adjustsFontSizeToFitWidth = true
        switchLabel.adjustsFontSizeToFitWidth = true
        autoSwitchCubesLabel.adjustsFontSizeToFitWidth = true
        autoScaleLabel.adjustsFontSizeToFitWidth = true
        autoVaultCubesLabel.adjustsFontSizeToFitWidth = true
        
        
        teamLabel.baselineAdjustment = .alignCenters
        matchLabel.baselineAdjustment = .alignCenters
        scoutLabel.baselineAdjustment = .alignCenters
        auto2Label.baselineAdjustment = .alignCenters
        switchLabel.baselineAdjustment = .alignCenters
        autoSwitchCubesLabel.baselineAdjustment = .alignCenters
        autoScaleLabel.baselineAdjustment = .alignCenters
        autoVaultCubesLabel.baselineAdjustment = .alignCenters
        
       // autoLineCrossSwitch.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        
        autoSwitchCubesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        titleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        teamLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        matchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        scoutLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        auto2Label.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        switchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        autoScaleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        autoVaultCubesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        
        
        if furthestPointMoved >= 1{
            //if teamNumber != nil{
                teamTextField.text! = teamNumber
                matchTextField.text! = matchNumber
                scoutTextField.text! = scoutNumber
            print("autoLineCross is \(autoLineCross)")
            if autoLineCross == true{
                autoLineCrossSwitch.setOn(true, animated:true)
            }
            
            autoSwitchCubesLabel.text = "Switch Cubes: \(autoCubes!)"
            autoScaleLabel.text = "Scale Cubes: \(autoScaleCubes!)"
            autoVaultCubesLabel.text = "Vault Cubes: \(autoVaultCubes!)"
            
           // else if autoLineCross = false{
           //     autoLineCross
           // }
            
            //}
        }
        else {
            autoCubes = 0
            autoScaleCubes = 0
            autoVaultCubes = 0
            autoLineCross = false
            
        }
        
       // autoCubes = 0
      //  autoScaleCubes = 0
        
       
        
        
        // Do any additional setup after loading the view.
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
