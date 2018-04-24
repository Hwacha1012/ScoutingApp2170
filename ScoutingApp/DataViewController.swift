//
//  DataViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/25/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation
var tempTeamData = ""
var partsOfTempTeamData = [String]()

class DataViewController: UIViewController {

    @IBOutlet var teamLabel: UILabel!
    @IBOutlet var matchLabel: UILabel!
    @IBOutlet var scoutLabel: UILabel!
    @IBOutlet var autoLineLabel: UILabel!
    @IBOutlet var autoCubeLabel: UILabel!
    @IBOutlet var autoScaleCubesLabel: UILabel!
    @IBOutlet var autoVaultCubeLabel: UILabel!
    
    @IBOutlet var friendlySwitchLabel: UILabel!
    @IBOutlet var scaleLabel: UILabel!
    @IBOutlet var opposingSwitchLabel: UILabel!
    @IBOutlet var vaultLabel: UILabel!
    @IBOutlet var driverLabel: UILabel!
    @IBOutlet var climbLabel: UILabel!

    @IBOutlet var additionalNotesLabel: UILabel!

    @IBOutlet var cubeCaptureLabel: UILabel!
    @IBOutlet var robotsAssistedLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //additionalNotesLabel.numberOfLines = 3
        //additionalNotesLabel.adjustsFontSizeToFitWidth = true
        //additionalNotesLabel.minimumScaleFactor = 0.01
        
        additionalNotesLabel.adjustsFontSizeToFitWidth = true
        additionalNotesLabel.numberOfLines = 0
        additionalNotesLabel.minimumScaleFactor = 0.01
        
