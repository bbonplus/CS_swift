//
//  JsonView.swift
//  testJson
//
//  Created by bo on 2025/11/6.
//

import SwiftUI


struct JsonView: View {
    @StateObject private var viewmodel = PersonInfoViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            
            if let person = viewmodel.person{
                Text("Name:\(person.name)")
                
                Text("age:\(person.age)")
                
                Text("fullName:\(person.fullName)")
                
                Text("Email:\(person.email)")
            }else if let errorMessage = viewmodel.errorMessage {
                Text("error:\(errorMessage)")
            }else{
                Text("Load.....")
            }
            
            Button("Load Person"){
                viewmodel.fetchPerson()
            }
            
        }
        .padding()
    }
}
