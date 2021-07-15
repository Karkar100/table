//
//  ViewController.swift
//  table
//
//  Created by Diana on 08.07.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
        let simpleTableIdentifier = "SimpleTableIdentifier"
        
        let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
        var helper: Int?
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return numbers.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
            if (cell == nil) {
                        cell = UITableViewCell(
                            style: UITableViewCell.CellStyle.default,
                            reuseIdentifier: simpleTableIdentifier)
                    }
            cell?.textLabel?.text = numbers[indexPath.row]
                    return cell!
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        var row: Int = indexPath.row
        helper = row+1
        performSegue(withIdentifier: "showDetail1", sender: nil)
        
            //Ваши действия
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let newViewController = segue.destination as! NewViewController
            // Get a reference to the second view controller
            

            // Set a variable in the second view controller with the String to pass
        newViewController.receivedInt = helper ?? 0
        
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
        // Do any additional setup after loading the view.





}