        if runType == 1{
           // additionalNotesLabel.numberOfLines = 10
           //// additionalNotesLabel.adjustsFontSizeToFitWidth = true
            //additionalNotesLabel.
           // additionalNotesLabel.minimumScaleFactor = 0.01
           // additionalNotesLabel.baselineAdjustment = .alignCenters
            
            teamLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 80)
            scoutLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            matchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoLineLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoCubeLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            cubeCaptureLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            friendlySwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoScaleCubesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            scaleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            opposingSwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            vaultLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            driverLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            climbLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            autoVaultCubeLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            robotsAssistedLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            additionalNotesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            
           
        }
        else if runType == 2{
          //  additionalNotesLabel.numberOfLines = 10
          //  additionalNotesLabel.adjustsFontSizeToFitWidth = true
            //additionalNotesLabel.
          //  additionalNotesLabel.minimumScaleFactor = 0.01
          //  additionalNotesLabel.baselineAdjustment = .alignCenters
            
            teamLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 50)
            scoutLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            matchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            autoLineLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            autoCubeLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            cubeCaptureLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            friendlySwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            autoScaleCubesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            scaleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            opposingSwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            vaultLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            driverLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            climbLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            autoVaultCubeLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            robotsAssistedLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            additionalNotesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 30)
            
            
        }
        cubeCaptureLabel.numberOfLines = 1
        
        //tempTeamData = UserDefaults.standard.object(forKey: "37") as! String
       tempTeamData = UserDefaults.standard.object(forKey: "\(teamNumberFromButton)") as! String
        print("teamnum = \(teamNumberFromButton)")
        
        //var string = "hello Swift"
        
        if teamNumberFromButton.range(of:"Pit") != nil {
            print("exists")
            
            partsOfTempTeamData = tempTeamData.components(separatedBy: ",")
            print("tempTeamData = \(tempTeamData)")
            print(partsOfTempTeamData)
            
            let teamNum = teamNumberFromButton.components(separatedBy: ";")
            
            teamLabel.text = "Team \(teamNum[0])'s Pit Scouting Data"
            matchLabel.text = "Drivetrain: \(partsOfTempTeamData[1])"
            scoutLabel.text = "Climbing: \(partsOfTempTeamData[2])"
            autoLineLabel.text = "Climbing Mechanism: \(partsOfTempTeamData[3])"
            //if partsOfTempTeamData[3] == "true" || partsOfTempTeamData[3] == " true"{
           //     autoLineLabel.text = "Crosses Auto Line: Yes"
            //}
          //  else{
          //      autoLineLabel.text = "Crosses Auto Line: No"
         //   }
            
            if partsOfTempTeamData[4] == "1" || partsOfTempTeamData[4] == " 1" || partsOfTempTeamData[4] == "1 " || partsOfTempTeamData[4] == " 1 "{
                autoCubeLabel.text = "Camera: Yes"
            }
            else if partsOfTempTeamData[4] == "0" || partsOfTempTeamData[4] == " 0" || partsOfTempTeamData[4] == "0 " || partsOfTempTeamData[4] == " 0 "{
                autoCubeLabel.text = "Camera: No"
            }
            
            autoScaleCubesLabel.text = "Specialty 1: \(partsOfTempTeamData[5])"
            autoVaultCubeLabel.text = "Specialty 2: \(partsOfTempTeamData[6])"
            
            cubeCaptureLabel.numberOfLines = 0
            cubeCaptureLabel.text = "Cube Placement: \(partsOfTempTeamData[7])"
            /*friendlySwitchLabel.text = "Additional Notes: \(partsOfTempTeamData[8])"
            scaleLabel.text = "Scale Cubes: \(partsOfTempTeamData[9])"
            opposingSwitchLabel.text = "Opposing Switch Cubes: \(partsOfTempTeamData[10])"
            vaultLabel.text = "Vault Cubes: \(partsOfTempTeamData[11])"
            driverLabel.text = "Driver Abilities: \(partsOfTempTeamData[12])"
            if partsOfTempTeamData[13] == "1" || partsOfTempTeamData[13] == "1 " || partsOfTempTeamData[13] == " 1" || partsOfTempTeamData[13] == " 1 "{
                climbLabel.text = "Climbing: Climbed"
            }
            else if partsOfTempTeamData[13] == "0" || partsOfTempTeamData[13] == "0 " || partsOfTempTeamData[13] == " 0" || partsOfTempTeamData[13] == " 0 "{
                climbLabel.text = "Climbing: Didn't"
            }
            
            robotsAssistedLabel.text = "Robots Assisted: \(partsOfTempTeamData[14])"
            */
            additionalNotesLabel.text = "Additional Notes: \(partsOfTempTeamData[8])"
            
            friendlySwitchLabel.isHidden = true
            scaleLabel.isHidden = true
            opposingSwitchLabel.isHidden = true
            vaultLabel.isHidden = true
            driverLabel.isHidden = true
            climbLabel.isHidden = true
            robotsAssistedLabel.isHidden = true
            
        }
        else{
            partsOfTempTeamData = tempTeamData.components(separatedBy: ",")
            print("tempTeamData = \(tempTeamData)")
            print(partsOfTempTeamData)
            
            let teamNum = teamNumberFromButton.components(separatedBy: ";")
            
            teamLabel.text = "Team \(teamNum[0])'s Data"
            matchLabel.text = "Match Number: \(partsOfTempTeamData[1])"
            scoutLabel.text = "Scout Number: \(partsOfTempTeamData[2])"
            if partsOfTempTeamData[3] == "true" || partsOfTempTeamData[3] == " true"{
                autoLineLabel.text = "Crosses Auto Line: Yes"
            }
            else{
                autoLineLabel.text = "Crosses Auto Line: No"
            }
            
            autoCubeLabel.text = "Auto Cubes: \(partsOfTempTeamData[4])"
            autoScaleCubesLabel.text = "Auto Scale Cubes: \(partsOfTempTeamData[5])"
            autoVaultCubeLabel.text = "Auto Vault Cubes: \(partsOfTempTeamData[6])"
            
            cubeCaptureLabel.text = "Cube Capture Effectiveness: \(partsOfTempTeamData[7])"
            friendlySwitchLabel.text = "Friendly Switch Cubes: \(partsOfTempTeamData[8])"
            scaleLabel.text = "Scale Cubes: \(partsOfTempTeamData[9])"
            opposingSwitchLabel.text = "Opposing Switch Cubes: \(partsOfTempTeamData[10])"
            vaultLabel.text = "Vault Cubes: \(partsOfTempTeamData[11])"
            driverLabel.text = "Driver Abilities: \(partsOfTempTeamData[12])"
            if partsOfTempTeamData[13] == "1" || partsOfTempTeamData[13] == "1 " || partsOfTempTeamData[13] == " 1" || partsOfTempTeamData[13] == " 1 "{
                climbLabel.text = "Climbing: Climbed"
            }
            else if partsOfTempTeamData[13] == "0" || partsOfTempTeamData[13] == "0 " || partsOfTempTeamData[13] == " 0" || partsOfTempTeamData[13] == " 0 "{
                climbLabel.text = "Climbing: Didn't"
            }
            
            robotsAssistedLabel.text = "Robots Assisted: \(partsOfTempTeamData[14])"
            
            additionalNotesLabel.text = "Additional Notes: \(partsOfTempTeamData[15])"
            
        }
        
       // additionalNotesLabel.text = "WHY U NO WORK?"
        
        //additionalNotesLabel.
        
      //  additionalNotesLabel.baselineAdjustment = .alignCenters
        
        
        teamLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        matchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        scoutLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        autoLineLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        autoCubeLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        autoScaleCubesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        cubeCaptureLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        friendlySwitchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        scaleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        opposingSwitchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        vaultLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        driverLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        climbLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        robotsAssistedLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        autoVaultCubeLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        additionalNotesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        
       // additionalNotesLabel.baselineAdjustment = .alignCenters
        
        
        
        
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
