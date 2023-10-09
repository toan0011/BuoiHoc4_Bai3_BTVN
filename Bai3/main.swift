//
//  main.swift
//  Bai3
//
//  Created by Minh Toan on 09/10/2023.
//

import Foundation
var randomNumber = Int.random(in: 1...100)
while true {
    print("""
    =======================
    1. Tiếp tục
    2. Thoát
    0. Hiển thị số ngẫu nhiên
    Chọn:
    """)
    if let input = readLine(), let choose = Int(input){
        if choose == 2 {
            break
        }
        if choose != 1 && choose != 0 {
            print("Giá trị không hợp lệ")
            continue
        }
        if choose == 0{
            print(randomNumber)
        }
    }else{
        print("Giá trị nhập vào không hợp lệ")
        continue
    }
    
    print("Hãy nhập vào số mà bạn đoán:")
    if let input = readLine(), let numberInput = Int(input){
        if numberInput == randomNumber {
            print("Chúc mừng")
            break
        }else if numberInput < randomNumber {
            print("Bé quá")
        }else{
            print("Lớn quá")
        }
    }else{
        print("Giá trị nhập vào không hợp lệ")
    }
}

