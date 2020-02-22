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


struct TaskView {
    var title: String
    var description: String
    var price: Int
    var image: String
}


class TaskTableViewCell: UITableViewCell {
    @IBOutlet weak var taskTitle: UILabel!
    @IBOutlet weak var taskDescription: UILabel!
    @IBOutlet weak var taskStatus: UILabel!
    @IBOutlet weak var taskPrice: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    
}

class TaskTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
        
        Alamofire.request(Constants.baseUrl+Constants.getTasksUrl, method: .get, headers: headers).responseArray { (response: DataResponse<[Task]>) in
            switch (response.result) {
            case .success:
                
                print(response.result)
                
                let myResponse = response.result.value
                
                if let taskList = myResponse {
                    for singleTask in taskList {
                        self.taskData.append(singleTask)
                    }
                    print(self.taskData)
                }
                
                self.taskTableView.reloadData()
                /*
                 for task in response.result {
                 }
                 */
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
        //cell.taskPrice?.text = String(task.budget)
        cell.taskDescription.text = task.description
        
        //cell.textLabel?.text = self.taskData[indexPath.row].user?.firstName
        //cell.detailTextLabel?.text = self.taskData[indexPath.row].dueDate
        
        return cell
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
