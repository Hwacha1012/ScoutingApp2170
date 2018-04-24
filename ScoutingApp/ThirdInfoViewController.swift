//
//  ThirdInfoViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/20/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation

var font = UIFont.systemFont(ofSize: 15)
var climbString = ""

var breakLoop: Bool!

class ThirdInfoViewController: UIViewController, UITextFieldDelegate {
   
    
    @IBOutlet var titleLabel: UILabel!

    @IBOutlet var notesLabel: UILabel!
    @IBOutlet var climbingLabel: UILabel!
    @IBOutlet var rampLabel: UILabel!
   // @IBOutlet var notesLabel: UILabel!
  //  @IBOutlet var additionalNotesTextField: UITextField!
    
    @IBOutlet var additionalNotesTextField: UITextView!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var climbSegmentedControl: UISegmentedControl!
    
  //  var amountOfLinesToBeShown:CGFloat = 6
   // var maxHeight:CGFloat = additionalNotesTextField.font.lineHeight * amountOfLinesToBeShown
    
    @IBAction func backButton(_ sender: Any) {
      /*  if additionalNotesTextField.text != "" || additionalNotesTextField.text != nil{
           additionalNotes = additionalNotesTextField.text!
        }
        else{
            additionalNotes = ""
        }
        */
        performSegue(withIdentifier: "segueBackFromLastPage", sender: nil)
        
       // print("Text field is\(additionalNotesTextField.text).")
        
        
    }
    @IBAction func robotAssistedAdd(_ sender: Any) {
        robotsAssisted = robotsAssisted + 1
        //print()
        rampLabel.text = "Robots Assisted: \(robotsAssisted!)"
        
    }
    @IBAction func robotAssistedSubtract(_ sender: Any) {
        if robotsAssisted > 0 {
            robotsAssisted = robotsAssisted - 1
        }
        rampLabel.text = "Robots Assisted: \(robotsAssisted!)"
    }
    
    
    
    @IBAction func climbSegmentChange(_ sender: Any) {
        if climbSegmentedControl.selectedSegmentIndex == 0{
            climb = "Climbed"
        }
        else if climbSegmentedControl.selectedSegmentIndex == 1{
            climb = "Didn't"
        }
      //  else{
      //      climb = "No"
      //  }
        
        //print(climb)
    }
    
   
    
    @IBAction func submitData(_ sender: Any) {
        
       // furthestPointMoved = 3
        
        if additionalNotesTextField.text != nil{
            additionalNotes = additionalNotesTextField.text!
        }
        let autoLineCrossString = String(autoLineCross)
        let autoCubesString = String(autoCubes)
        let autoVaultCubesString = String(autoVaultCubes)
        let autoScaleCubesString = String(autoScaleCubes)
        let cubeCapEff = String(cubeCaptureEffectiveness)
        let friendlySwitchString = String(friendlySwitchCubes)
        let scaleString = String(scaleCubes)
        let opposingSwitchString = String(opposingSwitchCubes)
        let vaultString = String(vaultCubes)
        let driverString = String(driverAbilities)
        
        if climb == "Climbed"{
            climbString = "1"
        }
        else if climb == "Didn't"{
            climbString = "0"
        }
        //let climbAccomplishedString = String(climbAccomplished)
        let robotAssistedString = String(robotsAssisted)
        //let rampString = String(ramp)
        
        //  let parkString = String(park)
        
        
        
        
        
        
        firstSet = "\(teamNumber), \(matchNumber), \(scoutNumber), \(autoLineCrossString), \(autoCubesString), \(autoScaleCubesString), \(autoVaultCubesString), \(cubeCapEff), \(friendlySwitchString), \(scaleString), \(opposingSwitchString), \(vaultString), \(driverString), \(climbString), \(robotAssistedString), \(additionalNotes)"
        
        print("\(firstSet)")
        
        //\(parkString)
        UserDefaults.standard.set(firstSet, forKey: "\(teamNumber); \(matchNumber)")
        
        if teamNumber != ""{
            if UserDefaults.standard.array(forKey: "teamList") == nil{
                // teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                teamList.append("\(teamNumber); \(matchNumber)")
                print("teamlist is \(teamList)!")
                UserDefaults.standard.set(teamList, forKey: "teamList")
                
            }
            else if UserDefaults.standard.array(forKey: "teamList")!.isEmpty == false{
                
                //commented code overwrites previous entries with same team number
                teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                breakLoop = false
                for index in 0...teamList.count - 1 {
                    if teamNumber == teamList[index]{
                        breakLoop = true
                        
                    }
                }
                print("breakLoop is \(breakLoop)")
                if breakLoop == false{
                    teamList.append("\(teamNumber); \(matchNumber)")
                    print(teamList)
                    UserDefaults.standard.set(teamList, forKey: "teamList")
                }
                else if breakLoop == true{
                    let indexOfElement = teamList.index(of: "\(teamNumber); \(matchNumber)")
                    teamList.remove(at: indexOfElement!)
                    teamList.append("\(teamNumber); \(matchNumber)")
                    print(teamList)
                    UserDefaults.standard.set(teamList, forKey: "teamList")
                    
                }
                
                
                //comment below code to when you uncomment the above
                //  teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                //  teamList.append("\(teamNumber); \(matchNumber)")
                //  UserDefaults.standard.set(teamList, forKey: "teamList")
            }
            else{
                teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                teamList.append("\(teamNumber); \(matchNumber)")
                print("teamlist is \(teamList)")
                UserDefaults.standard.set(teamList, forKey: "teamList")
            }
            
            
        }
        
        performSegue(withIdentifier: "segueBackToMainMenu", sender: nil)
            
        
        
     //   else if UserDefaults.standard.object(forKey: "secondSet") == nil{
            
       // }
        //let test = UserDefaults.standard.object(forKey: "firstSet")
           // let test = UserDefaults.value(forKey: "firstSet")
       // print(test)
            
        
        
        
        
        
        //UserDefaults.standard.set("TEST", forKey: "Key") //setObject
        
        
    }
  //  @IBOutlet weak var additionalNotesTextField: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//additionalNotesTextField.sizeThatFits(CGSizeMake(additionalNotesTextField.frame.size.width, maxHeight))
        
