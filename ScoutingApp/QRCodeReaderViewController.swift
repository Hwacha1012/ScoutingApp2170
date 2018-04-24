
import UIKit
import AVFoundation

var dataToAdd = ""
var arraySeperatedByCommas = [String]()
var arraySeperatedByTeams = [String]()
var arrayOfValues = [String]()
var arrayOfMatchTeams = [String]()
var arrayOfPitTeams = [String]()


class QRCodeReaderViewController: UIViewController {
    
    @IBOutlet var backButton: UIButton!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "segueAfterQRScan", sender: nil)
    }
    
    func returnToMainMenu(){
      //  let testString = "sjndakfhiwaejksdfn sdhfijwerda"
        
        
        arraySeperatedByCommas = dataToAdd.components(separatedBy: ",")
        //arraySeperatedByCommas = testString.components(separatedBy: ",")
        print(arraySeperatedByCommas)
        
      //  teamNumber = arraySeperatedByCommas[0]
        teamNumber = "\(arraySeperatedByCommas[0]); \(arraySeperatedByCommas[1])"
        
        print(arraySeperatedByCommas.count)
        if arraySeperatedByCommas.count == 16{
            UserDefaults.standard.set(dataToAdd, forKey: "\(teamNumber)")
            print("in here")
            if teamNumber != ""{
                print("here")
                if UserDefaults.standard.array(forKey: "teamList") == nil{
                    // teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                    teamList.append(teamNumber)
                    print("teamlist is \(teamList)!")
                    UserDefaults.standard.set(teamList, forKey: "teamList")
                    
                }
                else if UserDefaults.standard.array(forKey: "teamList")!.isEmpty == false{
                    
                    teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                    breakLoop = false
                    for index in 0...teamList.count - 1 {
                        if teamNumber == teamList[index]{
                            breakLoop = true
                            
                        }
                    }
                    print("breakLoop is \(breakLoop)")
                    if breakLoop == false{
                        teamList.append(teamNumber)
                        print(teamList)
                    }
                    else if breakLoop == true{
                        let indexOfElement = teamList.index(of: "\(teamNumber)")
                        teamList.remove(at: indexOfElement!)
                        teamList.append(teamNumber)
                        print(teamList)
                    }
                    
                    UserDefaults.standard.set(teamList, forKey: "teamList")
                }
                else{
                    teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                    teamList.append(teamNumber)
                    print("teamlist is \(teamList)")
                    UserDefaults.standard.set(teamList, forKey: "teamList")
                }
                
                
            }
            
        }
            
        else if arraySeperatedByCommas.count == 9{
            pSTeamNumber = "\(arraySeperatedByCommas[0]); Pit Scouting"
            UserDefaults.standard.set(dataToAdd, forKey: "\(pSTeamNumber)")
            print("in here")
            if pSTeamNumber != ""{
                print("here")
                if UserDefaults.standard.array(forKey: "teamList") == nil{
                    // teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                    pitScoutList.append(pSTeamNumber)
                    print("pitScoutList is \(pitScoutList)!")
                    UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                    
                }
                else if UserDefaults.standard.array(forKey: "pitScoutList")!.isEmpty == false{
                    
                    pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                    breakLoop = false
                    for index in 0...pitScoutList.count - 1 {
                        if pSTeamNumber == pitScoutList[index]{
                            breakLoop = true
                            
                        }
                    }
                    print("breakLoop is \(breakLoop)")
                    if breakLoop == false{
                        pitScoutList.append(pSTeamNumber)
                        print(pitScoutList)
                    }
                    else if breakLoop == true{
                        let indexOfElement = pitScoutList.index(of: "\(pSTeamNumber)")
                        pitScoutList.remove(at: indexOfElement!)
                        pitScoutList.append(pSTeamNumber)
                        print(pitScoutList)
                    }
                    
                    UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                }
                else{
                    pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                    pitScoutList.append(pSTeamNumber)
                    print("pitScoutList is \(pitScoutList)")
                    UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                }
                
                
            }
            
        }
            
            
        else if arraySeperatedByCommas.count > 16{
            arrayOfMatchTeams = dataToAdd.components(separatedBy: "|||")
            arrayOfPitTeams = dataToAdd.components(separatedBy: "///")
            print("array of pit teams = \(arrayOfPitTeams)")
            
            if arrayOfMatchTeams.count > 1{
                for index in 0...arrayOfMatchTeams.count - 2{
                    
                    arrayOfValues = arrayOfMatchTeams[index].components(separatedBy: ",")
                    
                    //teamNumber = arrayOfValues[0]
                    teamNumber = "\(arrayOfValues[0]); \(arrayOfValues[1])"
                    print("team Number is \(teamNumber)!!!!!!!")
                    if teamNumber != ""{
                        print("got here")
                        if UserDefaults.standard.array(forKey: "teamList") == nil{
                            // teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                            print("teamNumber is \(teamNumber)")
                            teamList.append(teamNumber)
                            print("teamlist is \(teamList)!")
                            UserDefaults.standard.set(teamList, forKey: "teamList")
                            UserDefaults.standard.set(arrayOfMatchTeams[index], forKey: "\(teamNumber)")
                            print("Value is \(arrayOfMatchTeams[index])")
                            print("teamNumber is \(teamNumber)")
                            let test = UserDefaults.standard.object(forKey: "\(teamNumber)")
                            print(test)
                            
                        }
                        else if UserDefaults.standard.array(forKey: "teamList")!.isEmpty == false{
                            
                            teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                            breakLoop = false
                            for index in 0...teamList.count - 1 {
                                if teamNumber == teamList[index]{
                                    breakLoop = true
                                    
                                }
                            }
                            print("breakLoop is \(breakLoop)")
                            if breakLoop == false{
                                teamList.append(teamNumber)
                                print(teamList)
                            }
                            else if breakLoop == true{
                                let indexOfElement = teamList.index(of: "\(teamNumber)")
                                teamList.remove(at: indexOfElement!)
                                teamList.append(teamNumber)
                                print(teamList)
                            }
                            
                            UserDefaults.standard.set(teamList, forKey: "teamList")
                            UserDefaults.standard.set(arrayOfMatchTeams[index], forKey: "\(teamNumber)")
                            print("Value is \(arrayOfMatchTeams[index])")
                            print("teamNumber is !\(teamNumber)")
                            let test = UserDefaults.standard.object(forKey: "\(teamNumber)")
                            print(test)
                            
                        }
                        else{
                            teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                            teamList.append(teamNumber)
                            print("teamlist is \(teamList)")
                            UserDefaults.standard.set(teamList, forKey: "teamList")
                            UserDefaults.standard.set(arrayOfMatchTeams[index], forKey: "\(teamNumber)")
                            print("Value is \(arrayOfMatchTeams[index])")
                            print("teamNumber is !\(teamNumber)")
                            let test = UserDefaults.standard.object(forKey: "\(teamNumber)")
                            print(test)
                        }
                        
                        
                    }
                }
                
                
            }
            
            if arrayOfPitTeams.count > 1{
                print("hi?!?")
                for index in 1...arrayOfPitTeams.count - 1{
                    
                    arrayOfValues = arrayOfPitTeams[index].components(separatedBy: ",")
                    
                    //teamNumber = arrayOfValues[0]
                    pSTeamNumber = "\(arrayOfValues[0]); Pit Scouting"
                    print("pSTeam Number is \(pSTeamNumber)!!!!!!!")
                    if pSTeamNumber != ""{
                        print("got here")
                        if UserDefaults.standard.array(forKey: "pitScoutList") == nil{
                            // teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                            print("pSTeamNumber is \(pSTeamNumber)")
                            pitScoutList.append(pSTeamNumber)
                            print("pitScoutList is \(pitScoutList)!")
                            UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                            UserDefaults.standard.set(arrayOfPitTeams[index], forKey: "\(pSTeamNumber)")
                            print("Value is \(arrayOfPitTeams[index])")
                            print("pSTeamNumber is \(pSTeamNumber)")
                            let test = UserDefaults.standard.object(forKey: "\(pSTeamNumber)")
                            print(test)
                            
                        }
                        else if UserDefaults.standard.array(forKey: "pitScoutList")!.isEmpty == false{
                            
                            pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                            breakLoop = false
                            for index in 0...pitScoutList.count - 1 {
                                if pSTeamNumber == pitScoutList[index]{
                                    breakLoop = true
                                    
                                }
                            }
                            print("breakLoop2 is \(breakLoop)")
                            if breakLoop == false{
                                pitScoutList.append(pSTeamNumber)
                                print(pitScoutList)
                            }
                            else if breakLoop == true{
                                let indexOfElement = pitScoutList.index(of: "\(pSTeamNumber)")
                                pitScoutList.remove(at: indexOfElement!)
                                pitScoutList.append(pSTeamNumber)
                                print(pitScoutList)
                            }
                            
                            UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                            UserDefaults.standard.set(arrayOfPitTeams[index], forKey: "\(pSTeamNumber)")
                            print("Value is \(arrayOfPitTeams[index])")
                            print("teamNumber is !\(pSTeamNumber)")
                            let test = UserDefaults.standard.object(forKey: "\(pSTeamNumber)")
                            print(test)
                            
                        }
                        else{
                            pitScoutList = UserDefaults.standard.array(forKey: "pitScoutList") as! [String]
                            pitScoutList.append(pSTeamNumber)
                            print("pitScoutList is \(pitScoutList)")
                            UserDefaults.standard.set(pitScoutList, forKey: "pitScoutList")
                            UserDefaults.standard.set(arrayOfPitTeams[index], forKey: "\(pSTeamNumber)")
                            print("Value is \(arrayOfPitTeams[index])")
                            print("pSTeamNumber is !\(pSTeamNumber)")
                            let test = UserDefaults.standard.object(forKey: "\(pSTeamNumber)")
                            print(test)
                        }
                        
                        
                    }
                }
                
                
            }
            
            
            
        }
            
       /* else if arraySeperatedByCommas.count > 16 && arraySeperatedByCommas.count % 15 == 1{
            arraySeperatedByTeams = dataToAdd.components(separatedBy: "|||")
            
            for index in 0...arraySeperatedByTeams.count - 1{
                
                arrayOfValues = arraySeperatedByTeams[index].components(separatedBy: ",")
                
                //teamNumber = arrayOfValues[0]
                teamNumber = "\(arrayOfValues[0]); \(arrayOfValues[1])"
                print("team Number is \(teamNumber)!!!!!!!")
                if teamNumber != ""{
                    print("got here")
                    if UserDefaults.standard.array(forKey: "teamList") == nil{
                        // teamList = UserDefaults.standard.object(forKey: "teamList") as! [String]
                        print("teamNumber is \(teamNumber)")
                        teamList.append(teamNumber)
                        print("teamlist is \(teamList)!")
                        UserDefaults.standard.set(teamList, forKey: "teamList")
                        UserDefaults.standard.set(arraySeperatedByTeams[index], forKey: "\(teamNumber)")
                        print("Value is \(arraySeperatedByTeams[index])")
                        print("teamNumber is \(teamNumber)")
                        let test = UserDefaults.standard.object(forKey: "\(teamNumber)")
                        print(test)
                        
                    }
                    else if UserDefaults.standard.array(forKey: "teamList")!.isEmpty == false{
                        
                        teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                        breakLoop = false
                        for index in 0...teamList.count - 1 {
                            if teamNumber == teamList[index]{
                                breakLoop = true
                                
                            }
                        }
                        print("breakLoop is \(breakLoop)")
                        if breakLoop == false{
                            teamList.append(teamNumber)
                            print(teamList)
                        }
                        else if breakLoop == true{
                            let indexOfElement = teamList.index(of: "\(teamNumber)")
                            teamList.remove(at: indexOfElement!)
                            teamList.append(teamNumber)
                            print(teamList)
                        }
                        
                        UserDefaults.standard.set(teamList, forKey: "teamList")
                        UserDefaults.standard.set(arraySeperatedByTeams[index], forKey: "\(teamNumber)")
                        print("Value is \(arraySeperatedByTeams[index])")
                        print("teamNumber is !\(teamNumber)")
                        let test = UserDefaults.standard.object(forKey: "\(teamNumber)")
                        print(test)
                        
                    }
                    else{
                        teamList = UserDefaults.standard.array(forKey: "teamList") as! [String]
                        teamList.append(teamNumber)
                        print("teamlist is \(teamList)")
                        UserDefaults.standard.set(teamList, forKey: "teamList")
                        UserDefaults.standard.set(arraySeperatedByTeams[index], forKey: "\(teamNumber)")
                        print("Value is \(arraySeperatedByTeams[index])")
                        print("teamNumber is !\(teamNumber)")
                        let test = UserDefaults.standard.object(forKey: "\(teamNumber)")
                        print(test)
                    }
                    
                    
                }
            }
            
           
            
            //seperate arraySeperatedByCommas into each team's data and add each
            //make a new arraySeperatedByCommas where its split up by "|" to split team data and do array of data with each but do that only in here because this else if allows multiple team datas
            
            
            
           
            
        }
        */
        
        
        performSegue(withIdentifier: "segueAfterQRScan", sender: nil)
        
    }
    
    var captureSession = AVCaptureSession()
    
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    var qrCodeFrameView: UIView?
    
    private let supportedCodeTypes = [AVMetadataObject.ObjectType.upce,
                                      AVMetadataObject.ObjectType.code39,
                                      AVMetadataObject.ObjectType.code39Mod43,
                                      AVMetadataObject.ObjectType.code93,
                                      AVMetadataObject.ObjectType.code128,
                                      AVMetadataObject.ObjectType.ean8,
                                      AVMetadataObject.ObjectType.ean13,
                                      AVMetadataObject.ObjectType.aztec,
                                      AVMetadataObject.ObjectType.pdf417,
                                      AVMetadataObject.ObjectType.itf14,
                                      AVMetadataObject.ObjectType.dataMatrix,
                                      AVMetadataObject.ObjectType.interleaved2of5,
                                      AVMetadataObject.ObjectType.qr]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get the back-facing camera for capturing videos
        // let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [.builtInDualCamera], mediaType: AVMediaType.video, position: .back)
        
        dataToAdd = ""
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        let videoInput: AVCaptureDeviceInput
        
        do {
            // Get an instance of the AVCaptureDeviceInput class using the previous device object.
            let input = try AVCaptureDeviceInput(device: captureDevice)
            
            // Set the input device on the capture session.
            captureSession.addInput(input)
            
            // Initialize a AVCaptureMetadataOutput object and set it as the output device to the capture session.
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetadataOutput)
            
            // Set delegate and use the default dispatch queue to execute the call back
            captureMetadataOutput.setMetadataObjectsDelegate(self as! AVCaptureMetadataOutputObjectsDelegate, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = supportedCodeTypes
            //            captureMetadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
            
        } catch {
            // If any error occurs, simply print it out and don't continue any more.
            print(error)
            return
        }
        
        // Initialize the video preview layer and add it as a sublayer to the viewPreview view's layer.
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        videoPreviewLayer?.videoGravity = AVLayerVideoGravity.resizeAspectFill
        videoPreviewLayer?.frame = view.layer.bounds
        view.layer.addSublayer(videoPreviewLayer!)
        
        // Start video capture.
        captureSession.startRunning()
        
        // Move the message label and top bar to the front
      //  view.bringSubview(toFront: messageLabel)
      //  view.bringSubview(toFront: topbar)
        
            view.bringSubview(toFront: backButton)
        
        // Initialize QR Code Frame to highlight the QR code
        qrCodeFrameView = UIView()
        
        if let qrCodeFrameView = qrCodeFrameView {
            qrCodeFrameView.layer.borderColor = UIColor.green.cgColor
            qrCodeFrameView.layer.borderWidth = 2
            view.addSubview(qrCodeFrameView)
            view.bringSubview(toFront: qrCodeFrameView)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Helper methods
    
    func launchApp(decodedURL: String) {
        
        if presentedViewController != nil {
            return
        }
        
        /* let alertPrompt = UIAlertController(title: "Open App", message: "You're going to open \(decodedURL)", preferredStyle: .actionSheet)
         let confirmAction = UIAlertAction(title: "Confirm", style: UIAlertActionStyle.default, handler: { (action) -> Void in
         
         if let url = URL(string: decodedURL) {
         if UIApplication.shared.canOpenURL(url) {
         UIApplication.shared.open(url, options: [:], completionHandler: nil)
         }
         }
         })
         
         let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
         
         alertPrompt.addAction(confirmAction)
         alertPrompt.addAction(cancelAction)
         
         present(alertPrompt, animated: true, completion: nil)
         */
        print("decodedURL is \(decodedURL)")
        dataToAdd = decodedURL
        
        returnToMainMenu()
        //performSegue(withIdentifier: "segueAfterQRScan", sender: nil)
        
        
    }
    
    
}

extension QRCodeReaderViewController: AVCaptureMetadataOutputObjectsDelegate {
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        // Check if the metadataObjects array is not nil and it contains at least one object.
        if metadataObjects.count == 0 {
          //  qrCodeFrameView?.frame = CGRect.zero
           // messageLabel.text = "No QR code is detected"
            return
        }
        
        // Get the metadata object.
        let metadataObj = metadataObjects[0] as! AVMetadataMachineReadableCodeObject
        
        if supportedCodeTypes.contains(metadataObj.type) {
            // If the found metadata is equal to the QR code metadata (or barcode) then update the status label's text and set the bounds
            let barCodeObject = videoPreviewLayer?.transformedMetadataObject(for: metadataObj)
            qrCodeFrameView?.frame = barCodeObject!.bounds
            
            if metadataObj.stringValue != nil {
                launchApp(decodedURL: metadataObj.stringValue!)
                //messageLabel.text = metadataObj.stringValue
            }
        }
    }
    
}

