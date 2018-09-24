//
//  swiftString
//  swiftInterpolationRegion
//  swiftInterpolation
//

print("")

print("Hello Swift")

print("Hello 日本語")

let interpolation = "interpolation"

print("\(interpolation)")
print("try \(interpolation)")
print("\(interpolation)...finish")
print("\(interpolation) and \(interpolation)")

let interpolations = [1, 2, 3]

print("\(interpolations[0])")
print("try \(interpolations[0])")
print("\(interpolations[0])...finish")
print("\(interpolations[0]) and \(interpolations[0])")

func swiftInterpolation(completion: (() -> String)? = nil) -> String {
    guard let completion = completion else {
        return "nil"
    }
    return completion()
}

print("\(swiftInterpolation())")
print("try \(swiftInterpolation())")
print("\(swiftInterpolation())...finish")

print("\(swiftInterpolation(completion: { () -> String in return "hello" }))")
print("try \(swiftInterpolation(completion: { () -> String in return "hello" }))")
print("\(swiftInterpolation(completion: { () -> String in return "hello" }))...finish")
print("\(swiftInterpolation(completion: { () -> String in return "hello" })) and \(interpolation)")
