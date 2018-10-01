func allItemsMatch<C1: Container, C2: Container> (_ someContainer: C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item: Equatable {
        return true
}

protocol SuffixableContainer: Container {
    associatedtype Suffix: SuffixableContainer where Suffix.Item == Item
    func suffix(_ size: Int) -> Suffix
}

final fileprivate class TimerSink<O: ObserverType> : Sink<O> where O.E : RxAbstractInteger  {
    typealias Parent = Timer<O.E>
    
    private let _parent: Parent
    
    init(parent: Parent, observer: O, cancel: Cancelable) {
        _parent = parent
        super.init(observer: observer, cancel: cancel)
    }
    
    func run() -> Disposable {
        return _parent._scheduler.schedulePeriodic(0 as O.E, startAfter: _parent._dueTime, period: _parent._period!) { state in
            self.forwardOn(.next(state))
            return state &+ 1
        }
    }
}
