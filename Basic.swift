import Foundation

print("Hello World")


/*
class A {
    fileprivate var name:String = "Kunal"
    private var address:String = "Bangalore"
    
    private func privateMethod(){
        
    }
    fileprivate func filePrivateMethod(){
        
    }
   
}

extension A {
//    var extensionVariable:String = "sample" // we can't create stored properties in extension
    func extensionMethod(){
        
    }
}


class B:A {
    override func privateMethod() {
        address = ""
    }

    override func filePrivateMethod() {
        name = ""
    }

    override func extensionMethod() {
        <#code#>
    }
}
 
 //fileprivate it can be read anywhere in the same file it was declared
 //private property can only be read inside the type that declared it or extention

*/


/*
//Using default implementation (Optional methods in protocol)
protocol SampleProtocol {
    func requiredMethod()
   
}

extension SampleProtocol {
    func optionalMethod() {
        
    }
}


class A:SampleProtocol {
    func requiredMethod() {
        
    }
    
    func optionalMethod() { // optional Method
        
    }
    
}
*/


/*
@objc protocol SampleProtocol {
    @objc func requiredMethod()
    @objc optional func optionalMethod()
}

class A:NSObject, SampleProtocol {
    func requiredMethod() {
        <#code#>
    }
//    only classes that inherit from NSObject can conform to such protocol. No structs, no enums, no associated types.
}
*/


/*
 // Second highest number
var arr = [8,7,2,4]
var max: Int = 0
var sec : Int = 0
for i in arr {
    if i > max {
        sec = max
        max = i
    } else if i > sec  && i != max {
        sec = i
    }
}

print(max)
print(sec)
*/


//bubble Sort
/*
var arr = [74,12,54,63,65,85,96,87,52]
for i in 0...arr.count - 1 {
    for j in 0...arr.count - 2 {
        if arr[i] < arr[j] {
            (arr[i], arr[j]) = (arr[j], arr[i])
        }
    }
}

print(arr)
*/



/*
 //Generic
 public protocol Reverseble {
     func reverse() -> Self
 }

 extension Int : Reverseble {
    public func reverse() -> Int {
        var n = self
        var rev:Int = 0
        while n>0 {
            let temp = n%10
            rev = rev*10 + temp
            n = n/10
        }
        return rev
     }
 }

 extension String: Reverseble {
    public func reverse() -> String {
        return String(self.reversed())
     }
 }

 extension Array where Self.Element:Equatable & Reverseble {
     
     public func reversePair() -> [(Element,Element)] {
         var pair :[(Element,Element)] = []
         for i in 0..<self.count {
             let reverse = self[i].reverse()
             for j in i+1..<self.count {
                 if reverse == self[j] {
                     pair.append((self[i],self[j]))
                 }
             }
         }
         return pair
     }
 }

 
*/
