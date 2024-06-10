import SwiftUI

struct ContentView: View {

    @StateObject var ViewModel = ViewModel()

    var body: some View{
        ZStack {
            Color.black.ignoresSafeArea()
            GeometryReader {proxy in
                VStack {
                    Spacer()
                    HStack{
                        Spacer()
                        Text(ViewModel.textFieldValue)
                            .foregroundColor(.white)
                            .font(.system(size: 100, weight: .regular))
                            .frame(height: 100)
                            .padding(.trailing, 20)
                    }
                }
                botonesVerticalesStack(ViewModel : ViewModel,
                                    data: Matrix.primeraseccion,
                                    columns: Matrix.primeraseccionGrid(proxy.size.width *0.25),
                                    width: proxy,size.width)
                botonesVerticalesStack(ViewModel : ViewModel,
                                    data: Matrix.segundaseccion,
                                    columns: Matrix.segundaseccionGrid(proxy.size.width *0.25),
                                    width: proxy,size.width)
            }
        } 
        .backgroundColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}