//
//  APIError.swift
//  TestNewsAPP
//
//  Created by Lwj on 2021/11/13.
//

import Foundation

enum APIError:Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Failed to decode the object from the service"
        case .errorCode(let code):
            return "\(code) - something went wrong"
        case .unknown:
            return "the error is unknown"
        }
    }
}
