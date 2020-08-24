//
//  HomeViewModel.swift
//  DigioTest
//
//  Created by Pedro Henrique Borges De Paula Sebastiao (RESOURCE TECNOLOGIA E INFORMATICA LTDA – GEDES – SP) on 23/08/20.
//  Copyright © 2020 Digio Test. All rights reserved.
//

import Foundation

class HomeViewModel {
    
    var spotLights : [Spotlight]
    var products : [Product]
    var welcome : String
    var delegate : HomeViewControllerDelegate!
    
    init(_ delegate : HomeViewControllerDelegate) {
        
        self.welcome = "Olá, Maria"
        self.delegate = delegate
        self.products = [Product]()
        self.spotLights = [Spotlight]()
    }
    
    func viewDidLoad(){
        
        
        self.delegate.showHideLoading(showHide: true)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
        
        
            APIClient.products { result in
                
                self.delegate.showHideLoading(showHide: false)
                
                switch result {
                    
                    case .success(let response):
                    
                        self.spotLights = response.spotlight
                        self.products = response.products
                        self.delegate.loadCollectionViews()
                    
                    case . failure(_):
                        self.delegate.showErrorMessage(message: "Ocorreu um erro ao obter as informações!")
                    
                }
            }
        })
        
    }
    
}
