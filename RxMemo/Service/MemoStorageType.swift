//
//  MemoStorageType.swift
//  RxMemo
//
//  Created by 이상준 on 2/22/24.
//

import Foundation
import RxSwift

protocol MemoStorageType {
    
    // 작업 결과가 필요없는 경우가 있기에 어노테이션 추가
    @discardableResult
    func createMemo(content: String) -> Observable<Memo>
    
    @discardableResult
    func memoList() -> Observable<[Memo]>
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
}
