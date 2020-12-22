import UIKit

struct newsCellData {
    let header: String!
    let text: String!
    let buttonText: String!
}

protocol ButtonDelegateTwo {
    func thinkMoreButton()
}

class NewsTableViewController: UITableViewController {
    
    var arrayOfNewsCellData = [newsCellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfNewsCellData = [newsCellData(header: "Скидки в новый год", text: "Назови секретное слово и получи скидку в новый год", buttonText: "узнать больше"),
                               newsCellData(header: "Скидки в день рождения", text: "Назови секретное слово и получи скидку в день рождения", buttonText: "узнать больше"),
                               newsCellData(header: "Парная стрижка", text: "Возьми с собой сына на стрижку и получите скидку по программе парная стрижка", buttonText: "узнать больше")]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfNewsCellData.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("NewsTableViewCell", owner: self, options: nil)?.first as! NewsTableViewCell
        cell.newsHeaderLabel.text = arrayOfNewsCellData[indexPath.row].header
        cell.newsTextLabel.text = arrayOfNewsCellData[indexPath.row].text
        cell.buttonText.setTitle(arrayOfNewsCellData[indexPath.row].buttonText, for: .normal)
        cell.delegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! NewsTableViewCell
    }
}

extension NewsTableViewController: ButtonDelegateTwo {
    func thinkMoreButton() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newsViewController = storyboard.instantiateViewController(withIdentifier: "MoreNews") as! MoreNewsViewController
        self.navigationController?.pushViewController(newsViewController, animated: true)
    }
}
