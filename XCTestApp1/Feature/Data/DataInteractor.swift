//
//  DataInteractor.swift
//  XCTestApp1
//
//  Created by Anthony Cheung on 2023-06-01.
//

import Foundation
import Alamofire

protocol DataInteractorProtocol {
    func fetch()
}

class DataInteractor: DataInteractorProtocol {
    
    func fetch() {
        _ = AF.defaultEventMonitors
    }
    
}
