//
//  MemoListViewController.swift
//  RxMemo
//
//  Created by 이상준 on 2/22/24.
//

import UIKit
import RxSwift
import RxCocoa
import NSObject_Rx


class MemoListViewController: UIViewController, ViewModelBindableType {

    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    var viewModel: MemoListViewModel!

    func bindViewModel() {
        viewModel.title
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
        
        viewModel.memoList
            .bind(to: listTableView.rx.items(cellIdentifier: "cell")) { row, memo, cell in
                cell.textLabel?.text = memo.content
            }
            .disposed(by: rx.disposeBag)
        
        addButton.rx.action = viewModel.makeCreateAction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
