public extension Array {
    /// Accessor for the element at given index.
    ///
    /// - parameter index: Index of the element.
    /// - returns: The element at index <index> or `nil` if index is out of bound.
    public subscript(safe index: Int) -> Element? {
        return indices ~= index ? self[index] : .none
    }
}

