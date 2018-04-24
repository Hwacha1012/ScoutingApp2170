//
//  PitScoutingViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 3/16/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation


var pSTeamNumber = ""
var pSdrivetrain = ""
var pSClimbing: Int!
var pSClimbingMechanism = ""
var pSCamera: Int!
var pSSpecialty1 = ""
var pSSpecialty2 = ""
var lastSpecialty: Int!
var pSFurthestPoint: Int!
var pSNotes = ""
var pSCubePlace = ""

class PitScoutingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var teamLabel: UILabel!
    @IBOutlet var teamTextField: UITextField!
    @IBOutlet var drivetrainLabel: UILabel!
    @IBOutlet var tankButton: UIButton!
    @IBOutlet var swerveButton: UIButton!
    @IBOutlet var hDriveButton: UIButton!
    @IBOutlet var mecanumButton: UIButton!
    @IBOutlet var otherButton: UIButton!
    @IBOutlet var climbingLabel: UILabel!
    @IBOutlet var climbingSegmentedControl: UISegmentedControl!
    
    @IBOutlet var cameraSegmentedControl: UISegmentedControl!
    @IBOutlet var climbingTextField: UITextField!
    @IBOutlet var cameraLabel: UILabel!
    @IBOutlet var robotSpecialtyLabel: UILabel!
    @IBOutlet var vaultButton: UIButton!
    //stopped at climbing
    @IBOutlet var driveTrainTextField: UITextField!
    @IBOutlet var switchButton: UIButton!
    @IBOutlet var scaleButton: UIButton!
    @IBOutlet var defenseButton: UIButton!
    @IBOutlet var climbingButton: UIButton!
    @IBAction func tankButtonPressed(_ sender: Any) {
        
        clearDrivetrainColors()
        pSdrivetrain = "Tank"
        tankButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
        tankButton.setTitleColor(UIColor.white, for: .normal)
    }
    @IBAction func swerveButtonPressed(_ sender: Any) {
        clearDrivetrainColors()
        pSdrivetrain = "Swerve"
        swerveButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
        swerveButton.setTitleColor(UIColor.white, for: .normal)

    }
    @IBAction func hDriveButtonPressed(_ sender: Any) {
        clearDrivetrainColors()
        pSdrivetrain = "H-Drive"
        hDriveButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
        hDriveButton.setTitleColor(UIColor.white, for: .normal)
    }
    @IBAction func mecanumButtonPressed(_ sender: Any) {
        clearDrivetrainColors()
        pSdrivetrain = "Mecanum"
        mecanumButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
        mecanumButton.setTitleColor(UIColor.white, for: .normal)
    }
    @IBAction func otherButtonPressed(_ sender: Any) {
        clearDrivetrainColors()
        pSdrivetrain = "Other"
        otherButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
        otherButton.setTitleColor(UIColor.white, for: .normal)
        driveTrainTextField.isHidden = false
    }
    @IBAction func climbSegmentChanged(_ sender: Any) {
        if pSClimbing == 0{
            pSClimbing = 1
            
            climbingTextField.isHidden = false
        }
        else if pSClimbing == 1{
            pSClimbing = 0
            
            climbingTextField.isHidden = true
            
        }
    }
    @IBAction func cameraSegmentChanged(_ sender: Any) {
        if pSCamera == 0{
            pSCamera = 1
        }
        else if pSCamera == 1{
            pSCamera = 0
        }
        
    }
    @IBAction func vaultButtonPressed(_ sender: Any) {
        if lastSpecialty == 2{
            //now change 1
         //   lastSpecialty = 1
          /*  if pSSpecialty1 == "Vault"{
                pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
               // lastSpecialty = 2
                
            }
 */
             if pSSpecialty1 == "Switch"{
                // pSSpecialty1 = ""
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                vaultFirstSpecial()
            }
            else if pSSpecialty1 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                vaultFirstSpecial()
            }
            else if pSSpecialty1 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                vaultFirstSpecial()
            }
            else if pSSpecialty1 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                vaultFirstSpecial()
            }
            
            
            
        }
        else if lastSpecialty == 1{
            //now change 2
          //  lastSpecialty = 2
           /* if pSSpecialty2 == "Vault"{
                pSSpecialty2 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
               // lastSpecialty = 1
               // print(lastSpecialty)
                
            }
 */
             if pSSpecialty2 == "Switch"{
                // pSSpecialty1 = ""
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                vaultSecondSpecial()
            }
            else if pSSpecialty2 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                vaultSecondSpecial()
            }
            else if pSSpecialty2 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                vaultSecondSpecial()
            }
            else if pSSpecialty2 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                vaultSecondSpecial()
            }
            
            
        }
        
        
      /*  else if pSSpecialty1 == ""{
            pSSpecialty1 = "Vault"
            vaultButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
            vaultButton.setTitleColor(UIColor.white, for: .normal)
        }
 */
        
    }
    @IBAction func switchButtonPressed(_ sender: Any) {
        if lastSpecialty == 2{
            //now change 1
          //  lastSpecialty = 1
           /* if pSSpecialty1 == "Switch"{
                pSSpecialty1 = ""
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
             //   lastSpecialty = 2
                
            }
 */
             if pSSpecialty1 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                switchFirstSpecial()
            }
            else if pSSpecialty1 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                switchFirstSpecial()
            }
            else if pSSpecialty1 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                switchFirstSpecial()
            }
            else if pSSpecialty1 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                switchFirstSpecial()
            }
            
            
            
        }
        else if lastSpecialty == 1{
            //now change 2
          //  lastSpecialty = 2
           /* if pSSpecialty2 == "Switch"{
                pSSpecialty2 = ""
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
             //   lastSpecialty = 1
                
            }
 */
             if pSSpecialty2 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                switchSecondSpecial()
            }
            else if pSSpecialty2 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                switchSecondSpecial()
            }
            else if pSSpecialty2 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                switchSecondSpecial()
            }
            else if pSSpecialty2 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                switchSecondSpecial()
            }
            
            
        }
        
    }
    @IBAction func scaleButtonPressed(_ sender: Any) {
        if lastSpecialty == 2{
            //now change 1
          //  lastSpecialty = 1
          /*  if pSSpecialty1 == "Scale"{
                pSSpecialty1 = ""
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
             //   lastSpecialty = 2
                
            }
 */
             if pSSpecialty1 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                scaleFirstSpecial()
                
            }
            else if pSSpecialty1 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                scaleFirstSpecial()
            }
            else if pSSpecialty1 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                scaleFirstSpecial()
            }
            else if pSSpecialty1 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                scaleFirstSpecial()
            }
            
            
            
        }
        else if lastSpecialty == 1{
            //now change 2
         //   lastSpecialty = 2
          /*  if pSSpecialty2 == "Scale"{
                pSSpecialty2 = ""
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
             //   lastSpecialty = 1
                
            }
 */
             if pSSpecialty2 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                scaleSecondSpecial()
            }
            else if pSSpecialty2 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                scaleSecondSpecial()
            }
            else if pSSpecialty2 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                scaleSecondSpecial()
            }
            else if pSSpecialty2 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                scaleSecondSpecial()
            }
            
            
        }
        
    }
    @IBAction func defenseButtonPressed(_ sender: Any) {
        
        if lastSpecialty == 2{
            //now change 1
         //   lastSpecialty = 1
           /* if pSSpecialty1 == "Defense"{
                pSSpecialty1 = ""
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
              //  lastSpecialty = 2
                
            }
 */
             if pSSpecialty1 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                defenseFirstSpecial()
                
            }
            else if pSSpecialty1 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                defenseFirstSpecial()
            }
            else if pSSpecialty1 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                defenseFirstSpecial()
            }
            else if pSSpecialty1 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                defenseFirstSpecial()
            }
            
            
            
        }
        else if lastSpecialty == 1{
            //now change 2
        //    lastSpecialty = 2
          /*  if pSSpecialty2 == "Defense"{
                pSSpecialty2 = ""
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
               // lastSpecialty = 1
                
            }
 */
             if pSSpecialty2 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                defenseSecondSpecial()
            }
            else if pSSpecialty2 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                defenseSecondSpecial()
            }
            else if pSSpecialty2 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                defenseSecondSpecial()
            }
            else if pSSpecialty2 == "Climbing"{
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                defenseSecondSpecial()
            }
            
            
        }
    }
    @IBAction func climbingButtonPressed(_ sender: Any) {
        
        if lastSpecialty == 2{
            //now change 1
         //    lastSpecialty = 1
          /*  if pSSpecialty1 == "Climbing"{
                pSSpecialty1 = ""
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
               //  lastSpecialty = 2
                
            }
 */
             if pSSpecialty1 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                climbFirstSpecial()
                
            }
            else if pSSpecialty1 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                climbFirstSpecial()
            }
            else if pSSpecialty1 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                climbFirstSpecial()
            }
            else if pSSpecialty1 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                climbFirstSpecial()
            }
            
           
            
        }
        else if lastSpecialty == 1{
            //now change 2
          //  lastSpecialty = 2
          /*  if pSSpecialty2 == "Climbing"{
                pSSpecialty2 = ""
                climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                climbingButton.backgroundColor = UIColor.clear
                //lastSpecialty = 1
                
            }
 */
             if pSSpecialty2 == "Vault"{
                // pSSpecialty1 = ""
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                climbSecondSpecial()
            }
            else if pSSpecialty2 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                climbSecondSpecial()
            }
            else if pSSpecialty2 == "Scale"{
                scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                scaleButton.backgroundColor = UIColor.clear
                climbSecondSpecial()
            }
            else if pSSpecialty2 == "Defense"{
                defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                defenseButton.backgroundColor = UIColor.clear
                climbSecondSpecial()
            }
            
            
        }
        
    }
    @IBAction func backButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "segueFromPitScouting", sender: nil)
    }
    @IBAction func forwardButtonPressed(_ sender: Any) {
        if teamTextField.text != nil{
            pSTeamNumber = teamTextField.text!
        }
        
        if pSdrivetrain == "Other"{
            pSdrivetrain = "Other: \(driveTrainTextField.text!)"
            
        }
        if pSClimbing == 1{
            pSClimbingMechanism = climbingTextField.text!
        }
        else if pSClimbing == 0{
            pSClimbingMechanism = ""
        }
        performSegue(withIdentifier: "segueAfterFirstPitScout", sender: nil)
        
    }
    
    func vaultFirstSpecial(){
        pSSpecialty1 = "Vault"
        vaultButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
        vaultButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 1
        
    }
    func vaultSecondSpecial(){
        pSSpecialty2 = "Vault"
        vaultButton.backgroundColor = UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0)
        vaultButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 2
        
    }
    
    func switchFirstSpecial(){
        pSSpecialty1 = "Switch"
        switchButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
        switchButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 1
        
    }
    
    func switchSecondSpecial(){
        pSSpecialty2 = "Switch"
        switchButton.backgroundColor = UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0)
        switchButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 2
    }
    
    func scaleFirstSpecial(){
        pSSpecialty1 = "Scale"
        scaleButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
        scaleButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 1
    }
    
    func scaleSecondSpecial(){
        pSSpecialty2 = "Scale"
        scaleButton.backgroundColor = UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0)
        scaleButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 2
    }
    
    func defenseFirstSpecial(){
        pSSpecialty1 = "Defense"
        defenseButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
        defenseButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 1
    }
    
    func defenseSecondSpecial(){
        pSSpecialty2 = "Defense"
        defenseButton.backgroundColor = UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0)
        defenseButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 2
    }
    
    func climbFirstSpecial(){
        pSSpecialty1 = "Climbing"
        climbingButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
        climbingButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 1
    }
    
    func climbSecondSpecial(){
        pSSpecialty2 = "Climbing"
        climbingButton.backgroundColor = UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0)
        climbingButton.setTitleColor(UIColor.white, for: .normal)
        lastSpecialty = 2
    }
    
    func clearDrivetrainColors(){
        tankButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        tankButton.backgroundColor = UIColor.clear
        
        swerveButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        swerveButton.backgroundColor = UIColor.clear
        
        hDriveButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        hDriveButton.backgroundColor = UIColor.clear
        
        mecanumButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        mecanumButton.backgroundColor = UIColor.clear
        
        otherButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        otherButton.backgroundColor = UIColor.clear
        
        driveTrainTextField.isHidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // pSdrivetrain = "Other: 123456789"
       // let range = NSMakeRange(0, 6)
       // let swiftRange = Range(range, in: pSdrivetrain)
       // pSdrivetrain = pSdrivetrain.removeSubrange(swiftRange!)
        
    //    print("ps drivetrain is \(pSdrivetrain)")
        
        if runType == 1{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            teamLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            
            drivetrainLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            tankButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            swerveButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            mecanumButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            hDriveButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            otherButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            
            climbingLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            teamTextField.font = UIFont(name: teamTextField.font!.fontName, size: 40)
            climbingTextField.font = UIFont(name: climbingTextField.font!.fontName, size: 40)
            driveTrainTextField.font = UIFont(name: driveTrainTextField.font!.fontName, size: 40)
            
            robotSpecialtyLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            vaultButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            switchButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            scaleButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            defenseButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            climbingButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            
            font = UIFont.systemFont(ofSize: 32)
         
            
        }
            
        else if runType == 2{
            
            
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
            teamLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            
            drivetrainLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            tankButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            swerveButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            mecanumButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            hDriveButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            otherButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            
            climbingLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            teamTextField.font = UIFont(name: teamTextField.font!.fontName, size: 20)
            climbingTextField.font = UIFont(name: climbingTextField.font!.fontName, size: 20)
            driveTrainTextField.font = UIFont(name: driveTrainTextField.font!.fontName, size: 20)
            
            robotSpecialtyLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            vaultButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            switchButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            scaleButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            defenseButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            climbingButton.titleLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: 20)
            
            font = UIFont.systemFont(ofSize: 25)
        }
        
        climbingSegmentedControl.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        cameraSegmentedControl.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        
        titleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        teamLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        drivetrainLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        cameraLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        climbingLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        robotSpecialtyLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        //tankButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        tankButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
        tankButton.setTitleColor(UIColor.white, for: .normal)
        //tankButton.setTitleColor(UIColor.init(red: 0.27451, green: 0.776471, blue: 0.50196078431, alpha: 0.2431273), for: .normal)
        
        
        swerveButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        mecanumButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        hDriveButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        otherButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        
       // vaultButton.setTitleColor(UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0), for: .normal)
        
        vaultButton.backgroundColor = UIColor.init(red: 1.0, green: 0.8431372549, blue: 0.0, alpha: 1.0)
        vaultButton.setTitleColor(UIColor.white, for: .normal)
        
        switchButton.backgroundColor = UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0)
        switchButton.setTitleColor(UIColor.white, for: .normal)
        
        //switchButton.setTitleColor(UIColor.init(red: 0.75294117647, green: 0.75294117647, blue: 0.75294117647, alpha: 1.0), for: .normal)
        scaleButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        defenseButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        climbingButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        if pSFurthestPoint == 0{
            driveTrainTextField.isHidden = true
            pSdrivetrain = "Tank"
            pSClimbing = 1
            pSCamera = 1
            pSSpecialty1 = "Vault"
            pSSpecialty2 = "Switch"
            
            teamTextField.text = ""
            
        }
        else if pSFurthestPoint > 0 {
            if pSdrivetrain == "Other"{

                driveTrainTextField.text = pSdrivetrain
                driveTrainTextField.isHidden = true
                
            }
            else if pSdrivetrain == "Tank"{
                clearDrivetrainColors()
               // pSdrivetrain = "Tank"
                tankButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
                tankButton.setTitleColor(UIColor.white, for: .normal)
            }
            else if pSdrivetrain == "Swerve"{
                clearDrivetrainColors()
               // pSdrivetrain = ""
                swerveButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
                swerveButton.setTitleColor(UIColor.white, for: .normal)
            }
            else if pSdrivetrain == "H-Drive"{
                clearDrivetrainColors()
                // pSdrivetrain = ""
                hDriveButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
                hDriveButton.setTitleColor(UIColor.white, for: .normal)
            }
            else if pSdrivetrain == "Mecanum"{
                clearDrivetrainColors()
                // pSdrivetrain = ""
                mecanumButton.backgroundColor = UIColor.init(red: 0.27451, green: 0.776471, blue: 0.2431273, alpha: 1.0)
                mecanumButton.setTitleColor(UIColor.white, for: .normal)
            }
            
            if pSClimbing == 1{
                climbingTextField.text! = pSClimbingMechanism
                climbingTextField.isHidden = false
            }
            else if pSClimbing == 0{
                pSClimbingMechanism = ""
                climbingTextField.isHidden = true
            }
            if pSSpecialty1 == "Vault"{
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                vaultFirstSpecial()
            }
            else if pSSpecialty1 == "Switch"{
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                switchFirstSpecial()
            }
            else if pSSpecialty1 == "Scale"{
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                scaleFirstSpecial()
            }
            else if pSSpecialty1 == "Defense"{
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                defenseFirstSpecial()
            }
            else if pSSpecialty1 == "Climbing"{
                vaultButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                vaultButton.backgroundColor = UIColor.clear
                climbFirstSpecial()
            }
            if pSSpecialty2 == "Switch"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                switchSecondSpecial()
            }
            else if pSSpecialty2 == "Vault"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                vaultSecondSpecial()
            }
            else if pSSpecialty2 == "Scale"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                scaleSecondSpecial()
            }
            else if pSSpecialty2 == "Defense"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                defenseSecondSpecial()
            }
            else if pSSpecialty2 == "Climbing"{
                switchButton.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
                switchButton.backgroundColor = UIColor.clear
                climbSecondSpecial()
            }
            
        }
        
        lastSpecialty = 1
        
        teamTextField.delegate = self
        climbingTextField.delegate = self
        driveTrainTextField.delegate = self
        teamTextField.keyboardType = UIKeyboardType.numberPad
        climbingTextField.keyboardType = UIKeyboardType.alphabet
        driveTrainTextField.keyboardType = UIKeyboardType.alphabet
        
       
        
        //climbingTextField.isHidden = true
        pSFurthestPoint = 1
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
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
