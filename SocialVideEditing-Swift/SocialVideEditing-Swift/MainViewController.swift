//
//  MainViewController.swift
//  SocialVideEditing-Swift
//
//  Created by Alex Tapia on 01/07/23.
//

import UIKit

class MainViewController: UIViewController {
  
  private lazy var headerView: UIView = {
    let view = UIView()
    view.backgroundColor = .darkGray
    view.layer.cornerRadius = 30
    view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    return view
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(headerView)
    headerView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      headerView.topAnchor.constraint(equalTo: view.topAnchor),
      headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      headerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33)
    ])
  }
}

