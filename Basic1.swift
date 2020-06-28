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

var arr = [74,85,96,58,47]
var arr1 = ["as", "sa", "abc", "cba", "er"]
let ab = arr.reversePair()
print(ab)
print(arr1.reversePair())

*/

/*

// how to avoid circular reference
class Department {
    var deptname:String
    var employees = [Employee]()
    
    init(deptname:String) {
        self.deptname = deptname
        print("department \(self.deptname) is initialized")
    }
    deinit {
        print("Department deinit")
    }

}

class Employee {
    var empName:String
    weak var empDept:Department?
    
    init(empName:String, empDept:Department) {
        self.empName = empName
        self.empDept = empDept
        empDept.employees.append(self)
        print("Employee \(self.empName) is initialized")
    }
    
    deinit {
        print("Employee deinit")
    }
}


var dept1:Department? = Department(deptname: "Apple")
var emp1:Employee? = Employee(empName: "kunal", empDept: dept1!)

dept1 = nil
emp1 = nil

*/

/*
class A{
    
}

 // how to use computed property in extension
extension A{
    var add:String {
        return "cbsa"
    }
    
    var name:String {
        get {
            let value = "kunal"
            return value
        }
        set(newValue) {
            self.name = newValue
        }
    }
    
    
    
}
*/


/*
//The @Published attribute is class-constrained. Use it with properties of classes, not with non-class types like structures
struct User{
    @Published var name:String
    
    init(name:String) {
        self.name = name
    }
    
}

var user1 = User(name: "kunal")

user1.$name.sink() {
    print("user name is \($0)")
}

*/


//dd' is inaccessible due to 'private' protection level
//Cannot assign to property: 'add' setter is inaccessible

//class User {
//    var name:String
//     private(set) var add:String //readonly -- within class
//
//    init(name:String, add:String) {
//        self.name = name
//        self.add = add
//    }
//}
//
//class A {
//    func abcd() {
//        var u1 = User(name: "ad", add: "d")
//        u1.add = "ffra"
//    }
//}

/*
 // How to use extension protocol --> we can implement default methods
protocol abc {
    func a()
}
extension abc {
    func b() {
        print("extension protocol")
    }
}

class A:abc {
    func a() {
        print("abc")
    }
    
    
}
class B: abc {
    func a() {
        
    }
}

let a = A()
a.b()

let b = B()
b.b()
*/

/*
 //Stored properties are not used in extension and protocols
 // we can create computed property
protocol abc {
    var a:String {get }
}

class A:abc {
    var a: String {
        return "anc"
    }
    
    // for get set --> initializer is required
//    init(a:String) {
//        self.a = a
//    }
 
 
 // for get --> we can use with return type  read-only
//    var a:String {
//        return "abc"
//    }
//
}
extension A {
    var name:String {
        return "kunal"
    }
}
*/
