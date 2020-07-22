//
//  Algorithms.swift
//  UiGestureDemo
//
//  Created by mac admin on 22/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import Foundation


func binarySearch( numbers: [Int], value: Int) -> Int?
{
    var left = 0
    var right = numbers.count - 1

    while left <= right {

        let middle = Int(floor(Double(left + right) / 2.0))

        if numbers[middle] < value {
            left = middle + 1
        } else if numbers[middle] > value {
            right = middle - 1
        } else {
            return middle
        }
    }
     return nil
}


let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
let value = 13

if let index = binarySearch(numbers:numbers, value: value) {
    print("Found \(value) at index \(index)")
} else {
    print("nil")
}




func checkArmstrongNumber(value:Int) -> Bool {
    var arrOfDigits:[Int] = []
    var num = value
    while num>0 {
        let rem = num % 10
        arrOfDigits.append(rem)
        num = num/10
    }

    let result = arrOfDigits.map({Int(pow(Double($0),Double(arrOfDigits.count)))}).reduce(0,+)
    if result == value {
        return true
    } else {
        return false
    }
}

let checkArmstrongValue = checkArmstrongNumber(value:153)
print(checkArmstrongValue)




// var arr = [2,5,3,6,1,4,5]
var arr = [-7, 1, 5, 2, -4, 3, 0]

var temp1 = 0
var flag = 0
var equilibriumIndex = 0
for i in 0...arr.count-3 {
    temp1 += arr[i]
    // print(temp1)
    var temp2 = 0
    for j in i+2...arr.count-1 {
      // print(j)
      temp2 += arr[j]
    }
    if (temp1 == temp2) {
      equilibriumIndex = i+1
      flag = 1
    }
    // print(temp2)
}

if flag == 1 {
  print ("Equilibrium Index of an Array: \(equilibriumIndex)")
} else {
  print("Not Found")
}




//Will print the series of Fibonacci Series till the nth number
func FibonacciSeries (num:Int) {
    var n = num
    var a = 0
    var b = 1
    var c = 0
    while(n>0) {
         c = a+b
         print(c)
         a = b
         b = c
         n = n-1
    }
}

//will print the Fibonacci nth value
func FibonacciValue (num:Int) {
    var n = num
    var a = 0
    var b = 1
    var c = 0
    while(n>0) {
         c = a+b
         a = b
         b = c
         n = n-1
    }
    print("nth value of the Fibonacci Series --> \(c)")
}
FibonacciSeries(num:6)
FibonacciValue(num:6)



func numPalindrome(num:Int) {
    var n = num
    var rev = 0
    var temp = 0
    while(n>0) {
        temp = n%10
        rev = rev*10 + temp
        n = n/10
    }
    if (num == rev){
        print("Number is Palindrome")
    }else {
        print("Number is not Palindrome")
    }
}

numPalindrome(num:1556551)





func checkPalindrome(value:Any) {
    var val = String(describing: value)
    let rev = String(val).reversed()
    print(String(rev))

    if (String(rev).lowercased() == String(val).lowercased()) {
        print("yes")
    }else {
        print("no")
    }
}

checkPalindrome(value:"Kunal")
checkPalindrome(value:12321)
checkPalindrome(value:"madam")
checkPalindrome(value:"AbcBa")
checkPalindrome(value:"AbcBagh")




func twoSumProblem(_ array: [Int], _ target: Int) -> [Int] {
    var tempDict = [Int: Int]()
    for (index, value) in array.enumerated() {
        if let tempIndex = tempDict[target - value] {
            // print([tempIndex, index])
            return [tempIndex, index]
        }
        tempDict[value] = index
    }
    return []
}
 
let result = twoSumProblem([3,2,5,4,9,8], 10)
print(result)



var string1 = "sileNt"
var string2 = "listen"

func checkAnagram (string1:String, string2:String){
    var v1 = string1.lowercased().sorted()
    var v2 = string2.lowercased().sorted()

    var v3 = ""
    var v4 = ""

    for i in v1 {
        v3.append(i)
    }
    for i in v2 {
        v4.append(i)
    }
     
    if (v3 == v4) {
        print("its an anagram")
    } else {
        print("its not an anagram")
    }


}




checkAnagram(string1:"sileNt", string2:"listen")
checkAnagram(string1:"swift", string2:"ios")
checkAnagram(string1:"pool", string2:"loop")



extension Int {
    func reverse(num:Int) -> Int{
        var n = num
        var rev:Int = 0
        while n>0 {
            let temp = n%10
            rev = rev*10 + temp
            n = n/10
        }
        return rev
    }
}


var pairList:[Int] = []
 
