import
    Foundation

class Foo:
    NSObject
{
    static
    func
    bar(
        _ lhs:
            Int,
        _ rhs:
            Int
    ) ->
        Int
    {
        return lhs + rhs
    }
}

print(
    Foo.bar(
        1,
        1_001
    )
)
