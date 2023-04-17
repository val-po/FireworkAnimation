//
//  ViewController.swift
//  FireworkAnimation
//
//  Created by Val Po on 17.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createLayer()
    }

    private func createLayer() {
        let myLayer = CAEmitterLayer()
        myLayer.emitterPosition = CGPoint(x: view.center.x, y: -100)
        let colors: [UIColor] = [
            .systemRed,
            .systemBlue,
            .systemCyan,
            .systemYellow,
            .systemMint,
            .systemBrown,
            .systemGreen,
            .systemPurple
        ]
        let cells = colors.compactMap {
            let cell = CAEmitterCell()
            cell.scale = 0.2
            cell.emissionRange = .pi * 3
            cell.lifetime = 20
            cell.birthRate = 200
            cell.velocity = 125
            cell.color = $0.cgColor
            cell.contents = UIImage(named: "image")!.cgImage
            return cell
        }
        myLayer.emitterCells = cells
        view.layer.addSublayer(myLayer)
    }
}

