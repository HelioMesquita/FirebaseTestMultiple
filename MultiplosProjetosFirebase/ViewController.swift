//
//  ViewController.swift
//  MultiplosProjetosFirebase
//
//  Created by Hélio Mesquita on 25/05/22.
//

import UIKit
import FirebaseCore
import FirebaseRemoteConfig

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let appA = FirebaseApp.app(name: "AppA")
//        let appB = FirebaseApp.app(name: "AppB")
//        let decision = RemoteConfig.remoteConfig()["projeto_a"].stringValue!
//
//        let labelProjetoA = UILabel()
//        view.addSubview(labelProjetoA)
//        labelProjetoA.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            labelProjetoA.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
//            labelProjetoA.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//        ])
//        labelProjetoA.text = decision

        
        let filePath = Bundle.main.path(forResource: "GoogleService-Info-projeto-b", ofType: "plist")!
        let options = FirebaseOptions(contentsOfFile: filePath)!
        FirebaseApp.configure(options: options)
        
        let filePath2 = Bundle.main.path(forResource: "GoogleService-Info", ofType: "plist")!
        let options2 = FirebaseOptions(contentsOfFile: filePath2)!
        FirebaseApp.configure(options: options2)
        
        let values = FirebaseApp.allApps
        RemoteConfig.remote
        
        
//        let remoteConfig = RemoteConfig.remoteConfig()
//        let settings = RemoteConfigSettings()
//        settings.minimumFetchInterval = 0
//        remoteConfig.configSettings = settings
//
//        remoteConfig.fetch { (status, error) -> Void in
//            if status == .success {
//                print("Config fetched!")
//                remoteConfig.activate { changed, error in
//                    DispatchQueue.main.async {
//                        let decision = RemoteConfig.remoteConfig()["projeto_b"].stringValue!
//                        labelProjetoA.text = decision
//                    }
//
//                }
//            } else {
//                print("Config not fetched")
//                print("Error: \(error?.localizedDescription ?? "No error available.")")
//            }
//
//        }
    }
    
    


}