       // additionalNotesTextField.autocapitalizationType {sentences}
       // additionalNotesTextField.autocorrectionType {}
        //additionalNotesTextField.
        
        
        
        
        
        titleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        climbingLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        rampLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        notesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
     //   parkLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        submitButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        titleLabel.adjustsFontSizeToFitWidth = true
        climbingLabel.adjustsFontSizeToFitWidth = true
        rampLabel.adjustsFontSizeToFitWidth = true
        notesLabel.adjustsFontSizeToFitWidth = true
    //    parkLabel.adjustsFontSizeToFitWidth = true
        
        titleLabel.minimumScaleFactor = 0.01
        climbingLabel.minimumScaleFactor = 0.01
        rampLabel.minimumScaleFactor = 0.01
        notesLabel.minimumScaleFactor = 0.01
        //parkLabel.minimumScaleFactor = 0.01
        
        //additionalNotesTextField.delegate = self
        additionalNotesTextField.keyboardType = UIKeyboardType.default
    
        
        
        var string1 = UIDevice.current.name
        
        
        
    /*   print(string3)
        if string3.range(of:"MacBook") != nil{
            print("hi")
        }
 */
      //  if string1.range(of:"iPad") != nil{
     //       font = UIFont.systemFont(ofSize: 40)
     //   }
        
       // runType = 1
        if runType == 1{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            climbingLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            rampLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
          //  parkLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            notesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            additionalNotesTextField.font = UIFont(name: additionalNotesTextField.font!.fontName, size: 40)
            font = UIFont.systemFont(ofSize: 32)
            submitButton.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 90)
        }
        
        else if runType == 2{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            climbingLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            rampLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
          //  parkLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            notesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            additionalNotesTextField.font = UIFont(name: additionalNotesTextField.font!.fontName, size: 20)
            font = UIFont.systemFont(ofSize: 15)
            submitButton.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
        }
        
       // if submitButton. >= 300{
            //font = UIFont.systemFont(ofSize: 40)
            
      //  }
       // print(submitButton.width)
        print("font is \(font)")
        print(UIDevice.current.name)
        
        climbSegmentedControl.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
      //  rampSegmentedControl.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        //parkSegmentedControl.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        
        climb = "Yes"
        ramp = "Used"
        //park = "Yes"
        
        submitButton.titleLabel!.adjustsFontSizeToFitWidth = true
        submitButton.titleLabel!.numberOfLines = 2
        submitButton.titleLabel!.minimumScaleFactor = 0.5
        submitButton.titleLabel!.textAlignment = NSTextAlignment.center
        
        if furthestPointMoved >= 3{
            
            
            
            additionalNotesTextField.text = "\(additionalNotes)"
            additionalNotesTextField.textColor = UIColor.lightGray
            
        }
        else{
            additionalNotes = ""
            robotsAssisted = 0
            additionalNotesTextField.text = "Enter Notes"
            additionalNotesTextField.textColor = UIColor.lightGray
        }
        
        //climbCapable = false
       // climbAccomplished = false
        //hasRamp = false
        
        furthestPointMoved = 3
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func textViewDidBeginEditing(_ additionalNotesTextField: UITextView) {
        print("in here")
        if additionalNotesTextField.textColor == UIColor.lightGray && additionalNotesTextField.text == "Enter Notes"{
            additionalNotesTextField.text = ""
            print("here")
            additionalNotesTextField.textColor = UIColor.black
        }
        else if additionalNotesTextField.textColor == UIColor.lightGray{
            additionalNotesTextField.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ additionalNotesTextField: UITextView) {
        if additionalNotesTextField.text.isEmpty {
            additionalNotesTextField.text = "Enter Notes (be detailed)"
            additionalNotesTextField.textColor = UIColor.lightGray
        }
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
