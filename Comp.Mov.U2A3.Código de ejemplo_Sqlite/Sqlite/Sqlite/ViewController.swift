//
//  ViewController.swift
//  Sqlite
//
//  Created by J Antonio Enciso S on 21/09/22.
//

import UIKit
import SQLite3

class ViewController: UIViewController {

    var db: OpaquePointer?
    var sql: OpaquePointer?
    @IBOutlet weak var labelVar: UILabel!
    @IBOutlet weak var idVar: UILabel!
    @IBOutlet weak var surnameVar: UILabel!
    @IBOutlet weak var lastnameVar: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dbConnectAction(_ sender: Any) {
        
        
        
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                    .appendingPathComponent("swiftDB.sqlite")
        
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            labelVar.text = "error opening database"
            }
             else
                {
                  labelVar.text = "DB created!!!"
                }
        
        
    }
    
    
    @IBAction func tableCreatAction(_ sender: Any) {
        
        //Ceating the table
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS student (id INTEGER PRIMARY KEY AUTOINCREMENT, surname TEXT, lastname TEXT)", nil, nil, nil) != SQLITE_OK {
            
            labelVar.text = "error creating table:"
          }
           else
           {
             labelVar.text = "Table created!!!"
           }
    }
    
    
    @IBAction func insertDataAction(_ sender: Any) {
         
        let queryString = "INSERT INTO student (surname, lastname) VALUES ('Antonio', 'Enciso')"
        
        if sqlite3_prepare(db, queryString, -1, &sql, nil) != SQLITE_OK{
                  labelVar.text = "error preparing insert"
               }
        
        if sqlite3_step(sql) != SQLITE_DONE {
            labelVar.text = "failure inserting data in student table"
                    
            }
             else
             {
               labelVar.text = "Data inserted!!!"
             }
        
    }
    
    
    
    @IBAction func selectDataAction(_ sender: Any) {
        
        let queryString = "SELECT * FROM student"
        
        if sqlite3_prepare(db, queryString, -1, &sql, nil) != SQLITE_OK{
            labelVar.text = "error preparing select"
        }
        
        while(sqlite3_step(sql) == SQLITE_ROW){
                    let id = sqlite3_column_int(sql, 0)
                    let surname = String(cString: sqlite3_column_text(sql, 1))
                    let lastname = String(cString: sqlite3_column_text(sql, 2))
                 
                    idVar.text = String(id)
                    surnameVar.text = surname
                    lastnameVar.text = lastname
                }
        
    }
    
    
    
    @IBAction func updateDataAction(_ sender: Any) {
        
        let queryString = "UPDATE student set surname = 'Jose', lastname = 'Solis'"
        
        
        if sqlite3_prepare(db, queryString, -1, &sql, nil) != SQLITE_OK{
            labelVar.text = "error preparing update"
        }
        
        
        if sqlite3_step(sql) != SQLITE_DONE {
            labelVar.text = "failure updating data in student table"
                    
            }
             else
             {
               labelVar.text = "Data updated!!!"
             }
        
        
    }
    
    
    
    
}

