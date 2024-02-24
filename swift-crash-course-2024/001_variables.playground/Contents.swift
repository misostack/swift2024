import Foundation

/* let use to define a variable that can't be assigned again */
let userA = "Garen"
let userB = "Yasuo"

var users = [userA, userB]

users.append("Ahri")
users.append("Renekton")

users

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2

/* Array in Swift just copies the value only */
let arrayString = ["a", "b"]
var anotherArr = arrayString
anotherArr.append("c")
anotherArr
arrayString

/* use NSMutableArray class to create reference style: it will create an object */
let oldArray = NSMutableArray(
    array: [
        "a",
        "b"
    ]
)

oldArray.add("c")

var newArray = oldArray
newArray.add("d")
oldArray

func changeTheArray(_ array: NSArray) {
    let cpArr = array as! NSMutableArray
    cpArr.add("e")
}

changeTheArray(oldArray)
oldArray
