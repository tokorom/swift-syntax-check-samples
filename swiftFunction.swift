func simple(foo: Int, bar: Int) -> Int {
    return foo + bar
}
print(simple(foo: 1, bar: 2))

func array(array: [Int]) -> Int {
    return array.reduce(0) { $0 + $1 }
}
print(array(array: [1, 2, 3]))

func tuple(tuple: (Int, Int)) -> Int {
    return tuple.0 + tuple.1
}
print(tuple(tuple: (1, 2)))

func tupleTuple(tuple: ((Int, Int), Int)) -> Int {
    return tuple.0.0 + tuple.0.1 + tuple.1
}
print(tupleTuple(tuple: ((1, 2), 3)))

func foo(_ completion: (() -> String)? = nil) -> String {
    guard let completion = completion else {
        return "nil"
    }
    return completion()
}
print(foo())

let optionalBlock: ((Int, Int) -> Int)? = { return $0 + $1 }
print(optionalBlock!(1, 2))

func bar(_ completion: () -> String) -> String {
    return completion()
}
print(bar({ () -> String in return "bar" }))

let block: (Int, Int) -> Int = { return $0 + $1 }
print(block(1, 2))

let stuffedTuple:(Int,Int)=(1,2)
print(stuffedTuple)
