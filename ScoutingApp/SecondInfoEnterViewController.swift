//
//  SecondInfoEnterViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/20/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit
import Foundation

class SecondInfoEnterViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var cubeCaptureEffLabel: UILabel!
    @IBOutlet weak var cubeCaptureSlider: UISlider!
    @IBOutlet weak var friendlySwitchLabel: UILabel!
    @IBOutlet weak var scaleLabel: UILabel!
    @IBOutlet weak var opposingSwitchLabel: UILabel!
    @IBOutlet weak var vaultLabel: UILabel!
    @IBOutlet weak var driveAbilitiesLabel: UILabel!
    @IBOutlet weak var driveAbilitiesSlider: UISlider!
    @IBAction func cubeCaptureSliderMoved(_ sender: Any) {
        (sender as AnyObject).setValue(Float(lroundf(cubeCaptureSlider.value)), animated: true)
        cubeCaptureEffectiveness = Int(cubeCaptureSlider.value)
        cubeCaptureEffLabel.text = "Cube Capture Effectiveness: \(cubeCaptureEffectiveness!)"
    }
    @IBAction func driverAbilitiesSliderMoved(_ sender: Any) {
        (sender as AnyObject).setValue(Float(lroundf(driveAbilitiesSlider.value)), animated: true)
        driverAbilities = Int(driveAbilitiesSlider.value)
        driveAbilitiesLabel.text = "Driver Abilities: \(driverAbilities!)"
    }
    @IBAction func friendlySwitchCubeAdd(_ sender: Any) {
        friendlySwitchCubes = friendlySwitchCubes + 1
        friendlySwitchLabel.text = "Friendly Switch Cubes: \(friendlySwitchCubes!)"
    }
    @IBAction func friendlySwitchCubeMinus(_ sender: Any) {
        if friendlySwitchCubes > 0{
            friendlySwitchCubes = friendlySwitchCubes - 1
            friendlySwitchLabel.text = "Friendly Switch Cubes: \(friendlySwitchCubes!)"
        }
    }
    @IBAction func scaleCubeAdd(_ sender: Any) {
        scaleCubes = scaleCubes + 1
        scaleLabel.text = "Scale Cubes: \(scaleCubes!)"
    }
    @IBAction func scaleCubeMinus(_ sender: Any) {
        if scaleCubes > 0{
            scaleCubes = scaleCubes - 1
            scaleLabel.text = "Scale Cubes: \(scaleCubes!)"
        }
    }
    @IBAction func opposingSwitchCubeAdd(_ sender: Any) {
        opposingSwitchCubes = opposingSwitchCubes + 1
        opposingSwitchLabel.text = "Opposing Switch Cubes: \(opposingSwitchCubes!)"
        
    }
    @IBAction func opposingSwitchCubeMinus(_ sender: Any) {
        if opposingSwitchCubes > 0{
            opposingSwitchCubes = opposingSwitchCubes - 1
            opposingSwitchLabel.text = "Opposing Switch Cubes: \(opposingSwitchCubes!)"
        }
        
    }
    @IBAction func vaultCubeAdd(_ sender: Any) {
        vaultCubes = vaultCubes + 1
        vaultLabel.text = "Vault Cubes: \(vaultCubes!)"
    }
    @IBAction func vaultCubeMinus(_ sender: Any) {
        if vaultCubes > 0{
            vaultCubes = vaultCubes - 1
            vaultLabel.text = "Vault Cubes: \(vaultCubes!)"
        }
        
    }
    @IBAction func nextPageButton(_ sender: Any) {
        driverAbilities = Int(driveAbilitiesSlider.value)
        cubeCaptureEffectiveness = Int(cubeCaptureSlider.value)
        print("drive is \(driverAbilities!)")
        print("cube is \(cubeCaptureEffectiveness!)")
        
        furthestPointMoved = 2
        performSegue(withIdentifier: "segueToEndGame", sender: nil)
            
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if furthestPointMoved >= 2{
           cubeCaptureSlider.value = Float(cubeCaptureEffectiveness)
            cubeCaptureEffLabel.text = "Cube Capture Effectiveness: \(cubeCaptureEffectiveness!)"
            cubeCaptureSlider.setValue(Float(cubeCaptureEffectiveness), animated:true)
            
            driveAbilitiesSlider.value = Float(driverAbilities)
            driveAbilitiesLabel.text = "Cube Capture Effectiveness: \(driverAbilities!)"
            driveAbilitiesSlider.setValue(Float(driverAbilities), animated:true)
            
            friendlySwitchLabel.text = "Friendly Switch Cubes: \(friendlySwitchCubes!)"
            opposingSwitchLabel.text = "Opposing Switch Cubes: \(opposingSwitchCubes!)"
            scaleLabel.text = "Scale Cubes: \(scaleCubes!)"
            vaultLabel.text = "Vault Cubes: \(vaultCubes!)"
            
        }
        else{
            
            friendlySwitchCubes = 0
            opposingSwitchCubes = 0
            vaultCubes = 0
            scaleCubes = 0
        }
        
        
        
        titleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        cubeCaptureEffLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        friendlySwitchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        scaleLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        opposingSwitchLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        vaultLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        driveAbilitiesLabel.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        
        //runType = 1
        if runType == 1{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 120)
            cubeCaptureEffLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            friendlySwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            scaleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            opposingSwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            driveAbilitiesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            vaultLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 60)
            
        }
        else if runType == 2{
            titleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
            cubeCaptureEffLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            friendlySwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            scaleLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            opposingSwitchLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            driveAbilitiesLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
            vaultLabel.font = UIFont.init(name: "Futura-MediumItalic", size: 45)
        }
        

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
