/*
public enum RxCocoaObjCRuntimeError: Swift.Error, CustomDebugStringConvertible {
    /// Unknown error has occurred.
    case unknown(target: AnyObject)
}
*/

enum Foo {
    case foo
    case bar
    case baz
}

let foo: Foo = .bar

func bar() -> Any {
    return [1: 2]
}

switch foo {
case .foo: print("foo")
case .bar: print("bar")
case .baz: print("baz")
}

switch ({ () -> Int in return 0 }()) {
case 0...10:
    print(true)
default:
    print("default")
}

switch bar() {
case let val as [Int: Int]:
    if 0 != val.values.first { print(1) }
default:
    print("default")
}

let anyValue: Any = 0

if case let value as Int = anyValue {
    print(value)
}
