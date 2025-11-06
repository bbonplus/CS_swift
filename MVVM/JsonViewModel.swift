//
//  JsonViewModel.swift
//  testJson
//
//  Created by bo on 2025/11/6.
//

import SwiftUI
import Foundation

class PersonInfoViewModel: ObservableObject {
    @Published var person: PersonInfo?
    @Published var errorMessage: String?
    func fetchPerson() {
        let jsonData = """
        {
            "name": "Josh",
            "age": 30,
            "full_name": "Josh Smith",
            "email": "bbonplus@163.com"
        }
        """
        guard let data = jsonData.data(using:.utf8) else {return}
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do{
            let decoderPerson = try decoder.decode(PersonInfo.self, from: data)
            self.person = decoderPerson
        }catch{
            self.errorMessage = error.localizedDescription
        }
    }
}

