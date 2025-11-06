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
    //接json
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
            person = try decoder.decode(PersonInfo.self, from: data)
        }catch{
            errorMessage = error.localizedDescription
        }
    }
    
    //添加编码逻辑
    func encodePerson() -> String?{
        guard let person = person else {return nil}
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        encoder.outputFormatting = .prettyPrinted
        
        do {
            let data = try encoder.encode(person)
            return String(data: data,encoding: .utf8)
        } catch {
            errorMessage = error.localizedDescription
            return nil
        }
    }
}

