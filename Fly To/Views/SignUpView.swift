//
//  SignUpView.swift
//  Fly To
//
//  Created by Nguyen Khang on 2/10/25.
//

import SwiftUI

struct SignUpView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    var body: some View {
        VStack {
            Group {
                InputField(placeholder: "Your name", text: $name, fieldType: .normal)
                InputField(placeholder: "Email" ,text: $email, fieldType: .normal)
                InputField(placeholder: "Pass word", text: $password, fieldType: .password)
                InputField(placeholder: "Comfirm pass word", text: $confirmPassword, fieldType: .password)
            }
            .padding(.vertical, 12)
           
            
            Button{
                print("Sign Up")
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    .padding(20)
            }
            
        }
        .padding()
    }
}

#Preview {
    SignUpView()
}
