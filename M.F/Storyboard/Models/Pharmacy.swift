//
//  Pharmacy.swift
//  M.F
//
//  Created by Bedour Albshayer on 10/14/20.
//

import Foundation
import UIKit

struct Pharmacy {
    var name: String
    var locationUrl: String
}

var PharmacyData: [Pharmacy] = [
    .init(name: "Royal Pharmacy", locationUrl: "https://www.google.com/maps/place/Royal+pharmacy/@29.3262536,48.0164799,15z/data=!4m5!3m4!1s0x0:0xb10715f0653df7db!8m2!3d29.3261604!4d48.0165209"),
    .init(name: "AlZahra Pharmacy", locationUrl: "https://www.google.com/maps/place/Al-Zahra+Co-Op+Pharmacy/@29.2785766,48.003082,15z/data=!4m2!3m1!1s0x0:0x65eccc5cff525d2f?sa=X&ved=2ahUKEwi-g5uy-8rsAhXOPsAKHe6CAekQ_BIwCnoECBEQBQ"),
    .init(name: "Bayan Pharmacy", locationUrl: "https://www.google.com/maps/place/Bayan+Co-Operative+Society+Pharmacy/@29.3057315,48.0445922,15z/data=!4m2!3m1!1s0x0:0xc6fe2bca4a8fdea8?sa=X&ved=2ahUKEwjkuIGRycvsAhUhpHEKHbnMDQQQ_BIwE3oECBEQBQ"),
    .init(name: "Pharmatee Pharmacy", locationUrl: "https://www.google.com/maps/place/Pharmatee+%7C+We+Supply+Life/@29.3401443,48.0711285,15z/data=!4m12!1m6!3m5!1s0x0:0x64d29a17b6c9c47b!2sPharmatee+%7C+We+Supply+Life!8m2!3d29.3401443!4d48.0711285!3m4!1s0x0:0x64d29a17b6c9c47b!8m2!3d29.3401443!4d48.0711285"),
    .init(name: "Farwaniya Pharmacy", locationUrl: "https://www.google.com/maps/place/Farwaniya+Pharmacy/@29.2726797,47.9664053,15z/data=!4m5!3m4!1s0x0:0xd81c78be335111fd!8m2!3d29.2726797!4d47.9664053"),
    .init(name: "Ahlam Pharmacy", locationUrl: "https://www.google.com/maps/place/Ahlam+Pharmacy/@29.3626094,47.9649514,15z/data=!4m2!3m1!1s0x0:0x58a9f9c3f36d76b5?sa=X&ved=2ahUKEwij-OzLt83sAhWdUhUIHXXTDaEQ_BIwCnoECA8QBQ"),
    .init(name: "CURE Pharmacy", locationUrl: "https://www.google.com/maps?client=safari&rls=en&sxsrf=ALeKk00Yk-792sdl-QKhMSHMaEcAYu07Ng:1603549856748&q=cure+pharmacy+kuwait&biw=891&bih=560&dpr=2&um=1&ie=UTF-8&sa=X&ved=2ahUKEwiUxJnguM3sAhXzShUIHTncB7YQ_AUoAXoECA0QAw"),
    .init(name: "Pharmazone", locationUrl: "https://www.google.com/maps?q=pharmazone+pharmacy&source=lmns&bih=560&biw=891&client=safari&hl=en&sa=X&ved=2ahUKEwi2jIquts3sAhUlgXMKHa7qCnIQ_AUoAXoECAEQAQ")
]
