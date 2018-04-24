//
//  PitScouting2ViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 4/3/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation
var climbMechString = ""

class PitScouting2ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var cubePlaceLabel: UILabel!
    @IBOutlet var cubePlaceTextView: UITextView!
    @IBOutlet var notesLabel: UILabel!
    @IBOutlet var notesTextView: UITextView!
    @IBOutlet var submitButton: UIButton!
    @IBAction func backButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "segueFromLastPitScout", sender: nil)
    }
    @IBAction func submitData(_ sender: Any) {
        
        if notesTextView.text != nil{
            pSNotes = notesTextView.text!
        }
        if cubePlaceTextView.text != nil{
            pSCubePlace = cubePlaceTextView.text!
        }
       /* let autoLineCrossString = String(autoLineCross)
        let autoCubesString = String(autoCubes)
        let autoVaultCubesString = String(autoVaultCubes)
        let autoScaleCubesString = String(autoScaleCubes)
        let cubeCapEff = String(cubeCaptureEffectiveness)
        let friendlySwitchString = String(friendlySwitchCubes)
        let scaleString = String(scaleCubes)
        let opposingSwitchString = String(opposingSwitchCubes)
        let vaultString = String(vaultCubes)
        let driverString = String(driverAbilities)
        let climbString = String(climb)
        //let climbAccomplishedString = String(climbAccomplished)
        let robotAssistedString = String(robotsAssisted)
        //let rampString = String(ramp)
        
        //  let parkString = String(park)
 */
        
        let climbString = String(pSClimbing)
        if pSClimbing == 1{
            climbMechString = pSClimbingMechanism
        }
        else{
            climbMechString = ""
        }
        let cameraString = String(pSCamera)
    
        //firstSet = "\(teamNumber), \(matchNumber), \(scoutNumber), \(autoLineCrossString), \(autoCubesString), \(autoScaleCubesString), \(autoVaultCubesString), \(cubeCapEff), \(friendlySwitchString), \(scaleString), \(opposingSwitchString), \(vaultString), \(driverString), \(climbString), \(robotAssistedString), \(additionalNotes)"
        
        
       // print("\(firstSet)")
        
        //\(parkString)
        pitScoutSet = "\(pSTeamNumber), \(pSdrivetrain), \(climbString), \(climbMechString), \(cameraString), \(pSSpecialty1), \(pSSpecialty2), \(pSCubePlace), \(pSNotes)"
        
        UserDefaults.standard.set(pitScoutSet, forKey: "\(pSTeamNumber); Pit Scouting")
        
        if pSTeamNumber != ""{
            if UserDefaults.standard.array(forKey: "pitScoutList") == nil{
                // pitScoutList = UserDefaults.standard.object(forKey: "pitScoutList") as! [String]
                pitScoutList.append("\(pSTeamNumber); Pit Scouting")
               // print("pitScoutList is \(pitScoutList)!")
                UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                
            }
            else if UserDefaults.standard.array(forKey: "pitScoutList")!.isEmpty == false{
                
                //commented code overwrites previous entries with same team number
                pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                breakLoop = false
                for index in 0...[pitScoutList].count - 1 {
                    if pSTeamNumber == pitScoutList[index]{
                        breakLoop = true
                        
                    }
                }
                print("breakLoop is \(breakLoop)")
                if breakLoop == false{
                    pitScoutList.append("\(pSTeamNumber); Pit Scouting")
                    print(pitScoutList)
                    UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                }
                else if breakLoop == true{
                    let indexOfElement = pitScoutList.index(of: "\(pSTeamNumber); Pit Scouting")
                    pitScoutList.remove(at: indexOfElement!)
                    pitScoutList.append("\(pSTeamNumber); Pit Scouting")
                    print(pitScoutList)
                    UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                    
                }
                
                
                //comment below code to when you uncomment the above
                //  pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                //  pitScoutList.append("\(teamNumber); \(matchNumber)")
                //  UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
            }
            else{
                pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                pitScoutList.append("\(pSTeamNumber); Pit Scouting")
                print("pitScoutList is \(pitScoutList)")
                UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
            }
            
            
        }
        
        performSegue(withIdentifier: "seguePostPitScout", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        cubePlaceLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        //rampLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        notesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        //   parkLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        submitButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        titleLabel.adjustsFontSizeToFitWidth = true
        cubePlaceLabel.adjustsFontSizeToFitWidth = true
       // rampLabel.adjustsFontSizeToFitWidth = true
        notesLabel.adjustsFontSizeToFitWidth = true
        //    parkLabel.adjustsFontSizeToFitWidth = true
        
        titleLabel.minimumScaleFactor = 0.01
        cubePlaceLabel.minimumScaleFactor = 0.01
        //rampLabel.minimumScaleFactor = 0.01
        notesLabel.minimumScaleFactor = 0.01
        //parkLabel.minimumScaleFactor = 0.01
        
        notesTextView.delegate = self
        notesTextView.keyboardType = UIKeyboardType.alphabet
        cubePlaceTextView.delegate = self
        cubePlaceTextView.keyboardType = UIKeyboardType.alphabet
        
        
        
        
        
        if runType == 1{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            cubePlaceLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
          //  rampLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            //  parkLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            notesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            notesTextView.font = UIFont(name: notesTextView.font!.fontName, size: 40)
            cubePlaceTextView.font = UIFont(name: cubePlaceTextView.font!.fontName, size: 40)
            font = UIFont.systemFont(ofSize: 32)
            submitButton.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 90)
        }
            
        else if runType == 2{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
           cubePlaceLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
          //  rampLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            //  parkLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            notesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            notesTextView.font = UIFont(name: notesTextView.font!.fontName, size: 20)
            cubePlaceTextView.font = UIFont(name: cubePlaceTextView.font!.fontName, size: 20)
            font = UIFont.systemFont(ofSize: 15)
            submitButton.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
        }
        cubePlaceTextView.textColor = UIColor.black
        notesTextView.textColor = UIColor.black
        
        if pSFurthestPoint == 2{
            cubePlaceTextView.text = pSCubePlace
            notesTextView.text = pSNotes
            
        }
        else{
            cubePlaceTextView.text = "Enter Cube Placement (intake design)"
            notesTextView.text = "Enter Notes (include autos)"
        }
        
        pSFurthestPoint = 2
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
 /*
    func textViewDidBeginEditing(_ notesTextView: UITextView) {
        print("in here")
        if notesTextView.textColor == UIColor.lightGray && notesTextView.text == "Enter Notes"{
            notesTextView.text = ""
            print("here")
            notesTextView.textColor = UIColor.black
        }
        else if notesTextView.textColor == UIColor.lightGray{
            notesTextView.textColor = UIColor.black
        }
        if cubePlaceTextView.textColor == UIColor.lightGray && cubePlaceTextView.text == "Enter Cube Placement"{
            cubePlaceTextView.text = ""
            print("here")
            cubePlaceTextView.textColor = UIColor.black
        }
        else if cubePlaceTextView.textColor == UIColor.lightGray{
            cubePlaceTextView.textColor = UIColor.black
        }
        
    }
    
    func textViewDidEndEditing(_ notesTextView: UITextView) {
        if notesTextView.text.isEmpty {
            notesTextView.text = "Enter Notes"
            notesTextView.textColor = UIColor.lightGray
        }
    }
    
    func textViewDidBeginEditing2(_ cubePlaceTextView: UITextView) {
        print("in here")
        if cubePlaceTextView.textColor == UIColor.lightGray && cubePlaceTextView.text == "Enter Cube Placement"{
            cubePlaceTextView.text = ""
            print("here")
            cubePlaceTextView.textColor = UIColor.black
        }
        else if cubePlaceTextView.textColor == UIColor.lightGray{
            cubePlaceTextView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing2(_ cubePlaceTextView: UITextView) {
        if cubePlaceTextView.text.isEmpty {
            cubePlaceTextView.text = "Enter Cube Placement"
            cubePlaceTextView.textColor = UIColor.lightGray
        }
    }
    */
    
    
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
