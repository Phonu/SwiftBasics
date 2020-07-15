import UIKit

var str = "Hello, playground"

/*
class PropertyObserver{
    var name:String = ""
    var dept:String = "Kunal" {
        willSet(newValue){ // will notify that there will be change in the property value
            print("first willSet will be called")
            print("New value is \(newValue)")
            print("value in willSet \(dept)")
        }
        didSet { // property value will be changed
            print("then didset will be called")
            if dept != oldValue {
                print("old value is \(oldValue) and new value is \(dept)")
            } else {
                print("both old value \(oldValue) and new value \(dept) are EQUAL ")
            }
            
            print(dept)
            
        }
    }
}
*/

/*

let a = PropertyObserver()
a.dept = "Poddar"


class ComputedProperty{
    var name:String = "RAKESH"
    var dept:String  {
        get {
            return "abcd"
        }
        set(newValue) {
            print("new value is \(newValue + name)")
            print(" old value \(dept)")
             print("  \(name)")
        }
        
    }
}


let b = ComputedProperty()
b.dept = "abcd"
*/


/*
var name: String = "Kuunal PPoddar"

var arr = ["uuna", "PPpo", "Pul", "PPa"]

var temp : String = ""

for i in arr {
    for j in i {
        let a = String(describing: j)
        if name.contains(a) {
            temp += a
        }
    }
    
    if (i == temp) {
        print("Yes \(i)   \(temp)")
    }else {
        print("No")
    }
}

*/

/*
class ConvenienceInitializer{
    var name: String
    var add: String
    var dept: String
    
    init(name:String, add: String, dept: String) {
        self.name = name
        self.add = add
        self.dept = dept
    }
    
     convenience init(name:String, add: String) {
        self.init(name: name, add: add, dept: "APPLE")
    }
    convenience init(name:String) {
        self.init(name:name, add: "ffe", dept: "afe")
    }
}

let abc = ConvenienceInitializer(name: "kunal", add: "ban")
print(abc.dept)

let pqr = ConvenienceInitializer(name: "jkfh", add: "ghf", dept: "JAVA")
print(pqr.dept)

let a = ConvenienceInitializer(name: "kgnjk")
print(a.add)

*/


//let bounces:[(Int,TimeInterval)] = [
//    (0, 0),
//    (1, 0.25),  // 0.25s interval since last index
//    (2, 1),     // 0.75s interval since last index
//    (3, 1.25),  // 0.25s interval since last index
//    (4, 1.5),   // 0.25s interval since last index
//    (5, 2)      // 0.5s interval since last index
//]
//
//var subject = PassthroughSubject<Int, Never>()
//let cancellable = subject
//    .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
//    .sink { index in
//        print ("Received index \(index)")
//    }
//
//for bounce in bounces {
//    DispatchQueue.main.asyncAfter(deadline: .now() + bounce.1) {
//        subject.send(bounce.0)
//    }
//}

//
//class Book: NSObject, NSCoding {
//
//    var title: String
//    var author: String
//    var pageCount: Int
//    var categories: [String]
//    var available: Bool
//
//    // Memberwise initializer
//    init(title: String, author: String, pageCount: Int, categories: [String], available: Bool) {
//        self.title = title
//        self.author = author
//        self.pageCount = pageCount
//        self.categories = categories
//        self.available = available
//    }
//
//    // MARK: NSCoding
//
//    required convenience init?(coder decoder: NSCoder) {
//        guard let title = decoder.decodeObject(forKey: "title") as? String,
//            let author = decoder.decodeObject(forKey: "author") as? String,
//            let categories = decoder.decodeObject(forKey: "categories") as? [String]
//            else { return nil }
//
//        self.init(
//            title: title,
//            author: author,
//            pageCount: decoder.decodeInteger(forKey: "pageCount"),
//            categories: categories,
//            available: decoder.decodeBool(forKey: "available")
//        )
//    }
//
//
//    func encode(with coder: NSCoder) {
//        coder.encode(self.title, forKey: "title")
//        coder.encode(self.author, forKey: "author")
//        coder.encodeCInt(Int32(self.pageCount), forKey: "pageCount")
//        coder.encode(self.categories, forKey: "categories")
//        coder.encode(self.available, forKey: "available")
//    }
//
////    func encodeWithCoder(coder: NSCoder) {
////
////    }
//
//
//
//}
//
//let b1 = Book(title: "gdufg", author: "gfg", pageCount: 3, categories: ["fff"], available: true)
//let b2 = Book(title: "gdufg", author: "gfg", pageCount: 4, categories: ["fff"], available: true)
//
//let books = [b1,b2]
//
//do {
//    try NSKeyedArchiver.archivedData(withRootObject: books, requiringSecureCoding: true)
//} catch let err {
//    print(err)
//}
////guard let books = NSKeyedUnarchiver.unarchiveObject(withFile: "/path/to/archive") as? [Book] else { return nil }
//
//guard let pqr = NSKeyedUnarchiver.unarchivedObject(ofClass: NSCoding.Protocol, from: <#T##Data#>)




  

