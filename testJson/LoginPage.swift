
//
//  LoginPage.swift
//  testJson
//
//  Created by bo on 2025/11/20.
//
import SwiftUI


struct LoginPage: View {
    
    private let isAppstoreVersion = false
    
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.white
            
            VStack(spacing: 0) {
                HStack {
                    if !isAppstoreVersion{
                        Button {
                            
                        }label: {
                            Text("Debug")
                                .foregroundColor(Color.red)
                                .font(.system(size: 13))
                                .padding(12)
                        }
                    }
                    Spacer()
                    Button{
                        
                    }label: {
                        Text("FaceBack")
                            .foregroundColor(Color.red)
                            .font(.system(size: 13))
                            .padding(12)
                    }
                }
                Spacer()
                
                Image(systemName: "apple.logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 375,height: 175)
                Spacer()
                
            }
        }
    }
    
}

#Preview {
    LoginPage()
}
