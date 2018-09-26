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

    init(params: [Parameter], tuple: (lhs: Int, rhs: String)) {
        self.params = params
        self.tuple = tuple
    }

    func say(message: String) {
        print(message)
    }

    func say(messages: [String]) {
        print(messages)
    }

    func gen<T: Container>(param: T) -> T {
        return param
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

let param = Parameter.int(int: 5)
switch param {
case .string(let string):
    print(string)
case .int(let int):
    print(int)
}

func allItemsMatch<C1: Container, C2: Container> (_ someContainer: C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item: Equatable {
        return true
}
