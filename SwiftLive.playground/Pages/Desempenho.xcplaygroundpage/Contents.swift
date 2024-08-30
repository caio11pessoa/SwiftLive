//: [Previous](@previous)

import Foundation

var repeticoes = 0...50000
var somatorio = 0

var now1: Date = Date.now
for i in repeticoes {
    somatorio += i
}
var now2: Date = Date.now
print(now2.timeIntervalSince1970 - now1.timeIntervalSince1970)



//: [Next](@next)
