let named: (foo: Int, bar: Int) = (1, 2)
print(named.foo + named.bar)

let complex: ((foo: (Int, Int), bar: Int), (Int, Int)) = (((1, 2), 3), (4, 5))
print(complex.0.foo.1 + complex.1.1)

struct Foo {
    let bar: Int = 1
}

let foo = Foo()
print(foo.bar)

let stuffed:(Int,Int)=(1,2)
print(stuffed)
