//
//  QRCodeGeneratorViewController.swift
//  ScoutingApp
//
//  Created by Leonard Liu on 1/23/18.
//  Copyright © 2018 Leonard Liu. All rights reserved.
//

import UIKit

var image: UIImage!
    


class QRCodeGeneratorViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      /*  qrCodeString = ""
        
      if UserDefaults.standard.array(forKey: "teamList") != nil{
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
        
        */
        
        //uncomment this one
       
     //   generateQRCode(from: qrCodeString)
        
       imageView.image = image
        
        print("qrCodeGenerated")
        
        /*let data = teamList.dataUsingEncoding(NSISOLatin1StringEncoding, allowLossyConversion: false)
        
        let filter = CIFilter(name: "CIQRCodeGenerator")
        
        filter.setValue(data, forKey: "inputMessage")
        filter?.setValue("Q", forKey: "inputCorrectionLevel")
        
        qrcodeImage = filter?.outputImage
*/
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
