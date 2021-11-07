//
//  ViewController.swift
//  SnapkitExample
//
//  Created by 山本響 on 2021/11/07.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var redSquareView = UIView(frame: .zero)
    lazy var greenSquareView = UIView(frame: .zero)
    lazy var blueSquareView = UIView(frame: .zero)
    lazy var yellowSquareView = UIView(frame: .zero)
    lazy var orangeSquareView = UIView(frame: .zero)
    let boxWidth: CGFloat = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    func setupView() {
        // colouring
        redSquareView.backgroundColor = .red
        greenSquareView.backgroundColor = .green
        blueSquareView.backgroundColor = .blue
        yellowSquareView.backgroundColor = .yellow
        orangeSquareView.backgroundColor = .orange
        // add subviews
        [redSquareView, greenSquareView, blueSquareView, yellowSquareView, orangeSquareView].forEach { box in
            view.addSubview(box)
        }
        // top-left
        redSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.leading.equalToSuperview()
        }
        // top-right
        greenSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.top.trailing.equalToSuperview()
        }
        
        // bottom-left
        blueSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.bottom.leading.equalToSuperview()
        }
        // bottom-right
        yellowSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.bottom.trailing.equalToSuperview()
        }
        
        // center
        orangeSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.center.equalToSuperview()
        }
    }
}
