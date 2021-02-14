//
//  BookingTableViewController.swift
//  Qualification_project
//
//  Created by Pavel on 22.12.2020.
//

import UIKit

struct bookingCellData {
    let city: String!
    let street: String!
    let location: UIImage!
}

class BookingTableViewController: UITableViewController {
    
    var arrayOfBookingCellData = [bookingCellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfBookingCellData = [bookingCellData(city: "Челябинск", street: "ул. 8 Марта", location: #imageLiteral(resourceName: "map1")),
                                  bookingCellData(city: "Челябинск", street: "пр-т. Ленина", location: #imageLiteral(resourceName: "map3.png")),
                                  bookingCellData(city: "Челябинск", street: "ул. Университетская Набережная", location: #imageLiteral(resourceName: "map2.png"))]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfBookingCellData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("BookingTableViewCell", owner: self, options: nil)?.first as! BookingTableViewCell
        cell.city.text = arrayOfBookingCellData[indexPath.row].city
        cell.street.text = arrayOfBookingCellData[indexPath.row].street
        cell.location.image = arrayOfBookingCellData[indexPath.row].location
        
        cell.setup()
        return cell
    }
    
    override  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            self.transitionToOrder()
    }
    
    func transitionToOrder() {
        
        let pickDateViewController = storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.pickDateViewController) as! PickDateViewController
        self.navigationController?.pushViewController(pickDateViewController, animated: true)
    }
}

