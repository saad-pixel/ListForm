import SwiftUI

struct Album : Identifiable {
    
    var id = UUID()
    var titleName: String
    var artistName: String
    var imageName: String
    
    
}


struct ContentView: View {
    var albums: [Album] = [
        
    Album(titleName: "westside", artistName: "buba", imageName: "music.note.list"),
    
    Album(titleName: "8miles", artistName: "Emienem", imageName: "music.house.fill"),
    
    Album(titleName: "all eyes on me", artistName: "Tupak", imageName: "music.house.fill")
    
    ]
    
    
    var body: some View {

        NavigationView {
            
            List(albums) { album in
                NavigationLink(destination: AlbumDetailView(album: album)){
                    AlbumView(album: album)
                    }
                        
                    }.navigationBarTitle("Playlist")
            
            
                }
        }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AlbumView: View {
    var album: Album
    
    var body: some View {

HStack(spacing: 20) {
        
        Image(systemName: album.imageName)
    
VStack(alignment: .leading) {
        Text(album.titleName)
            .font(.largeTitle)
        Text(album.artistName)
            .font(.headline)
            .foregroundColor(Color.orange)
        
        
            }
        }
    }
}
