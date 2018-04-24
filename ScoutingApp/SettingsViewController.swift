//
//  SettingsViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/23/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//
var readString = ""
var readString2 = ""
var textCellIdentifier = "cell"
var teamNumberFromButton = ""
var firstRow = ""
var secondRow = ""
var thirdRow = ""
var fourthRow = ""
var fifthRow = ""
var sixthRow = ""
var seventhRow = ""
var eighthRow = ""
var ninthRow = ""
var tenthRow = ""
var eleventhRow = ""
var twelfthRow = ""
var thirteenthRow = ""
var fourteenthRow = ""
var fifteenthRow = ""
var sixteenthRow = ""
var seventeenthRow = ""
var eightheenthRow = ""
var ninteenthRow = ""
var twentiethRow = ""
var twentifirstRow = ""
var twentisecondRow = ""
var twentithirdRow = ""
var twentifourthRow = ""
var twentififthRow = ""
var twentisixthRow = ""
var twentiseventhRow = ""
var twentieighthRow = ""
var twentininthRow = ""
var thirtiethRow = ""
var thirtifirstRow = ""
var thirtisecondRow = ""
var thirtithirdRow = ""
var thirtifourthRow = ""
var thirtififthRow = ""
var thirtisixthRow = ""
var thirtiseventhRow = ""
var thirtieighthRow = ""
var thirtininthRow = ""
var fourtiethRow = ""
var fourtifirstRow = ""
var fourtisecondRow = ""
var fourtithirdRow = ""
var fourtifourthRow = ""
var fourtififthRow = ""
var fourtisixthRow = ""
var fourtiseventhRow = ""
var fourtieighthRow = ""
var fourtininthRow = ""
var fiftiethRow = ""
var fiftifirstRow = ""
var fiftisecondRow = ""
var fiftithirdRow = ""
var fiftifourthRow = ""
var fiftififthRow = ""
var fiftisixthRow = ""
var fiftiseventhRow = ""
var fiftieighthRow = ""
var fiftininthRow = ""
var sixtiethRow = ""
var sixtifirstRow = ""
var sixtisecondRow = ""
var sixtithirdRow = ""
var sixtifourthRow = ""
var sixtififthRow = ""
var sixtisixthRow = ""
var sixtiseventhRow = ""
var sixtieighthRow = ""
var sixitininthRow = ""
var seventithRow = ""
var seventifirstRow = ""
var seventisecondRow = ""
var seventithirdRow = ""
var seventifourthRow = ""
var seventififthRow = ""
var seventisixthRow = ""
var seventiseventhRow = ""
var seventieighthRow = ""
var seventininthRow = ""
var eightiethRow = ""
var eightifirstRow = ""
var eightisecondRow = ""
var eightithirdRow = ""
var eightifourthRow = ""
var eightififthRow = ""
var eightisixthRow = ""
var eightiseventhRow = ""
var eightieighthRow = ""
var eightininthRow = ""
var nintiethRow = ""
var nintifirstRow = ""
var nintisecondRow = ""
var nintithirdRow = ""
var nintifourthRow = ""
var nintififthRow = ""
var nintisixthRow = ""
var nintiseventhRow = ""
var nintieighthRow = ""
var nintininthRow = ""
var hundredthRow = ""
var url: URL!
var url2: URL!




//var url = Bundle.main.url(forResource: "SampleSpreadsheet", withExtension: "csv")!

