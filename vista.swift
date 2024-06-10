import SwiftUI

struct botonesVerticales: View{

    @ObservableObject var ViewModel : ViewModel

    let data: [Botones]
    let columns: [GridItem]
    let width: CGFloat

    init(ViewModel : ViewModel,
        data: [Botones],
        columns: [GridItem],
        width: CGFloat) {
            self.ViewModel = ViewModel
            self.data = data
            self.columns = columns
            self.width = width
        }

    var body: some View{
        LazyVGrid(columns: columns, spacing: 12){
            ForEach(data, id: \.self) {model in
            Button(action: {
                ViewModel.logic(key. model)
            }, label: {
                if model.isDoubleWidth {
                    Rectangle()
                    .foregroundColor(model.backgroundColor)
                    .overlay(
                        Text(model.title)
                            .font(.largeTitle)
                            .offset(x: width *0.22 * 0.5)
                    )
                    .frame(width: width * 2 * 0.22,
                        height: width * 0.22)
                }
                else {
                    Text(model.title)
                        .font(.largeTitle)
                        .frame(width: width * 0.22,
                                height: width * 0.22)
                }
            })
            .foregroundColor(model.textColor)
            .background(model.backgroundColor)
            .cornerRadius(width * 0.25)
            }
        }
        .frame(width: width)
    }
}

struct botonesVerticalesStack_Previews: PreviewProvider {
    static var previews: some View{
        botonesVerticalesStack(ViewModel : ViewModel()
                            data: Matrix.primeraseccion,
                            columns: Matrix.primeraseccionGrid(390 * 0.25),
                            width: 390)
                            .previewLayout(.sizeThatFits)
        botonesVerticalesStack(ViewModel : ViewModel()
                            data: Matrix.segundaseccion,
                            columns: Matrix.segundaseccionGrid(390 * 0.25),
                            width: 390)
                            .previewLayout(.sizeThatFits)
    }
}