//
//  swiftString
//  swiftInterpolationRegion
//  swiftInterpolation
//

print("")
print("\()")

print("Hello Swift")

print("Hello 日本語")

let bar = "bar"

print("\(bar)")
print("try \(bar)")
print("\(bar)...finish")
print("\(bar) and \(bar)")
print("\("inner bar")")
print("\("inner ()")")
print("\("inner ((1)(2))")")

let baz = [1, 2, 3]

print("\(baz[0])")
print("try \(baz[0])")
print("\(baz[0])...finish")
print("\(baz[0]) and \(baz[0])")

func foo(_ completion: (() -> String)? = nil) -> String {
    guard let completion = completion else {
        return "nil"
    }
    return completion()
}

print("\(foo())")
print("try \(foo())")
print("\(foo())...finish")

print("\(foo({ () -> String in return "hello" }))")
print("\(foo({ () -> String in return foo({ () -> String in return "hello" }) }))")
print("\(foo({ () -> String in return "\(foo({ () -> String in return "hello" }))" }))")

print("try \(foo({ () -> String in return "hello" }))")
print("\(foo({ () -> String in return "hello" }))...finish")
print("\(foo({ () -> String in return "hello" })) and \(bar)")
