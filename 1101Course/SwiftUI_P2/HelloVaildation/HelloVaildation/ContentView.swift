//
//  ContentView.swift
//  HelloVaildation
//
//  Created by Larry - 1024 on 2021/12/7.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var userRegistrationViewModel =
        UserRegistrationViewModel()
    
    var body: some View {
        VStack {
            Text("建立帳號")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 30)
            FormFieldView(fieldName: "Username",
                          fieldValue: $userRegistrationViewModel.username,
                          isSecure: false)
            RequirementTextView(
                iconName: userRegistrationViewModel.isUsernameLengthValid ? "lock.open" : "lock",
                iconColor: userRegistrationViewModel.isUsernameLengthValid ? Color.green : Color.red,
                text: "至少需有4個字元",
                isStrikeThrough: userRegistrationViewModel.isUsernameLengthValid
            )
            .padding()
            
            FormFieldView(fieldName: "Password", fieldValue: $userRegistrationViewModel.password, isSecure: true)
            VStack {
                RequirementTextView(
                    iconName: userRegistrationViewModel.isPasswordLengthValid ? "lock.open" : "lock",
                    iconColor: userRegistrationViewModel.isPasswordLengthValid ?  Color.green : Color.red,
                    text: "至少需有8個字元",
                    isStrikeThrough: userRegistrationViewModel.isPasswordLengthValid
                )
                .padding(.vertical,5)
                RequirementTextView(
                    iconName: userRegistrationViewModel.isPasswordCapitalLetter ? "lock.open" : "lock",
                    iconColor: userRegistrationViewModel.isPasswordCapitalLetter ?  Color.green : Color.red,
                    text: "至少需有1個大寫字元",
                    isStrikeThrough: userRegistrationViewModel.isPasswordCapitalLetter
                )
            }
            .padding()
            
            FormFieldView(fieldName: "Confirm Password", fieldValue: $userRegistrationViewModel.passwordConfirm,
                          isSecure: true)
            RequirementTextView(
                iconName: userRegistrationViewModel.isPasswordConfirmValid ? "lock.open" : "lock",
                iconColor:userRegistrationViewModel.isPasswordConfirmValid ? Color.green : Color.red,
                text: "請再輸入一次相同的密碼",
                isStrikeThrough: userRegistrationViewModel.isPasswordConfirmValid)
                .padding()
                .padding(.bottom, 50)
            
            Button(action: {}, label: {
                Text("Sign Up")
                    .font(.body)
                    .foregroundColor(.gray)
                    .bold()
                    .padding(.all, 10)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [Color(red: 251/255, green: 128/255, blue: 128/255), Color(red: 253/255, green: 193/255, blue: 104/255)]), startPoint: .leading, endPoint: .trailing)
                            .cornerRadius(10)
                            .padding(.horizontal)
                    )
            })
            
            HStack {
                Text("Already have an account?")
                    .font(.body)
                    .bold()
                Button(action: {}, label: {
                    Text("Sign in")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
                })
            }.padding(.top, 50)
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
