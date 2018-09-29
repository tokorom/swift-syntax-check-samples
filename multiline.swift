import
Foundation

class Foo<T>: NSObject
    where T: Int
{
    static
    func
    bar(
        _ lhs:
        Int,
        _ rhs:
        Int
    )
    ->
    Int
    {
        return
        lhs
        +
        rhs
    }
}

print(
    Foo.bar(
        1,
        1_000
    )
)
