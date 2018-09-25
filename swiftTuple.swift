func tuple(tuple: (Int, Int)) -> Int {
    return tuple.0 + tuple.1
}
print(tuple(tuple: (1, 2)))

func tupleTuple(tuple: ((Int, Int), Int)) -> Int {
    return tuple.0.0 + tuple.0.1 + tuple.1
}
print(tupleTuple(tuple: ((1, 2), 3)))

let stuffedTuple:(Int,Int)=(1,2)
print(stuffedTuple)

let named: (foo: Int, bar: Int) = (1, 2)
print(named.foo + named.bar)

let complex: ((foo: (Int, Int), bar: Int), Int) = (((1, 2), 3), 4)
print(complex.0.foo.1 + complex.1)