import UIKit
import Foundation

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    

    @IBOutlet var exportData: UIButton!
    @IBAction func exportDataPressed(_ sender: Any) {
        saveData()
        performSegue(withIdentifier: "segueWithEmail", sender: nil)
        
    }
    
    func saveData(){
        if UserDefaults.standard.array(forKey: "teamList") != nil{
            teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
            print("teamList is \(teamList)")
            
            if teamList.isEmpty == false{
                for index in 0...teamList.count - 1{
                    
                    if index == 0{
                        firstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                        //firstRow = test.joined(separator: ",")
                    }
                    else if index == 1{
                        secondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 2{
                        thirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 3{
                        fourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String                    }
                    else if index == 4{
                        fifthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 5{
                        sixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 6{
                        seventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 7{
                        eighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 8{
                        ninthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 9{
                        tenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 10{
                        eleventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 11{
                        twelfthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 12{
                        thirteenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 13{
                        fourteenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 14{
                        fifteenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 15{
                        sixteenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 16{
                        seventeenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 17{
                        eightheenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 18{
                        ninteenthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 19{
                        twentiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 20{
                        twentifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 21{
                        twentisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 22{
                        twentithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 23{
                        twentifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 24{
                        twentififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 25{
                        twentisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 26{
                        twentiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 27{
                        twentieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 28{
                        twentininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 29{
                        thirtiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 30{
                        thirtifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 31{
                        thirtisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 32{
                        thirtithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 33{
                        thirtifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 34{
                        thirtififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 35{
                        thirtisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 36{
                        thirtiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 37{
                        thirtieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 38{
                        thirtininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 39{
                        fourtiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 40{
                        fourtifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 41{
                        fourtisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 42{
                        fourtithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 43{
                        fourtifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 44{
                        fourtififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 45{
                        fourtisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 46{
                        fourtiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 47{
                        fourtieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 48{
                        fourtininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 49{
                        fiftiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 50{
                        fiftifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 51{
                        fiftisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 52{
                        fiftithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 53{
                        fiftifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 54{
                        fiftififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 55{
                        fiftisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 56{
                        fiftiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 57{
                        fiftieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 58{
                        fiftininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 59{
                        sixtiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 60{
                        sixtifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 61{
                        sixtisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 62{
                        sixtithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 63{
                        sixtifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 64{
                        sixtififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 65{
                        sixtisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 66{
                        sixtiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 67{
                        sixtieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 68{
                        sixitininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 69{
                        seventithRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 70{
                        seventifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 71{
                        seventisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 72{
                        seventithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 73{
                        seventifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 74{
                        seventififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 75{
                        seventisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 76{
                        seventiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 77{
                        seventieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 78{
                        seventininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 79{
                        eightiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 80{
                        eightifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 81{
                        eightisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 82{
                        eightithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 83{
                        eightifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 84{
                        eightififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 85{
                        eightisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 86{
                        eightiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 87{
                        eightieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 88{
                        eightininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                        
                    else if index == 89{
                        nintiethRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 90{
                        nintifirstRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 91{
                        nintisecondRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 92{
                        nintithirdRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 93{
                        nintifourthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 94{
                        nintififthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 95{
                        nintisixthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 96{
                        nintiseventhRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 97{
                        nintieighthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 98{
                        nintininthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    else if index == 99{
                        hundredthRow = UserDefaults.standard.object(forKey: "\(teamList[index])") as! String
                    }
                    
                    
                }
                
                /*
                 if let filepath = Bundle.main.path(forResource: "SampleSpreadsheet", ofType: "csv") {
                 do {
                 let contents = try String(contentsOfFile: filepath)
                 print(contents)
                 } catch {
                 // contents could not be loaded
                 }
                 } else {
                 // example.txt not found!
                 }
                 */
                
                // Used to store the file contents
                do {
                    // Read the file contents
                    readString = try String(contentsOf: url!)
                    /*  let newString1 = readString.replacingOccurrences(of: "false", with: "0")
                     let newString2 = newString1.replacingOccurrences(of: "true", with: "1")
                     let newString3 = newString2.replacingOccurrences(of: "No", with: "0")
                     let newString4 = newString3.replacingOccurrences(of: "Attempted", with: "1")
                     let newString5 = newString4.replacingOccurrences(of: "Yes", with: "2")
                     let newString6 = newString5.replacingOccurrences(of: "Used", with: "1")
                     let newString7 = newString6.replacingOccurrences(of: "Assisted", with: "2")
                     let newString8 = newString7.replacingOccurrences(of: "Didn't", with: "0")
                     let newString9 = newString8.replacingOccurrences(of: "Parked", with: "1")
                     readString = newString9.replacingOccurrences(of: "Climbed", with: "2")
                     */
                    
                    
                    print("Data Text is : \(readString) ||||")
                } catch let error as NSError {
                    print("Failed reading from URL: \(url!), Error: " + error.localizedDescription)
                }
                
                
                // print("File Text: \(readString)")
                
                /*  // try! firstRow.write(to: url, atomically: true, encoding: String.Encoding.utf8)
                 let titleString = "Team Number, Match Number, Scout Number, Crosses Auto Line, Auto Cubes, Cube Capture Effectiveness, Friendly Switch Cubes, Scale Cubes, Opposing Switch Cubes, Vault Cubes, Driver Abilities, Climbing, Ramp, Additional Notes"
                 do {
                 try "\(titleString)\n".write(to: url, atomically: true, encoding: String.Encoding.utf8)
                 print("It worked")
                 } catch {
                 print(error)
                 }
                 */
                //
                //
                //
                /*     let fileName = "SampleSpreadsheet"
                 let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                 
                 let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("csv")
                 print("FilePath: \(fileURL.path)")
                 
                 let writeString = "Write this text to the fileURL as text in iOS using Swift"
                 do {
                 // Write to the file
                 try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
                 
                 print("saved")
                 } catch let error as NSError {
                 print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
                 }
                 
                 
                 var readString = "" // Used to store the file contents
                 do {
                 // Read the file contents
                 readString = try String(contentsOf: fileURL)
                 } catch let error as NSError {
                 print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
                 }
                 print("File Text: \(readString)")
                 */
                //
                //
                //
                
                for i in 0...teamList.count {
                    //dataString =  String(list1[i]) + ": " + list2[i] + list3[i] + "\n"
                    //Check if file exists
                    
                    
                    do {
                        let fileHandle = try FileHandle(forWritingTo: url!)
                        fileHandle.seekToEndOfFile()
                        if i == 1{
                            fileHandle.write("\(firstRow)\n".data(using: .utf8)!)
                            print("In 1")
                        }
                        else if i == 2{
                            fileHandle.write("\(secondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 3{
                            fileHandle.write("\(thirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 4{
                            fileHandle.write("\(fourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 5{
                            fileHandle.write("\(fifthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 6{
                            fileHandle.write("\(sixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 7{
                            fileHandle.write("\(seventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 8{
                            fileHandle.write("\(eighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 9{
                            fileHandle.write("\(ninthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 10{
                            fileHandle.write("\(tenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 11{
                            fileHandle.write("\(eleventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 12{
                            fileHandle.write("\(twelfthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 13{
                            fileHandle.write("\(thirteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 14{
                            fileHandle.write("\(fourteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 15{
                            fileHandle.write("\(fifteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 16{
                            fileHandle.write("\(sixteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 17{
                            fileHandle.write("\(seventeenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 18{
                            fileHandle.write("\(eightheenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 19{
                            fileHandle.write("\(ninteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 20{
                            fileHandle.write("\(twentiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 21{
                            fileHandle.write("\(twentifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 22{
                            fileHandle.write("\(twentisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 23{
                            fileHandle.write("\(twentithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 24{
                            fileHandle.write("\(twentifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 25{
                            fileHandle.write("\(twentififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 26{
                            fileHandle.write("\(twentisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 27{
                            fileHandle.write("\(twentiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 28{
                            fileHandle.write("\(twentieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 29{
                            fileHandle.write("\(twentininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 30{
                            fileHandle.write("\(thirtiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 31{
                            fileHandle.write("\(thirtifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 32{
                            fileHandle.write("\(thirtisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 33{
                            fileHandle.write("\(thirtithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 34{
                            fileHandle.write("\(thirtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 35{
                            fileHandle.write("\(thirtififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 36{
                            fileHandle.write("\(thirtisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 37{
                            fileHandle.write("\(thirtiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 38{
                            fileHandle.write("\(thirtieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 39{
                            fileHandle.write("\(thirtininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 40{
                            fileHandle.write("\(fourtiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 41{
                            fileHandle.write("\(fourtifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 42{
                            fileHandle.write("\(fourtisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 43{
                            fileHandle.write("\(fourtithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 44{
                            fileHandle.write("\(fourtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 45{
                            fileHandle.write("\(fourtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 46{
                            fileHandle.write("\(fourtisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 47{
                            fileHandle.write("\(fourtiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 48{
                            fileHandle.write("\(fourtieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 49{
                            fileHandle.write("\(fourtininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 50{
                            fileHandle.write("\(fiftiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 51{
                            fileHandle.write("\(fiftifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 52{
                            fileHandle.write("\(fiftisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 53{
                            fileHandle.write("\(fiftithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 54{
                            fileHandle.write("\(fiftifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 55{
                            fileHandle.write("\(fiftififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 56{
                            fileHandle.write("\(fiftisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 57{
                            fileHandle.write("\(fiftiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 58{
                            fileHandle.write("\(fiftieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 59{
                            fileHandle.write("\(fiftininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 60{
                            fileHandle.write("\(sixtiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 61{
                            fileHandle.write("\(sixtifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 62{
                            fileHandle.write("\(sixtisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 63{
                            fileHandle.write("\(sixtithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 64{
                            fileHandle.write("\(sixtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 65{
                            fileHandle.write("\(sixtififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 66{
                            fileHandle.write("\(sixtisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 67{
                            fileHandle.write("\(sixtiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 68{
                            fileHandle.write("\(sixtieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 69{
                            fileHandle.write("\(sixitininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 70{
                            fileHandle.write("\(seventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 71{
                            fileHandle.write("\(seventifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 72{
                            fileHandle.write("\(seventisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 73{
                            fileHandle.write("\(seventithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 74{
                            fileHandle.write("\(seventifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 75{
                            fileHandle.write("\(seventififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 76{
                            fileHandle.write("\(seventisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 77{
                            fileHandle.write("\(seventiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 78{
                            fileHandle.write("\(seventieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 79{
                            fileHandle.write("\(seventininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 80{
                            fileHandle.write("\(eightiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 81{
                            fileHandle.write("\(eightifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 82{
                            fileHandle.write("\(eightisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 83{
                            fileHandle.write("\(eightithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 84{
                            fileHandle.write("\(eightifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 85{
                            fileHandle.write("\(eightififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 86{
                            fileHandle.write("\(eightisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 87{
                            fileHandle.write("\(eightiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 88{
                            fileHandle.write("\(eightieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 89{
                            fileHandle.write("\(eightininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 90{
                            fileHandle.write("\(nintiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 91{
                            fileHandle.write("\(nintifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 92{
                            fileHandle.write("\(nintisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 93{
                            fileHandle.write("\(nintithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 94{
                            fileHandle.write("\(nintifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 95{
                            fileHandle.write("\(nintififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 96{
                            fileHandle.write("\(nintisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 97{
                            fileHandle.write("\(nintiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 98{
                            fileHandle.write("\(nintieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 99{
                            fileHandle.write("\(nintininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 100{
                            fileHandle.write("\(hundredthRow)\n".data(using: .utf8)!)
                        }
                        
                        
                        fileHandle.closeFile()
                    } catch {
                        print("Error writing to file \(error)")
                    }
                    //print(firstRow)
                    //  print("Saving data in: \(url.path)")
                }
                
                /*
                 if let filepath = Bundle.main.path(forResource: "SampleSpreadsheet", ofType: "csv") {
                 do {
                 let contents = try String(contentsOfFile: filepath)
                 print(": " + contents)
                 } catch {
                 // contents could not be loaded
                 }
                 } else {
                 // example.txt not found!
                 }
                 */
                //var readString = "" // Used to store the file contents
                do {
                    // Read the file contents
                    readString = try String(contentsOf: url!)
                } catch let error as NSError {
                    print("Failed reading from URL: \(url!), Error: " + error.localizedDescription)
                }
                
                // let aString = "This is my string"
                
                //    print("File Text is : \(readString) ||||")
                
                
                //
                
            }
            
            
        }
        //uncomment this for email export
        //performSegue(withIdentifier: "segueWithEmail", sender: nil)
        
        //.writeToURL(url, atomically: true)
        
        
        ////////////////
        
        if UserDefaults.standard.array(forKey: "pitScoutList") != nil{
            pitScoutList = UserDefaults.standard.object(forKey: "pitScoutList") as! [String]
            print("pitScoutList is \(pitScoutList)")
            
            if pitScoutList.isEmpty == false{
                for index in 0...pitScoutList.count - 1{
                    
                    if index == 0{
                        firstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                        //firstRow = test.joined(separator: ",")
                    }
                    else if index == 1{
                        secondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 2{
                        thirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 3{
                        fourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String                    }
                    else if index == 4{
                        fifthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 5{
                        sixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 6{
                        seventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 7{
                        eighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 8{
                        ninthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 9{
                        tenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 10{
                        eleventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 11{
                        twelfthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 12{
                        thirteenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 13{
                        fourteenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 14{
                        fifteenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 15{
                        sixteenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 16{
                        seventeenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 17{
                        eightheenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 18{
                        ninteenthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 19{
                        twentiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 20{
                        twentifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 21{
                        twentisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 22{
                        twentithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 23{
                        twentifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 24{
                        twentififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 25{
                        twentisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 26{
                        twentiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 27{
                        twentieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 28{
                        twentininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 29{
                        thirtiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 30{
                        thirtifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 31{
                        thirtisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 32{
                        thirtithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 33{
                        thirtifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 34{
                        thirtififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 35{
                        thirtisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 36{
                        thirtiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 37{
                        thirtieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 38{
                        thirtininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 39{
                        fourtiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 40{
                        fourtifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 41{
                        fourtisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 42{
                        fourtithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 43{
                        fourtifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 44{
                        fourtififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 45{
                        fourtisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 46{
                        fourtiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 47{
                        fourtieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 48{
                        fourtininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 49{
                        fiftiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 50{
                        fiftifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 51{
                        fiftisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 52{
                        fiftithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 53{
                        fiftifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 54{
                        fiftififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 55{
                        fiftisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 56{
                        fiftiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 57{
                        fiftieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 58{
                        fiftininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 59{
                        sixtiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 60{
                        sixtifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 61{
                        sixtisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 62{
                        sixtithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 63{
                        sixtifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 64{
                        sixtififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 65{
                        sixtisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 66{
                        sixtiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 67{
                        sixtieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 68{
                        sixitininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 69{
                        seventithRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 70{
                        seventifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 71{
                        seventisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 72{
                        seventithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 73{
                        seventifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 74{
                        seventififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 75{
                        seventisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 76{
                        seventiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 77{
                        seventieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 78{
                        seventininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 79{
                        eightiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 80{
                        eightifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 81{
                        eightisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 82{
                        eightithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 83{
                        eightifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 84{
                        eightififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 85{
                        eightisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 86{
                        eightiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 87{
                        eightieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 88{
                        eightininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                        
                    else if index == 89{
                        nintiethRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 90{
                        nintifirstRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 91{
                        nintisecondRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 92{
                        nintithirdRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 93{
                        nintifourthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 94{
                        nintififthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 95{
                        nintisixthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 96{
                        nintiseventhRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 97{
                        nintieighthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 98{
                        nintininthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    else if index == 99{
                        hundredthRow = UserDefaults.standard.object(forKey: "\(pitScoutList[index])") as! String
                    }
                    
                    
                }
                
                /*
                 if let filepath = Bundle.main.path(forResource: "SampleSpreadsheet", ofType: "csv") {
                 do {
                 let contents = try String(contentsOfFile: filepath)
                 print(contents)
                 } catch {
                 // contents could not be loaded
                 }
                 } else {
                 // example.txt not found!
                 }
                 */
                
                // Used to store the file contents
                do {
                    // Read the file contents
                    readString = try String(contentsOf: url2!)
                    /*  let newString1 = readString.replacingOccurrences(of: "false", with: "0")
                     let newString2 = newString1.replacingOccurrences(of: "true", with: "1")
                     let newString3 = newString2.replacingOccurrences(of: "No", with: "0")
                     let newString4 = newString3.replacingOccurrences(of: "Attempted", with: "1")
                     let newString5 = newString4.replacingOccurrences(of: "Yes", with: "2")
                     let newString6 = newString5.replacingOccurrences(of: "Used", with: "1")
                     let newString7 = newString6.replacingOccurrences(of: "Assisted", with: "2")
                     let newString8 = newString7.replacingOccurrences(of: "Didn't", with: "0")
                     let newString9 = newString8.replacingOccurrences(of: "Parked", with: "1")
                     readString = newString9.replacingOccurrences(of: "Climbed", with: "2")
                     */
                    
                    
                    print("Pit Scout Text is : \(readString) ||||")
                } catch let error as NSError {
                    print("Failed reading from URL: \(url2!), Error: " + error.localizedDescription)
                }
                
                
                // print("File Text: \(readString)")
                
                /*  // try! firstRow.write(to: url, atomically: true, encoding: String.Encoding.utf8)
                 let titleString = "Team Number, Match Number, Scout Number, Crosses Auto Line, Auto Cubes, Cube Capture Effectiveness, Friendly Switch Cubes, Scale Cubes, Opposing Switch Cubes, Vault Cubes, Driver Abilities, Climbing, Ramp, Additional Notes"
                 do {
                 try "\(titleString)\n".write(to: url, atomically: true, encoding: String.Encoding.utf8)
                 print("It worked")
                 } catch {
                 print(error)
                 }
                 */
                //
                //
                //
                /*     let fileName = "SampleSpreadsheet"
                 let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                 
                 let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("csv")
                 print("FilePath: \(fileURL.path)")
                 
                 let writeString = "Write this text to the fileURL as text in iOS using Swift"
                 do {
                 // Write to the file
                 try writeString.write(to: fileURL, atomically: true, encoding: String.Encoding.utf8)
                 
                 print("saved")
                 } catch let error as NSError {
                 print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
                 }
                 
                 
                 var readString = "" // Used to store the file contents
                 do {
                 // Read the file contents
                 readString = try String(contentsOf: fileURL)
                 } catch let error as NSError {
                 print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
                 }
                 print("File Text: \(readString)")
                 */
                //
                //
                //
                
                for i in 0...pitScoutList.count {
                    //dataString =  String(list1[i]) + ": " + list2[i] + list3[i] + "\n"
                    //Check if file exists
                    
                    
                    do {
                        let fileHandle = try FileHandle(forWritingTo: url2!)
                        fileHandle.seekToEndOfFile()
                        if i == 1{
                            fileHandle.write("\(firstRow)\n".data(using: .utf8)!)
                            print("In 1")
                        }
                        else if i == 2{
                            fileHandle.write("\(secondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 3{
                            fileHandle.write("\(thirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 4{
                            fileHandle.write("\(fourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 5{
                            fileHandle.write("\(fifthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 6{
                            fileHandle.write("\(sixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 7{
                            fileHandle.write("\(seventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 8{
                            fileHandle.write("\(eighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 9{
                            fileHandle.write("\(ninthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 10{
                            fileHandle.write("\(tenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 11{
                            fileHandle.write("\(eleventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 12{
                            fileHandle.write("\(twelfthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 13{
                            fileHandle.write("\(thirteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 14{
                            fileHandle.write("\(fourteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 15{
                            fileHandle.write("\(fifteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 16{
                            fileHandle.write("\(sixteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 17{
                            fileHandle.write("\(seventeenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 18{
                            fileHandle.write("\(eightheenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 19{
                            fileHandle.write("\(ninteenthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 20{
                            fileHandle.write("\(twentiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 21{
                            fileHandle.write("\(twentifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 22{
                            fileHandle.write("\(twentisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 23{
                            fileHandle.write("\(twentithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 24{
                            fileHandle.write("\(twentifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 25{
                            fileHandle.write("\(twentififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 26{
                            fileHandle.write("\(twentisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 27{
                            fileHandle.write("\(twentiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 28{
                            fileHandle.write("\(twentieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 29{
                            fileHandle.write("\(twentininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 30{
                            fileHandle.write("\(thirtiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 31{
                            fileHandle.write("\(thirtifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 32{
                            fileHandle.write("\(thirtisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 33{
                            fileHandle.write("\(thirtithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 34{
                            fileHandle.write("\(thirtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 35{
                            fileHandle.write("\(thirtififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 36{
                            fileHandle.write("\(thirtisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 37{
                            fileHandle.write("\(thirtiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 38{
                            fileHandle.write("\(thirtieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 39{
                            fileHandle.write("\(thirtininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 40{
                            fileHandle.write("\(fourtiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 41{
                            fileHandle.write("\(fourtifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 42{
                            fileHandle.write("\(fourtisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 43{
                            fileHandle.write("\(fourtithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 44{
                            fileHandle.write("\(fourtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 45{
                            fileHandle.write("\(fourtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 46{
                            fileHandle.write("\(fourtisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 47{
                            fileHandle.write("\(fourtiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 48{
                            fileHandle.write("\(fourtieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 49{
                            fileHandle.write("\(fourtininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 50{
                            fileHandle.write("\(fiftiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 51{
                            fileHandle.write("\(fiftifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 52{
                            fileHandle.write("\(fiftisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 53{
                            fileHandle.write("\(fiftithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 54{
                            fileHandle.write("\(fiftifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 55{
                            fileHandle.write("\(fiftififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 56{
                            fileHandle.write("\(fiftisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 57{
                            fileHandle.write("\(fiftiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 58{
                            fileHandle.write("\(fiftieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 59{
                            fileHandle.write("\(fiftininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 60{
                            fileHandle.write("\(sixtiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 61{
                            fileHandle.write("\(sixtifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 62{
                            fileHandle.write("\(sixtisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 63{
                            fileHandle.write("\(sixtithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 64{
                            fileHandle.write("\(sixtifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 65{
                            fileHandle.write("\(sixtififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 66{
                            fileHandle.write("\(sixtisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 67{
                            fileHandle.write("\(sixtiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 68{
                            fileHandle.write("\(sixtieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 69{
                            fileHandle.write("\(sixitininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 70{
                            fileHandle.write("\(seventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 71{
                            fileHandle.write("\(seventifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 72{
                            fileHandle.write("\(seventisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 73{
                            fileHandle.write("\(seventithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 74{
                            fileHandle.write("\(seventifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 75{
                            fileHandle.write("\(seventififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 76{
                            fileHandle.write("\(seventisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 77{
                            fileHandle.write("\(seventiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 78{
                            fileHandle.write("\(seventieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 79{
                            fileHandle.write("\(seventininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 80{
                            fileHandle.write("\(eightiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 81{
                            fileHandle.write("\(eightifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 82{
                            fileHandle.write("\(eightisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 83{
                            fileHandle.write("\(eightithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 84{
                            fileHandle.write("\(eightifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 85{
                            fileHandle.write("\(eightififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 86{
                            fileHandle.write("\(eightisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 87{
                            fileHandle.write("\(eightiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 88{
                            fileHandle.write("\(eightieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 89{
                            fileHandle.write("\(eightininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 90{
                            fileHandle.write("\(nintiethRow)\n".data(using: .utf8)!)
                        }
                        else if i == 91{
                            fileHandle.write("\(nintifirstRow)\n".data(using: .utf8)!)
                        }
                        else if i == 92{
                            fileHandle.write("\(nintisecondRow)\n".data(using: .utf8)!)
                        }
                        else if i == 93{
                            fileHandle.write("\(nintithirdRow)\n".data(using: .utf8)!)
                        }
                        else if i == 94{
                            fileHandle.write("\(nintifourthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 95{
                            fileHandle.write("\(nintififthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 96{
                            fileHandle.write("\(nintisixthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 97{
                            fileHandle.write("\(nintiseventhRow)\n".data(using: .utf8)!)
                        }
                        else if i == 98{
                            fileHandle.write("\(nintieighthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 99{
                            fileHandle.write("\(nintininthRow)\n".data(using: .utf8)!)
                        }
                        else if i == 100{
                            fileHandle.write("\(hundredthRow)\n".data(using: .utf8)!)
                        }
                        
                        
                        fileHandle.closeFile()
                    } catch {
                        print("Error writing to file \(error)")
                    }
                    //print(firstRow)
                    //  print("Saving data in: \(url.path)")
                }
                
                /*
                 if let filepath = Bundle.main.path(forResource: "SampleSpreadsheet", ofType: "csv") {
                 do {
                 let contents = try String(contentsOfFile: filepath)
                 print(": " + contents)
                 } catch {
                 // contents could not be loaded
                 }
                 } else {
                 // example.txt not found!
                 }
                 */
                //var readString = "" // Used to store the file contents
                do {
                    // Read the file contents
                    readString = try String(contentsOf: url2!)
                } catch let error as NSError {
                    print("Failed reading from URL: \(url2!), Error: " + error.localizedDescription)
                }
                
                // let aString = "This is my string"
                
                //    print("File Text is : \(readString) ||||")
                
                
                //
                
            }
            
            
        }
        //uncomment this for email export
        //performSegue(withIdentifier: "segueWithEmail", sender: nil)
        
        //.writeToURL(url, atomically: true)
        
        
    }
    
    @IBAction func viewDataPressed(_ sender: Any) {
        let buttonPosition:CGPoint = (sender as AnyObject).convert(CGPoint.zero, to:self.tableView)
        let indexPath1 = self.tableView.indexPathForRow(at: buttonPosition)
        
       // teamNumberFromButton = teamList[indexPath1![1]]
        
        
        if teamList.count == 0{
            teamNumberFromButton = pitScoutList[indexPath1![1]]
        }
        else if indexPath1![1] > (teamList.count - 1) {
            teamNumberFromButton = pitScoutList[(indexPath1![1] - teamList.count)]
        }
            
        else {
            teamNumberFromButton = teamList[indexPath1![1]]
        }
        
        print("teamNumberFromButton is \(teamNumberFromButton)")
        print(indexPath1![1])
        performSegue(withIdentifier: "segueToViewData", sender: nil)
        
        
    }
    
    func arrayFromContentsOfFileWithName(fileName: String) -> [String]? {
        guard let path = Bundle.main.path(forResource: fileName, ofType: "txt") else {
            return nil
        }
        
        do {
         //   print("hi")
            let content = try String(contentsOfFile:path, encoding: String.Encoding.utf8)
            
            return content.components(separatedBy: "\n")
        } catch _ as NSError {
            print("here")
            return nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        readString = ""
       /* firstRow = ""
        secondRow = ""
        thirdRow = ""
        fourthRow = ""
        fifthRow = ""
        sixthRow = ""
        seventhRow = ""
        eighthRow = ""
        ninthRow = ""
        tenthRow = ""
        eleventhRow = ""
        twelfthRow = ""
        thirteenthRow = ""
        fourteenthRow = ""
        fifteenthRow = ""
        sixteenthRow = ""
        seventeenthRow = ""
        eightheenthRow = ""
        ninteenthRow = ""
        twentiethRow = ""
        twentifirstRow = ""
        twentisecondRow = ""
        twentithirdRow = ""
        twentifourthRow = ""
        twentififthRow = ""
        twentisixthRow = ""
        twentiseventhRow = ""
        twentieighthRow = ""
        twentininthRow = ""
        thirtiethRow = ""
        */
        
        if runType == 1{
            exportData.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 75)
        }
        else if runType == 2{
            exportData.titleLabel!.font = UIFont.init(name: "Futura-MediumItalic", size: 40)
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        exportData.titleLabel!.adjustsFontSizeToFitWidth = true
        exportData.titleLabel!.numberOfLines = 2
        exportData.titleLabel!.minimumScaleFactor = 0.25
        exportData.titleLabel!.textAlignment = NSTextAlignment.center
        exportData.setTitleColor(UIColor.init(red: 0.0431372549, green: 0.1294117647, blue: 0.50196078431, alpha: 1.0), for: .normal)
        
        if UserDefaults.standard.array(forKey: "teamList") != nil{
            teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                print("\(teamList) and \(teamList.count)")
            
        }
        else{
            print("teamList is nil")
        }
        if UserDefaults.standard.array(forKey: "pitScoutList") != nil{
            pitScoutList = UserDefaults.standard.object(forKey: "pitScoutList") as! [String]
            print("\(pitScoutList) and \(pitScoutList.count)")
            
        }
        else{
            print("pitScoutList is nil")
        }
       
        
        //url = Bundle.main.url(forResource: "SampleSpreadsheet", withExtension: "csv")!
        
        //url = URL(fileURLWithPath: "SampleSpreadsheet").appendingPathComponent("csv")
        //fileManager.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
        
      /*  func getDocumentsDirectory() -> URL {
            let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
            let documentsDirectory = paths[0]
            return documentsDirectory
        }
        */
        //let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
       // let DocumentDirURL = paths[0]
        createDirectory()
        var DocumentURL = getDocumentsDirectory()
        var DocumentURL2 = getDocumentsDirectory()
        
        url = DocumentURL.appendingPathComponent("Spreadsheet2.csv")
        url2 = DocumentURL2.appendingPathComponent("Spreadsheet2 copy.csv")
        //.appendingPathExtension("csv")
        
        
        
        print("url is : \(url)")
        print("url2 is: \(url2)")
        
        if let dirs : [String] = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true) as? [String] {
            // let dir = dirs[0] //documents directory
            // let path = dir.appendingPathComponent("csv")
            
            
            //writing
            //text.writeToFile("\(DocumentURL)", atomically: false, encoding: .utf8)
            //try! text.write(to: url, atomically: true, encoding: String.Encoding.utf8)
            /*    let titleString = "Team Number, Match Number, Scout Number, Crosses Auto Line, Auto Cubes, Cube Capture Effectiveness, Friendly Switch Cubes, Scale Cubes, Opposing Switch Cubes, Vault Cubes, Driver Abilities, Climbing, Ramp, Additional Notes"
             do {
             //let text = "some text"
             print("\(url)")
             try "\(titleString)\n".write(to: url, atomically: true, encoding: String.Encoding.utf8)
             print("It worked!!!")
             } catch {
             print(error)
             }
             */
            //reading
            do {
                // Read the file contents
                readString = try String(contentsOf: url!)
            } catch let error as NSError {
                print("Failed reading from URL: \(url!), Error: " + error.localizedDescription)
            }
            print("File Text: \(readString)!!!")
            
            do {
                //let text = "some text"
                //  print("\(url)")
                let text = ""
                try text.write(to: url, atomically: true, encoding: String.Encoding.utf8)
                print("It worked??")
            } catch {
                print(error)
            }
            
            do {
                // Read the file contents
                readString = try String(contentsOf: url!)
            } catch let error as NSError {
                print("Failed reading from URL: \(url!), Error: " + error.localizedDescription)
            }
            print("File Text: \(readString)!!")
            
            //let text2 = String(contentsOfFile: "\(DocumentURL)", encoding: .utf8)
            //print(text2)
        }
        
        let fileManager = FileManager.default
        // let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        do {
            let fileURLs = try fileManager.contentsOfDirectory(at: DocumentURL, includingPropertiesForKeys: nil)
            print("fileURLs is \(fileURLs)")
            // process files
        } catch {
            //print("Error while enumerating files \(destinationFolder.path): \(error.localizedDescription)")
        }
        
        //////////////////////
        
        if let dirs : [String] = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.allDomainsMask, true) as? [String] {
            // let dir = dirs[0] //documents directory
            // let path = dir.appendingPathComponent("csv")
            
            
            //writing
            //text.writeToFile("\(DocumentURL)", atomically: false, encoding: .utf8)
            //try! text.write(to: url, atomically: true, encoding: String.Encoding.utf8)
            /*    let titleString = "Team Number, Match Number, Scout Number, Crosses Auto Line, Auto Cubes, Cube Capture Effectiveness, Friendly Switch Cubes, Scale Cubes, Opposing Switch Cubes, Vault Cubes, Driver Abilities, Climbing, Ramp, Additional Notes"
             do {
             //let text = "some text"
             print("\(url)")
             try "\(titleString)\n".write(to: url, atomically: true, encoding: String.Encoding.utf8)
             print("It worked!!!")
             } catch {
             print(error)
             }
             */
            //reading
            do {
                // Read the file contents
                readString = try String(contentsOf: url2!)
            } catch let error as NSError {
                print("Failed reading from URL: \(url2!), Error: " + error.localizedDescription)
            }
            print("Pit Scout Text: \(readString)!!!")
            
            do {
                //let text = "some text"
                //  print("\(url)")
                let text = ""
                try text.write(to: url2, atomically: true, encoding: String.Encoding.utf8)
                print("It worked??")
            } catch {
                print(error)
            }
            
            do {
                // Read the file contents
                readString = try String(contentsOf: url2!)
            } catch let error as NSError {
                print("Failed reading from URL: \(url2!), Error: " + error.localizedDescription)
            }
            print("Pit Scout Text: \(readString)!!")
            
            //let text2 = String(contentsOfFile: "\(DocumentURL)", encoding: .utf8)
            //print(text2)
        }
        
         //let fileManager = FileManager.default
        // let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        do {
            let fileURLs = try fileManager.contentsOfDirectory(at: DocumentURL, includingPropertiesForKeys: nil)
            print("fileURLs is \(fileURLs)")
            // process files
        } catch {
            //print("Error while enumerating files \(destinationFolder.path): \(error.localizedDescription)")
        }
        
        
      //   DocumentURL = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        //let writePath = documents.appendingPathComponent("file.plist")
        
       // saveData()
        
        
        // Do any additional setup after loading the view.
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirectory = paths[0]
        return documentsDirectory
    }
    
    func createDirectory(){
        let fileManager = FileManager.default
        let paths = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent("customDirectory")
        if !fileManager.fileExists(atPath: paths){
            try! fileManager.createDirectory(atPath: paths, withIntermediateDirectories: true, attributes: nil)
        }else{
            print("Already dictionary created.")
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete {
            print("Deleted")
            
            if indexPath.row > (teamList.count - 1) {
                //cell.textLabel?.text = "Team \(pitScoutList[(row - (teamList.count + 1))])"
                UserDefaults.standard.removeObject(forKey: "\(pitScoutList[(indexPath.row - (teamList.count))])")
                pitScoutList.remove(at: (indexPath.row - (teamList.count)))
            }
            else if teamList.count == 0{
                UserDefaults.standard.removeObject(forKey: "\(pitScoutList[indexPath.row])")
                pitScoutList.remove(at: indexPath.row)
            }
            else {
                UserDefaults.standard.removeObject(forKey: "\(teamList[indexPath.row])")
                teamList.remove(at: indexPath.row)
            }
            
           // UserDefaults.standard.removeObject(forKey: "\(teamList[indexPath.row])")
            
            tableView.deleteRows(at: [indexPath], with: .fade)
            //self.catNames.remove(at: indexPath.row)
            //tableView.beginUpdates()
           // print("here!")
            
           // print("here")
            //self.tableView.endUpdates()
           // print("here!!")
            
            
            //tableView.reloadData()
           // self.tableView.deleteRows(at: <#T##[IndexPath]#>, with: .)
            //print("hi")
            
            UserDefaults.standard.set(teamList, forKey: "teamList")
            UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
            print("teamList is \(teamList)")
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (teamList.count + pitScoutList.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        
        let row = indexPath.row
        //cell.textLabel?.font = UIFont.systemFont(ofSize: 25)
        var fontSize: CGFloat!
        if runType == 1{
            fontSize = 36
            
        }
        else if runType == 2{
            fontSize = 18
        }
        print(fontSize)
        cell.textLabel?.font = UIFont.init(name: "Futura-MediumItalic", size: fontSize)
       // cell.textLabel?.font = UIFont.init
        cell.textLabel?.textColor = UIColor.init(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0)
        if teamList.count == 0{
            cell.textLabel?.text = "Team \(pitScoutList[row])"
        }
        else if row > (teamList.count - 1) {
            cell.textLabel?.text = "Team \(pitScoutList[((row + 1) - (teamList.count + 1))])"
        }
        
        else {
            cell.textLabel?.text = "Team \(teamList[row])"
        }
   
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        
        let row = indexPath.row
        
        print("teamList row is \(teamList[row])")
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
