//
//  DataInteractor.swift
//  XCTestApp1
//
//  Created by Anthony Cheung on 2023-06-01.
//

import Foundation
import Alamofire
//import PelmorexTelemetrySchema

protocol DataInteractorProtocol: AnyObject {
    func fetch()
}

class DataInteractor: DataInteractorProtocol {

    struct PrivateStruct {
        let aaa: String
    }

    func fetch() {
        _ = AF.defaultEventMonitors
//        _ = PelmorexTelemetrySchema.Category.userData
    }

}
