//
//  SceneCoordinatorType.swift
//  RxMemo
//
//  Created by 이상준 on 2/22/24.
//

import Foundation
import RxSwift

protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
}
