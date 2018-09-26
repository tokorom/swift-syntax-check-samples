import Foundation

enum Parameter {
    case string(string: String)
    case int(int: Int)
}

class Foo: NSObject {
    let params: [Parameter]
    let tuple: (Int, String)

    init(paramas: [Parameter], tuple: (Int, String)) {
        self.params = params
        self.tuple = tuple
    }
}

let foo = Foo(
    params: [
        .string(string: "hello"),
        .int(int: 100),
    ],
    tuple: (100, "hello")
)

print(foo.params)
print(foo.tuple)
