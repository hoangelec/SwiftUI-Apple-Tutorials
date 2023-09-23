import SwiftUI


struct CategoryHome: View {
    var modelData: ModelData = ModelData()
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(.init())
                ForEach(modelData.categories.keys.sorted(), id: \.self) {
                    categoryName in
                    CategoryRow(categoryName: categoryName, items: modelData.categories[categoryName] ?? [])
                }
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
