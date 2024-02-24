//
//  MemoListViewModel.swift
//  RxMemo
//
//  Created by 이상준 on 2/22/24.
//

import Foundation
import RxSwift
import RxCocoa

class MemoListViewModel: CommonViewModel {
    
    var memoList: Observable<[Memo]> {
        return storage.memoList()
    }    
}
