//
//  Constants.swift
//  DigioTest
//
//  Created by Pedro Henrique Borges De Paula Sebastiao (RESOURCE TECNOLOGIA E INFORMATICA LTDA – GEDES – SP) on 23/08/20.
//  Copyright © 2020 Digio Test. All rights reserved.
//

import Foundation


struct K {
    struct Server {
        static let baseURL = "https://7hgi9vtkdc.execute-api.sa-east-1.amazonaws.com/sandbox"
    }
    
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
