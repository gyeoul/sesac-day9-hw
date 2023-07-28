//
//  ShoppingTableViewController.swift
//  sesac-day9-hw
//
//  Created by 박창현 on 2023.07.28.
//

import UIKit

class ShoppingTableViewController: UITableViewController {
    @IBOutlet var OptionView: UIView!
    @IBOutlet var userInputField: UITextField!
    @IBOutlet var userAddButton: UIButton!
    
    var list:[Goods] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        OptionView.layer.cornerRadius = 15
//        userInputField.clipsToBounds = true
    }
    @IBAction func tapAddButton(_ sender: UIButton) {
        view.endEditing(true)
        list.append(Goods(check: false, star: false, title: userInputField.text ?? ""))
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:Goods.Identifier) as! GoodsTableViewCell
        cell.bg.layer.cornerRadius = 15
        cell.checkbox.image = list[indexPath.row].check ? UIImage(systemName: "checkmark.square.fill") : UIImage(systemName: "checkmark.square")
        cell.star.setImage(list[indexPath.row].star ? UIImage(systemName: "star.fill") : UIImage(systemName: "star"), for: .normal)
        cell.title.text = list[indexPath.row].title
        return cell
    }
}
