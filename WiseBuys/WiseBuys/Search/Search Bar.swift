//
//  Search Bar.swift
//  WiseBuys
//
//  Created by Lauren Ferlito on 2/11/23.
//

import Foundation

import UIKit

class ViewController: UIViewController {

  let searchBar = UISearchBar()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupSearchBar()
  }

  func setupSearchBar() {
    searchBar.sizeToFit()
    searchBar.placeholder = "Enter your search here"
    navigationItem.titleView = searchBar
  }

}
