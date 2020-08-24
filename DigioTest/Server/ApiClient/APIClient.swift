//
//  APIClient.swift
//  DigioTest
//
//  Created by Pedro Henrique Borges De Paula Sebastiao (RESOURCE TECNOLOGIA E INFORMATICA LTDA – GEDES – SP) on 23/08/20.
//  Copyright © 2020 Digio Test. All rights reserved.
//

import Foundation
import Alamofire


class APIClient {
    
    
    @discardableResult
    private static func performRequest<T:Decodable>(route:APIRouter, decoder: JSONDecoder = JSONDecoder(), completion:@escaping (Result<T, AFError>)->Void) -> DataRequest {
        return AF.request(route)
                        .responseDecodable (decoder: decoder){ (response: DataResponse<T, AFError>) in
                            completion(response.result)
        }
    }
    
    static func products(completion:@escaping (Result<ProductsResponse, AFError>)->Void) {
        performRequest(route: APIRouter.products, completion: completion)
    }
    
    
}
