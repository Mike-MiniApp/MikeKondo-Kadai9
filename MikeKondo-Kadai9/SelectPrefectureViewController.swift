//
//  SelectPrefectureViewController.swift
//  MikeKondo-Kadai9
//
//  Created by 近藤米功 on 2022/08/15.
//

import UIKit

protocol SelectPrefectureViewControllerDelegate: AnyObject {
    func didSelectPrefecture(name: String)
}

class SelectPrefectureViewController: UIViewController {
    weak var delegate: SelectPrefectureViewControllerDelegate?

    @IBAction private func didTapCancelButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction private func didTapTokyoButton(_ sender: Any) {
        savePrefecture(prefectureName: "東京都")
    }

    @IBAction private func didTapKanagawaButton(_ sender: Any) {
        savePrefecture(prefectureName: "神奈川")
    }

    @IBAction private func didTapSaitamaButton(_ sender: Any) {
        savePrefecture(prefectureName: "埼玉県")
    }

    @IBAction private func didTapTibaButton(_ sender: Any) {
       savePrefecture(prefectureName: "千葉県")
    }

    private func savePrefecture(prefectureName: String) {
        delegate?.didSelectPrefecture(name: prefectureName)
        self.dismiss(animated: true, completion: nil)
    }
}
