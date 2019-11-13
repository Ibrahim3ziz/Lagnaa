//
//  DataService.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/9/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import Foundation
class DataService {
    static let instance = DataService()
    
    private let requests = [
        Request(number: 1123, date: 3, status: "جيده"),
        Request(number: 345, date: 2, status: "سيئ"),
        Request(number: 2020, date: 1, status: "إلي حد ما")
    ]


func getRequests() -> [Request] {
    return requests
    }
}
