//
//  CarTableViewController.swift
//  tablesStoryboards
//
//  Created by J Antonio Enciso S on 23/09/22.
//

import UIKit

class CarTableViewController: UITableViewController {
    
    var cars = [Car]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleCars()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "CarTableViewCell"

        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? CarTableViewCell  else {
            fatalError("The dequeued cell is not an instance of CarTableViewCell.")
        }
        
        let car = cars[indexPath.row]
        
        cell.carLabel.text = car.name
        cell.carImage.image = car.photo
        cell.carDescription.text = car.description
        
        return cell
    }
    
    
    private func loadSampleCars(){
        let photo1 = UIImage(named: "BMWM4")
        let photo2 = UIImage(named: "shelby")
        let photo3 = UIImage(named: "Z06")
        
        guard let car1 = Car(name: "BMW M4", photo: photo1, description: "GT4")
        else {
            fatalError("Unable to instantiate car1")
        }
        
        guard let car2 = Car(name: "Mustang", photo: photo2, description: "Shelby")
        else {
            fatalError("Unable to instantiate car2")
        }
        
        guard let car3 = Car(name: "Corvette", photo: photo3, description: "Z06")
        else {
            fatalError("Unable to instantiate car3")
        }
        
        cars += [car1, car2, car3]
        
        
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
