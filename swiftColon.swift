import Foundation

enum Parameter {
    case string(string: String)
    case int(int: Int)
}

protocol Container {
    associatedtype Item
}

class Foo: NSObject {
    let params: [Parameter]
    let tuple: (lhs: Int, rhs: String)

    var value: Int {
        get {
            return 0
        }
        set {}
    }

    init(params: [Parameter], tuple: (lhs: Int, rhs: String)) {
        self.params = params
        self.tuple = tuple
    }

    func say(message: String) {
        print(message)
    }

    func say(messages: [String] = []) {
        print(messages)
    }

    func complexDefaultArg(arg: (((Int, Int)) -> Int)? = { (arg: (Int, Int)) -> Int in return arg.0 }) -> Int {
        let inner: (Int, Int) -> Int = { (lhs: Int, rhs: Int) -> Int in
            return 0
        }
        return arg?((1, 2)) ?? inner(1, 2)
    }

    func gen<T: Container>(param: T) -> T {
        return param
    }

    func composeMap<R>(_ transform: @escaping (Int) throws -> R) -> Int {
        return 0
    }

    func testInOut(_ int: inout Int) {
        int = 10
    }

    func normal() {
        let message = "hello"
        say(message: message)
    }
}

let foo = Foo(
    params: [
        .string(string: "hello"),
        .int(int: 100),
    ],
    tuple: (lhs: 100, rhs: "hello")
)

let bar = "bar"
let baz = "baz"

foo.say(message: bar + baz)

print(foo.params)
print(foo.tuple)

var testInt = 0
foo.testInOut(&testInt)
print(testInt)

let param = Parameter.int(int: 5)
switch param {
case .string(let string):
    print(string)
case .int(let int):
    print(int)
}

let dict: [Int: (Int, Int)] = {
    "foo": (Int, Int),
    "bar": { (lhs: Int, rhs: Int) -> Int in
        return 100
    }
}

func allItemsMatch<C1: Container, C2: Container> (_ someContainer: C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item: Equatable {
        return true
}
