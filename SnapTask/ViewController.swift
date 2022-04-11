//
//  ViewController.swift
//  SnapTask
//
//  Created by Ramir Amrayev on 4/9/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let greenView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    let redView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    let blueView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    let yellowView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    let blackView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    let grayView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))
    let purpleView = UIView(frame: CGRect(origin: .zero, size: CGSize(width: 100, height: 100)))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemGray
        view.addSubview(greenView)
        view.addSubview(redView)
        view.addSubview(blueView)
        view.addSubview(yellowView)
        view.addSubview(blackView)
        view.addSubview(grayView)
        view.addSubview(purpleView)
        layoutGreenView()
        layoutRedView()
        layoutBlueView()
        layoutYellowView()
        layoutBlackView()
        layoutGrayView()
        layoutPurpleView()
    }

    private func layoutGreenView() {
        greenView.backgroundColor = .green
        greenView.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(60)
            $0.top.equalToSuperview().offset(100)
            $0.size.equalTo(100)
        }
    }

    private func layoutRedView() {
        redView.backgroundColor = .red
        redView.snp.makeConstraints {
            $0.leading.equalTo(greenView.snp.trailing).offset(40)
            $0.top.equalTo(greenView.snp.bottom)
            $0.size.equalTo(greenView)
        }
    }
    
    private func layoutBlueView() {
        blueView.backgroundColor = .blue
        blueView.snp.makeConstraints {
            $0.trailing.equalTo(redView.snp.leading).inset(20)
            $0.top.equalTo(redView.snp.bottom)
            $0.size.equalTo(greenView)
        }
    }
    
    private func layoutYellowView() {
        yellowView.backgroundColor = .yellow
        yellowView.snp.makeConstraints {
            $0.leading.equalTo(blueView.snp.leading).offset(40)
            $0.top.equalTo(blueView.snp.bottom)
            $0.size.equalTo(greenView)
        }
    }
    
    private func layoutBlackView() {
        blackView.backgroundColor = .black
        blackView.snp.makeConstraints {
            $0.leading.equalTo(yellowView.snp.leading).offset(20)
            $0.top.equalTo(yellowView.snp.top).offset(20)
            $0.size.equalTo(greenView)
        }
    }
    
    private func layoutGrayView() {
        grayView.backgroundColor = .gray
        grayView.snp.makeConstraints {
            $0.leading.equalTo(yellowView.snp.leading)
            $0.top.equalTo(yellowView.snp.bottom)
            $0.size.equalTo(greenView)
        }
    }
    
    private func layoutPurpleView() {
        purpleView.backgroundColor = .purple
        purpleView.snp.makeConstraints {
            $0.centerX.equalTo(grayView.snp.centerX)
            $0.centerY.equalTo(grayView.snp.centerY)
            $0.size.equalTo(greenView).dividedBy(1.7)
        }
    }
}

