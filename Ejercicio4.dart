class Libro {

  final String titulo;
  final String autor;
  final int anioPublicacion;

  Libro(this.titulo, this.autor, this.anioPublicacion);
}

class Biblioteca{
  List<Libro> Libros=[];

  void agregar(Libro Libro){
      Libros.add(Libro);
  }

  void eliminar(String titulo){
    for (int i = 0; i < Libros.length; i++) {
      if (Libros[i].titulo == titulo) {
        Libros.removeAt(i);
        print("Libro eliminado: $titulo");
        return;
      }
    }
    print("Libro no encontrado: $titulo");
  }
  
  void buscarPorAutor(String autor) {
  print("Libros de : $autor");
  for (int i = 0; i < Libros.length; i++) {
    if (Libros[i].autor == autor) {
      print("${Libros[i].titulo} - ${Libros[i].anioPublicacion}");
    }
  }
  }


 void ordenarPorAnio(){
  print("Libros ordenados por año:");
  for (int anio = 1900; anio <= 2025; anio++) {
    for (int i = 0; i < Libros.length; i++) {
      if (Libros[i].anioPublicacion == anio) {
        print("${Libros[i].anioPublicacion} - ${Libros[i].titulo}");
      }
    }
  }
 }

}
 
void main(){
Biblioteca biblioteca =Biblioteca();

biblioteca.agregar(Libro("El Principito", " Antoine de Saint-Exupéry", 1943));
biblioteca.agregar(Libro("Cien años de soledad", "Gabriel Garcia Marquez", 1967));
biblioteca.agregar(Libro("Carrie", "Sthephen King", 1974));
biblioteca.agregar(Libro("Orgullo y prejuicio", "Jane Austen", 1813));

biblioteca.ordenarPorAnio();

biblioteca.buscarPorAutor('Jane Austen');

biblioteca.eliminar('Carrie');

}