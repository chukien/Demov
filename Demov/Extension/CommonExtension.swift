//
//  CommonExtension.swift
//  Demov
//
//  Created by chutrungkien on 11/04/2023.
//

import Foundation
import UIKit

extension UITableView {
    func registerCells(cells: [String], bundle: Bundle? = nil) {
        for cell in cells {
            self.register(UINib(nibName: cell, bundle: bundle), forCellReuseIdentifier: cell)
        }
    }
    
    func registerCell(cell: String, bundle: Bundle? = nil) {
        self.register(UINib(nibName: cell, bundle: bundle), forCellReuseIdentifier: cell)
    }
}

extension UICollectionView {
    func registerCells(cells: [String], bundle: Bundle? = nil) {
        for cell in cells {
            self.register(UINib(nibName: cell, bundle: bundle), forCellWithReuseIdentifier: cell)
        }
    }
    
    func registerCell(cell: String, bundle: Bundle? = nil) {
        self.register(UINib(nibName: cell, bundle: bundle), forCellWithReuseIdentifier: cell)
    }
}

extension NSObject {
    //To get name of a Swift class from an object, e.g. for var object: SomeClass(), use
    var className: String {
        return String(describing: type(of: self))
    }
    
    //To get name of a Swift class from a class type, e.g. SomeClass, use:
    class var className: String {
        return String(describing: self)
    }
}
