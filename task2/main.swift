//
//  main.swift
//  yandexSchoolTask2
//
//  Created by poliorang on 21.06.2022.
//

import Foundation
 
func input() -> Int {
    if let input = readLine() {
        if let count = Int(input) {
            return count
        }
    }
    return 0
}

func deletePartAfterHyphen(login: String) -> String {
    let parts = login.components(separatedBy: "-")

    return parts[0]
}

func deleteDots(mail: String) -> String {
    let str = mail.replacingOccurrences(of: ".", with: "")
    
    return str
}

func deletePartAfterDot(domen: String) -> String {
    let index = domen.lastIndex(of: ".") ?? domen.endIndex
    let line = domen[..<index]
    
    return String(line)
}

func checkSameLogins(newMail: (String, String)) -> Bool {
    for mail in mails {
        if mail.1 == newMail.1 && mail.0 == newMail.0 {
            return false
        }
    }
    return true
}


let count = input()
var mails = [(String, String)]()

for _ in 0...count - 1 {
    var mail = [String]()
    readLine()?.split(separator: "@").map( {
        let part = String($0)
        mail.append(part)
    })
    

    let login = deleteDots(mail: deletePartAfterHyphen(login: mail[0]))
    let domen = deletePartAfterDot(domen: mail[1])
    if checkSameLogins(newMail: (login, domen)) {
        mails.append((login, domen))
    }
}

print(mails.count)
