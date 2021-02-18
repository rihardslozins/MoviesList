//
//  DetailViewController.swift
//  MoviesList
//
//  Created by Rihards Lozins on 05/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movie: Movie!
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieYearLabel: UILabel!
    @IBOutlet weak var movieGenreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil {
            
            movieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.title
            movieYearLabel.text = "Year: " + movie.year
            movieGenreLabel.text = "Genre: " + movie.genre
            
        }
    }
}//End
