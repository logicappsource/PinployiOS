//
//  TaskTableViewController.swift
//  Pinploy
//
//  Created by dev on 20/02/2020.
//  Copyright © 2020 logicappsource. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper
import Kingfisher

struct TaskView {
    var id: Int
    var title: String
    var description: String
    var price: Int
    var image: String
    var city: String
    var zipCode: String
    var userId: String
    var firstName: String
    var lastName: String
}

class TaskTableViewCell: UITableViewCell {
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var taskStatus: UILabel!
    @IBOutlet weak var taskPrice: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var timeEstimate: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var taskCreated: UILabel!
}

class TaskTableVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var taskTableView: UITableView!
    public var taskData = [Task]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        fetchTasks()
    }
    
    
    func fetchTasks(){
         let headers: HTTPHeaders = [
             "Authorization": Constants.token,
             "Content-Type" :"application/json"
         ]
         
         Alamofire.request(Constants.getPendingTaks, method: .get, headers: headers).responseArray { (response: DataResponse<[Task]>) in
             switch (response.result) {
             case .success:
                 let myResponse = response.result.value
                 print(myResponse)
                 DispatchQueue.main.async {
                     if let taskList = myResponse {
                         for singleTask in taskList {
                            print(singleTask)
                             self.taskData.append(singleTask)
                         }
                     }
                     self.taskTableView.reloadData()
                 }
             case .failure(let error):
                 print(error)
             }
         }
     }
     
    


    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return taskData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskTableViewCell
        
        let task = taskData[indexPath.row]
        cell.taskTitle?.text = task.title
        cell.taskPrice?.text = "DKK \(task.budget!)"
        cell.taskDescription.text = task.description
        cell.taskStatus.text =  task.status
        cell.username.text = "\(task.user!.firstName!) \(task.user!.lastName!.prefix(1))"
        // date calc
      //  let dateFormatter = DateFormatter()
       // dateFormatter.dateFormat = "yyyy-MM-dd"
        cell.taskCreated.text = "\(task.createdAt!)"
        
        
        if let location = task.zipCode, task.city != nil {
           cell.location.text = "\(task.zipCode!) \(task.city!)"
        } else { cell.location.text = "Remote" }
    
        if let profileImg = task.user?.profileImg {
            let url = URL(string: (task.user?.profileImg!)!)
            if let profileImgData = try? Data(contentsOf: url!) {
                if let profileImageFinal = UIImage(data: profileImgData){
                    DispatchQueue.main.async {
                        cell.profileImg.kf.setImage(with: url)
                        cell.profileImg.layer.cornerRadius = cell.profileImg.frame.height / 2
                        cell.profileImg.clipsToBounds = true
                        cell.profileImg.image = profileImageFinal
                    }
                }
            }
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // on click go to Task Detail => pass the task data
        performSegue(withIdentifier: "navigateTaskDetail", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
         if segue.identifier == "navigateTaskDetail" {
            if segue.destination.isKind(of: TaskDetailVC.self) {
                 let taskDetail = segue.destination as! TaskDetailVC
                 let indexPath = sender as! IndexPath
                 taskDetail.taskDataDetail = taskData[indexPath.row]
             }
         }
     }
    
 
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
