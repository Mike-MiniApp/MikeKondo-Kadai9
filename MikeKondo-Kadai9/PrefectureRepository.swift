//
//  ValueRepository.swift
//  MikeKondo-Kadai9
//
//  Created by 近藤米功 on 2022/08/15.
//

import Foundation

class ModelLocator {
    static let prefectureRepository = PrefectureRepository()
}

class PrefectureRepository {
    private var prefectureName: String = "未選択"

    func save(prefectureName: String) {
        self.prefectureName = prefectureName
    }

    func load() -> String {
        return prefectureName
    }
}
