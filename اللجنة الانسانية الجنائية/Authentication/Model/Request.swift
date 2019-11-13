//
//  Request.swift
//  اللجنة الانسانية الجنائية
//
//  Created by Ibrahim Abdul Aziz on 11/9/19.
//  Copyright © 2019 Thehatchapp. All rights reserved.
//

import Foundation
struct Request {
    private(set) public var number: Int
    private(set) public var date: Int
    private(set) public var status: String
//    private(set) public var image1: String
//    private(set) public var image2: String
//
    init (number: Int, date: Int, status: String) {
        self.number = number
        self.date = date
        self.status = status
//        self.image1 = image1
//        self.image2 = image2
    }


    
}
