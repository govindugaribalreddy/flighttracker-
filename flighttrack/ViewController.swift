//
//  ViewController.swift
//  flighttrack
//
//  Created by BALREDDY GOVINDUGARI on 9/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Search3: UIButton!
    @IBOutlet weak var tripSegment: UISegmentedControl!
    @IBOutlet weak var arrivalcity: UITextField!
    @IBOutlet weak var departurecity: UITextField!
    @IBOutlet weak var departureCity1: UITextField!
@IBOutlet weak var arrivalCity1: UITextField!
    @IBOutlet weak var destinationCity2: UITextField!
    @IBOutlet weak var arrivalCity2: UITextField!
    
    @IBOutlet weak var arrivaldate: UIDatePicker!
    @IBOutlet weak var departuredatepicker: UIDatePicker!
    @IBOutlet weak var depatureDatepicker1: UIDatePicker!
    @IBOutlet weak var departureDatepicker2: UIDatePicker!
    
    @IBOutlet weak var addFight1: UIButton!
    @IBOutlet weak var addFlight2: UIButton!
    @IBOutlet weak var search: UIButton!
    @IBOutlet weak var Search1: UIButton!
    @IBOutlet weak var Search2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        arrivaldate.isHidden = true
        departuredatepicker.isHidden = false
        departureCity1.isHidden = true
        arrivalCity1.isHidden = true
        destinationCity2.isHidden = true
        arrivalCity2.isHidden = true
        addFight1.isHidden = true
        addFlight2.isHidden = true
        depatureDatepicker1.isHidden = true
        departureDatepicker2.isHidden = true
        search.isHidden = true
        Search1.isHidden = true
        Search3.isHidden = true
        // Do any additional setup after loading the view.
        let currentDate = Date()

            // Set the minimum date to the current date
        departuredatepicker.minimumDate = currentDate
        
        arrivaldate.minimumDate = departuredatepicker.date
        depatureDatepicker1.minimumDate = departuredatepicker.date
        departureDatepicker2.minimumDate = depatureDatepicker1.date
        
    }
    
    @IBAction func addFlight1(_ sender: Any) {
        let city=arrivalcity.text
        departureCity1.isHidden = false
        departureCity1.text=city
        arrivalCity1.isHidden = false
        addFlight2.isHidden = false
        depatureDatepicker1.isHidden = false
        addFight1.isHidden = true
        search.isHidden = true
        Search1.isHidden = false
        Search3.isHidden = true
    }
    
    @IBAction func addFlight2(_ sender: Any) {
        let city=departureCity1.text
        destinationCity2.text=city
        destinationCity2.isHidden = false
        arrivalCity2.isHidden = false
        departureDatepicker2.isHidden = false
        addFlight2.isHidden = true
        Search1.isHidden = true
        Search3.isHidden = false
    }
    
    @IBAction func search(_ sender: Any) {
        let f1dept = departurecity.text ?? ""
        let f1arrv = arrivalcity.text ?? ""
        let f1deptDate = departuredatepicker.date
        let f1arrivdate = arrivaldate.date
        let i = Int(f1deptDate.timeIntervalSince1970)
        let j = Int(f1arrivdate.timeIntervalSince1970)
        if f1dept.isEmpty || f1arrv.isEmpty  {
            showAlert(titleDisplay: "Error", message: "Cities must not be empty")
        }
        else if f1dept == f1arrv {
            showAlert(titleDisplay: "Error", message: "both cities cannot be same")
        }
        else if i==j{
            showAlert(titleDisplay: "Error", message: "Both Date is should not be same")
        }
        else if i>j{
            showAlert(titleDisplay: "Error", message: "Please select correct dates")
        }
        else{
            showAlert(titleDisplay: "Sucessful", message: "Done")
        }
        
    }
    
    @IBAction func Search1(_ sender: Any) {
        let f1dept = departurecity.text ?? ""
        let dept2 = departureCity1.text ?? ""
        let arrv2 = arrivalCity1.text ?? ""
        let f1arrv = arrivalcity.text ?? ""
        let f1deptDate = departuredatepicker.date
        let dept2Date = depatureDatepicker1.date
        let i = Int(f1deptDate.timeIntervalSince1970)
        let j = Int(dept2Date.timeIntervalSince1970)
        if f1dept.isEmpty || f1arrv.isEmpty || dept2.isEmpty || arrv2.isEmpty {
            showAlert(titleDisplay: "Error", message: "Cities must not be empty")
        }
        else if f1dept == f1arrv || dept2 == arrv2 {
            showAlert(titleDisplay: "Error", message: "both cities cannot be same")
        }
        else if i==j{
            showAlert(titleDisplay: "Error", message: "Both Date is should not be same")
        }
        else if i>j{
            showAlert(titleDisplay: "Error", message: "Please select correct dates")
        }
        else{
            showAlert(titleDisplay: "Sucessful", message: "Done")
        }
        
        
    }
    
    @IBAction func Search3(_ sender: Any) {
        let f1dept = departurecity.text ?? ""
        let dept2 = departureCity1.text ?? ""
        let arrv2 = arrivalCity1.text ?? ""
        let f1arrv = arrivalcity.text ?? ""
        let dept3 = destinationCity2.text ?? ""
        let arrv3 = arrivalCity2.text ?? ""
        let f1deptDate = departuredatepicker.date
        let dept2Date = depatureDatepicker1.date
        let dept3Date = departureDatepicker2.date
        let i = Int(f1deptDate.timeIntervalSince1970)
        let j = Int(dept2Date.timeIntervalSince1970)
        let k = Int(dept3Date.timeIntervalSince1970)
        if f1dept.isEmpty || f1arrv.isEmpty || dept2.isEmpty || arrv2.isEmpty || dept3.isEmpty || arrv3.isEmpty {
            showAlert(titleDisplay: "Error", message: "Cities must not be empty")
        }
        else if f1dept == f1arrv || dept2 == arrv2 || dept3 == arrv3 {
            showAlert(titleDisplay: "Error", message: "both cities cannot be same")
        }
        else if i==j || j==k || k==i {
            showAlert(titleDisplay: "Error", message: "Both Date is should not be same")
        }
        else if i>j || j>k {
            showAlert(titleDisplay: "Error", message: "Please select correct dates")
        }
        else{
            showAlert(titleDisplay: "Sucessful", message: "Done")
        }
    }
    func showAlert(titleDisplay:String,message: String) {
            let alert = UIAlertController(title: titleDisplay , message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    
    @IBAction func Search2(_ sender: Any) {
        let dept1 = departurecity.text ?? ""
        let arrv1 = arrivalcity.text ?? ""
        
        if dept1.isEmpty || arrv1.isEmpty  {
            showAlert(titleDisplay: "Error", message: "Cities cannot be empty")
        }
        else if dept1 == arrv1 {
            showAlert(titleDisplay: "Error", message: "both cities cannot be same")
        }
        else{
            showAlert(titleDisplay: "Sucessful", message: "Done")
        }
        
    }
    
    @IBAction func tripSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            arrivaldate.isHidden = true
            departuredatepicker.isHidden = false
            departureCity1.isHidden = true
            arrivalCity1.isHidden = true
            destinationCity2.isHidden = true
            arrivalCity2.isHidden = true
            addFight1.isHidden = true
            addFlight2.isHidden = true
            depatureDatepicker1.isHidden = true
            departureDatepicker2.isHidden = true
            search.isHidden = true
            Search2.isHidden = false
            Search1.isHidden = true
            Search3.isHidden = true
            
        case 1:
            arrivaldate.isHidden = false
            departureCity1.isHidden = true
            arrivalCity1.isHidden = true
            destinationCity2.isHidden = true
            arrivalCity2.isHidden = true
            addFight1.isHidden = true
            addFlight2.isHidden = true
            depatureDatepicker1.isHidden = true
            departureDatepicker2.isHidden = true
            Search2.isHidden = true
            search.isHidden = false
            Search1.isHidden = true
            Search3.isHidden = true
            
        case 2:
            arrivaldate.isHidden = true
            departuredatepicker.isHidden = false
            addFight1.isHidden = false
            Search2.isHidden = true
            search.isHidden = false
            Search3.isHidden = true
        default:
            break
            
        }
        
    }
}

