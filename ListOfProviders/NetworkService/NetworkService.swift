//
//  NetworkService.swift
//  ListOfProviders
//
//  Created by Borys Klykavka on 07.06.2023.
//

import Foundation

class NetworkService {
    
    public static let shared = NetworkService()

    let urlSimNet = URL(string: "https://simnet.kiev.ua")!
    let urlKolo = URL(string: "https://kolo.tv")!
    let urlFreeNet = URL(string: "https://o3.ua")!
    let urlIT = URL(string: "https://it-tv.org/ua/")!

    
    private init() {}
    
 
}