func CountOfPair(arr:[Int]) -> Int{
    for i in arr {
        let rev = i.reverse(num: i)
        if arr.contains(rev) && !pairList.contains(i) {
            pairList.append(i)
            pairList.append(rev)
        }
    }
    return pairList.count/2
}
var arr = [21,12,54,45,87,21]
//print(CountOfPair(arr: arr))




func findOppositeValues(arr1:[Int]) {
    var finalArr:[Int] = []
    for i in arr1 {
        for j in arr1 {
            if (i+j == 0) {
                if !(finalArr.contains(i) || finalArr.contains(j)) {
                    finalArr.append(i)
                    finalArr.append(j)
                }
            }
        }
    }
    print(finalArr)
}

findOppositeValues(arr1: [-7, 4, -3, 2, 2, -8, -2, 3, 3, 7, -2, 3, -2])



func checkTriplet(arr1:[Int], sum:Int) {
    var result = 0
    for i in 0...arr1.count-2 {
        var j = i+1
        var k = arr1.count-1
        
        while(j<k) {
            if (arr1[i] + arr1[j] + arr1[k] >= sum){
                k = k-1
            } else {
                result = result + (k-j)
                j = j+1
            }
        }
    }
    print(result)
}

checkTriplet(arr1:[-2, 0, 1, 3], sum:2)




func gcd(a:Int, b:Int) {
    if (a == 0) {
        print(b)
        return
    }
    if (b == 0) {
        print(a)
        return
    }

    if (a == b) {
        print(a)
        return
    }

    if (a>b) {
        return gcd(a:a-b,b:b)
    }else {
        return gcd(a:a,b: b-a)
    }
}

gcd(a:324, b:36)



var arr1 = [1, 56, 57, 57, 89, 99, 92, 91, 60, 94, 93, 45]

var max_Len = 1

for i in 0...arr1.count-1 {
    var minVal = arr1[i]
    var maxVal = arr1[i]

    for j in 1...arr1.count-1 {
        minVal = [minVal, arr1[j]].min()!
        maxVal = [maxVal, arr1[j]].max()!

        if( (maxVal - minVal) == j - i) {
            // print("kunal")
            max_Len = [max_Len, maxVal-minVal+1].max()!
        }
        // print(max_Len)
    }

}

print(max_Len)


// var str = "abcabcbb"
// var str = "bbbb"
var str = "pwwkew"

var lastChar = ""
var result = ""
var temp = ""
for i in str {
    if temp.contains(i) {
      if lastChar ==  String(i) {
        temp = ""
        temp.append(i)
        lastChar = String(i)
      }
    } else {
      temp.append(i)
      lastChar = String(i)
    }
    
    if temp.count > result.count {
      result = temp
    }

}
print(result)




func MaxAndMinValue (arr1: [Int]) {
    var minVal = arr1[0]
    var maxVal = arr1[0]
    for i in arr1 {
        if (minVal > i ){
            minVal = i
        }
        if (maxVal < i ) {
            maxVal = i
        }
    }
    print("minimum value of the array : \(minVal)")
    print("maximum value of the array : \(maxVal)")
}

MaxAndMinValue(arr1:[55,45,25,26,75,96,84,34,12,45])




extension String {
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }

    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        return String(self[fromIndex...])
    }

    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        return String(self[..<toIndex])
    }

    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        return String(self[startIndex..<endIndex])
    }
}


func printPermutation(word:String, temp:String) {

    var arr1:[String] = []
    for i in word {
        let a = String(describing: i)
        arr1.append(a)
        // print(i)
    }

    // print(arr1)
    if (word.count == 0) {
        print(temp + " ")
        return
    }

    for i in 0...word.count - 1 {

       var ch = String(describing: arr1[i])
       var ab = word.substring(with: 0..<i ) + word.substring(from: i + 1 )
      
    //    print(word.substring(with: 0..<i ))
    //     print(word.substring(from: i + 1 ))
    //    print(ab)
    //    print(temp + ch)
       printPermutation(word: ab, temp: temp + ch )
   }

}

printPermutation(word:"abc", temp:"")
// printPermutation(word:"abcd", temp:"")



extension String {
    var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
}


func reverse(word:String) {
    var arr1:[String] = []
    for i in word {
        let a = String(describing: i)
        arr1.append(a)
    }
    print(arr1)

    var r = arr1.count - 1 //right most count
    var l = 0  // left most count
    while (l < r) {
        
        if (!arr1[l].isAlphanumeric) {
            l = l + 1
        }
        else if (!arr1[r].isAlphanumeric) {
            r = r - 1
        }
        //Both arr1[l] and arr1[r] are not spacial
        else {
            (arr1[l],arr1[r]) = (arr1[r],arr1[l])
            l = l + 1
            r = r - 1
        }
    }

    print(arr1)

}

reverse(word:"k!un#al")
