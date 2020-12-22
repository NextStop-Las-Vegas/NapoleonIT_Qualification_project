//
//  MastersTableViewController.swift
//  Qualification_project
//
//  Created by Pavel on 22.12.2020.
//

import UIKit

struct mastersCellData {
    let photo: UIImage!
    let info: String!
    let name: String!
    //   let button: UIButton!
}

protocol ButtonDelegate {
    func pushFullScreenButton()
}

class MastersTableViewController: UITableViewController {
    
    var arrayOfMastersCellData = [mastersCellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfMastersCellData = [mastersCellData(photo: #imageLiteral(resourceName: "bckgrnsqr7.png"), info: "Григо́рий — мужское русское личное имя греческого происхождения; восходит к др.-греч. γρηγορέω («грегорео») — «бодрствую». Григорий — одно из немногих собственно христианских имён, появившееся в эпоху становления христианства; имя метафорически сопоставлялось с личными качествами идеального христианина.", name: "Григорий"),
                                  mastersCellData(photo: #imageLiteral(resourceName: "bckgrnsqr5.png"), info: "Фили́пп (др.-греч. Φίλιππος — «любящий лошадей»; от др.-греч. φιλέω — «люблю», и др.-греч. ἵππος — «лошадь») — мужское имя греческого происхождения[1][2][3]. У А. В. Суперанской имя переводится не только как «любящий лошадей», но и как «увлекающийся верховой ездой»[2].", name: "Филипп"),
                                  mastersCellData(photo: #imageLiteral(resourceName: "bckgrnsqr4.png"), info: "Джон[1] — распространённое английское мужское имя, происходящее от еврейского Йоханаан (ивр. יחנן Iōḥānān, Iěhōḥānān в буквальном переводе «будет помилован». В данном контексте — Яхве (Бог) смилостивился, Яхве (Бог) помиловал)[2]. Соответствует русскому имени Иоанн", name: "Джон"),
                                  mastersCellData(photo: #imageLiteral(resourceName: "bckgrnsqr6.png"), info: "Марк — мужское личное имя латинского происхождения.", name: "Марк"),]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfMastersCellData.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("MastersTableViewCell", owner: self, options: nil)?.first as! MastersTableViewCell
        cell.masterName.text = arrayOfMastersCellData[indexPath.row].name
        cell.masterInfoLabel.text = arrayOfMastersCellData[indexPath.row].info
        cell.masterPhotoProfile.image = arrayOfMastersCellData[indexPath.row].photo
        cell.delegate = self
        
        cell.setup()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! MastersTableViewCell
    }
}

extension MastersTableViewController: ButtonDelegate {
    func pushFullScreenButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let aboutViewController = storyboard.instantiateViewController(withIdentifier: "AboutOfMaster") as! AboutOfMasterViewController
        self.navigationController?.pushViewController(aboutViewController, animated: true)
    }
}
