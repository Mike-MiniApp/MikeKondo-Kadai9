//
//  ViewController.swift
//  MikeKondo-Kadai9
//
//  Created by 近藤米功 on 2022/08/09.
//

import UIKit

class ResultViewController: UIViewController {
    // MARK: - UI Parts
    @IBOutlet private weak var prefectureNameLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "input":
            guard let navigation = segue.destination as? UINavigationController else {
                return
            }
            guard let select = navigation.topViewController as? SelectPrefectureViewController else {
                return
            }
            select.delegate = self
        default:
            break
        }
    }
}

extension ResultViewController: SelectPrefectureViewControllerDelegate {
    func didSelectPrefecture(name: String) {
        prefectureNameLabel.text = name
    }
}
