//
//  TaskDetailVC.swift
//  Pinploy
//
//  Created by dev on 24/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import MapKit
import Alamofire

class TaskDetailVC: UIViewController {
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskPrice: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var adress: UILabel!
    @IBOutlet weak var taskDescription: UITextView!
    @IBOutlet weak var taskTimeStamp: UILabel!
    @IBOutlet weak var taskEstTime: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var toolsNeeded: UILabel!
    @IBOutlet weak var taskImg: UIImageView!
    @IBOutlet weak var taskImg2: UIImageView!
    
    var taskDataDetail: Task?
    let regionRadius: CLLocationDistance = 1000

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set initial location
        let initLocation = CLLocationCoordinate2D(latitude: taskDataDetail!.lat!, longitude: taskDataDetail!.lng!)
        initPinToMap(location: initLocation)
        initUI(taskData: taskDataDetail!)
    }

    func initPinToMap(location: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "\(taskDataDetail?.title!)"
       // annotation.subtitle = "\(taskDataDetail?.estimationHours)"
        
        let coordinateRegion = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 800, longitudinalMeters: 800)
        map.setRegion(coordinateRegion, animated: true)
        map.addAnnotation(annotation)
    }
    
    
    func initUI(taskData: Task) {
        self.taskTitle.text = taskData.title
        self.taskPrice.text = "\(taskData.budget!),-"
        self.username.text = taskData.user?.firstName
        self.adress.text = taskData.city
        self.taskDescription.text = taskData.description
        self.taskTimeStamp.text = taskData.createdAt
        self.taskEstTime.text = taskData.estimationHours
        //self.profileImg.image = taskData.
        if (taskData.toolsNeeded == true) {
            self.toolsNeeded.text = " Værktøj skal medbringes for at udføre denne opgave"
        }
        //self.taskImg.image = taskData.
    }
    

    
    @IBAction func bidOnTask(_ sender: Any) {
            let headers: HTTPHeaders = [
                  "Authorization": Constants.token,
                  "Content-Type" :"application/json"
              ]
        // data message, taskId, ?priceBid
        let offerParams = ["message": "sdf", "taskId": 2, "priceBid": 205] as [String : Any]
        
        Alamofire.request(Constants.baseUrl + Constants.offerUrl, method: .post, parameters: offerParams as Parameters, headers: headers).responseJSON { (response) in
            switch (response.result) {
            case .success:
                print(response.result)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
