//
//  TransitionModel.swift
//  RxMemo
//
//  Created by 이상준 on 2/22/24.
//

import Foundation

enum TransitionStyle {
    case root
    case push
    case modal
}

enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
