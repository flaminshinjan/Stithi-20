//
//  String.swift
//  Stithi2.0
//
//  Created by Shinjan Patra on 05/10/23.
//

import Foundation

extension String{
    func isValidEmail() -> Bool {

        let regex = try! NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
        return retex.firstMatch(in: self, range: NSRange(location: 0, length: count)) != nil
    }
}
