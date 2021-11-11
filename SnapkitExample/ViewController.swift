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
//        // top-left
//        redSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.leading.equalToSuperview()
//        }
//        // top-right
//        greenSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.trailing.equalToSuperview()
//        }
        
//        // center-left
//        redSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.centerY.leading.equalToSuperview()
//        }
        
//        // center-right
//        greenSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.centerY.trailing.equalToSuperview()
//        }
        
//        // bottom-left
//        blueSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.bottom.leading.equalToSuperview()
//        }
        
//        // bottom-right
//        yellowSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.bottom.trailing.equalToSuperview()
//        }
        
//        // center
//        orangeSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.center.equalToSuperview()
//        }
        
//        // top full-width
//        orangeSquareView.snp.makeConstraints { make in
//            make.height.equalTo(boxWidth)
//            make.leading.trailing.equalToSuperview()
//            make.top.equalToSuperview()
//        }
        
//        // top-left (with safe-area)
//        redSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//            make.leading.equalToSuperview()
//        }
//        // top-right (with safe-area)
//        greenSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.trailing.equalToSuperview()
//            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
//        }

//        // top-left with padding
//        redSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.equalToSuperview().offset(80)
//            make.leading.equalToSuperview().offset(40)
//        }
//        // top-right with padding
//        greenSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.equalToSuperview().offset(80)
//            make.trailing.equalToSuperview().offset(-40)
//        }
//        // bottom-left (with safe-area)
//        blueSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.leading.equalToSuperview()
//            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
//        }
//        // bottom-right (with safe-area)
//        yellowSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.trailing.equalToSuperview()
//            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
//        }
//        // center
//        orangeSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.center.equalToSuperview()
//        }
        
//        // top-left with padding
//        redSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.equalToSuperview().offset(80)
//            make.leading.equalToSuperview().offset(40)
//        }
//        // top-right with padding
//        greenSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.equalToSuperview().offset(80)
//            make.trailing.equalToSuperview().offset(-40)
//        }
        
        
        // bottom-left with padding
        blueSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.leading.equalToSuperview().offset(40)
            make.bottom.equalToSuperview().offset(-80)
        }
        // bottom-right with padding
        yellowSquareView.snp.makeConstraints { make in
            make.width.height.equalTo(boxWidth)
            make.trailing.equalToSuperview().offset(-40)
            make.bottom.equalToSuperview().offset(-80)
        }
        
//        // use this
//        orangeSquareView.snp.makeConstraints { make in
//            make.height.equalTo(boxWidth)
//            make.top.equalToSuperview()
//            make.leading.trailing.equalToSuperview().inset(40)
//        }
//
//        // top-left with padding (original position)
//        redSquareView.snp.makeConstraints { make in
//            make.width.height.equalTo(boxWidth)
//            make.top.equalToSuperview().offset(80)
//            make.leading.equalToSuperview().offset(40)
//        }
//        // ensures that all pending layout operations complete
//        view.layoutIfNeeded()
//
//
//        // update top padding to 200px with animation after 1 seconds delay
//        UIView.animate(withDuration: 0.5, delay: 1.0) {
//            self.redSquareView.snp.updateConstraints { make in
//                make.top.equalToSuperview().offset(200)
//            }
//            // trigger layout update
//            self.view.layoutIfNeeded()
//        }
        
        // top-left (width = 0.5 of superview)
        redSquareView.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(80)
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
        }
        // top-right
        greenSquareView.snp.makeConstraints { make in
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(80)
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
        }
    }
}
