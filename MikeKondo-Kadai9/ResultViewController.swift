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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        prefectureNameLabel.text = ModelLocator.prefectureRepository.load()
    }

    @IBAction private func didTapInputButton(_ sender: Any) {
        let selectPrefectureViewController = SelectPrefectureViewController()
        navigationController?.pushViewController(selectPrefectureViewController, animated: true)
    }
}
