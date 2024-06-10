// Created by Angel Anguiano

import Foundation
import SwiftUI

struct Botones: Hashable {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: TipoDeBoton
}

enum TipoDeBoton: Hashable{
    case number(Int)
    case operation(TipoDeOperacion)
    case result
    case reset
}

enum TipoDeOperacion: Hashable{
    case sum
    case multiplication
}

