//
//  ViewController.swift
//  ScrollableStackView
//
//  Created by Vicki Hardy on 03/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var scrollView: UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            return scrollView
    }()

    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayout()
        addToStackView(total: 50)
    }
        
    private func setupViews() {
        scrollView.backgroundColor = .lightGray
        view.addSubview(scrollView)

        scrollView.addSubview(stackView)
    }
       
    private func setupLayout() {
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -600).isActive = true
        
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        //stackView.widthAnchor.constraint(equalToConstant: 1000).isActive = true

        stackView.heightAnchor.constraint(equalTo: scrollView.heightAnchor).isActive = true
        stackView.widthAnchor.constraint(greaterThanOrEqualTo: scrollView.widthAnchor).isActive = true
    }
    
    private func addToStackView(total: Int) {
        
        for number in 1...total {
            let view = UIView()
            let label = UILabel()
            label.text = "\(number)"
            label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
            label.textAlignment = .center
            view.backgroundColor = .orange
            view.addSubview(label)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            label.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            
            stackView.addArrangedSubview(view)
            
            
        }
        
        view.layoutIfNeeded()
    }


}

