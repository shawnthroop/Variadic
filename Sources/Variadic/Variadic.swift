//  Variadic.swift
//  Created by Shawn Throop on 23.06.23.

import SwiftUI

/// A protocol describing a layout for a list of Views
public typealias VariadicRoot = _VariadicView_ViewRoot

/// A type erased collection of identifable Views and traits
public typealias VariadicChildren = _VariadicView_Children


public typealias VariadicTree = _VariadicView.Tree
public typealias VariadicTraitKey = _ViewTraitKey

public extension View {
    
    func variadic<T: VariadicRoot>(_ root: T) -> some View {
        VariadicTree(root) {
            self
        }
    }
    
    func variadicTrait<T: VariadicTraitKey>(_ key: T.Type, _ value: T.Value) -> some View {
        _trait(T.self, value)
    }
}


public protocol VariadicSequence: _VariadicView_MultiViewRoot {
    @ViewBuilder func body(children: VariadicChildren) -> Body
}

public protocol VariadicContainer: _VariadicView_UnaryViewRoot {
    @ViewBuilder func body(children: VariadicChildren) -> Body
}
