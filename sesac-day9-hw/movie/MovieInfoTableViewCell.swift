//
//  MovieInfoTableViewCell.swift
//  sesac-day9-hw
//
//  Created by 박창현 on 2023.07.28.
//

import UIKit

class MovieInfoTableViewCell: UITableViewCell {
    static let Identifier = "MovieRowCell"
    @IBOutlet var back: UIView!
    @IBOutlet var poster: UIImageView!
    @IBOutlet var title: UILabel!
    @IBOutlet var info: UILabel!
    @IBOutlet var desc: UILabel!
}
