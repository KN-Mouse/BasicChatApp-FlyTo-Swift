//
//  InputField.swift
//  Fly To
//
//  Created by Nguyen Khang on 2/10/25.
//

import SwiftUI

struct InputField: View {
    
    enum fieldType {
        case normal
        case password
    }
    
    let placeholder: String
    let filedType: fieldType
    @Binding var text: String
    @State var isSecure: Bool
    
    init(
        placeholder: String = "",
        text: Binding<String>,
        fieldType: fieldType = .normal
    ) {
        self.placeholder = placeholder
        self._text = text
        self.filedType = fieldType
        self._isSecure = State(initialValue: filedType == .password)
    }
    var body: some View {
        HStack {
            if filedType == .password && isSecure {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
            
            if filedType == .password {
                Button {
                    isSecure.toggle()
                } label: {
                    Image(systemName: isSecure ? "eye.slash" : "eye")
                }
            }
        }
        .padding(12)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(10)
    }
}

#Preview {
    InputField(placeholder: "Email", text: .constant(""), fieldType: .normal)
        .padding()
    InputField(placeholder: "Pass word", text: .constant(""), fieldType: .password)
        .padding()
}
