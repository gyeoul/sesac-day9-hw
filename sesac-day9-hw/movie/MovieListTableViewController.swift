//
//  MovieListTableViewController.swift
//  sesac-day9-hw
//
//  Created by 박창현 on 2023.07.28.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    let movieList = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.rowHeight = 200
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:MovieInfoTableViewCell.Identifier) as! MovieInfoTableViewCell
        let row = indexPath.row
        cell.back.layer.cornerRadius = 10
        cell.poster.image = UIImage(named: movieList.movie[row].title)
        cell.title.text = "\(movieList.movie[row].title)"
        cell.info.text = "\(movieList.movie[row].releaseDate) | \(movieList.movie[row].runtime)분 | \(movieList.movie[row].rate)점"
        cell.desc.text = "\(movieList.movie[row].overview)"
        return cell
    }
}
