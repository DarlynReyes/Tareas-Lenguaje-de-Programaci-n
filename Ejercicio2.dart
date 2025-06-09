void main(){

List<String> Animales =["Perro, Gato, Loro,Raton, Mono, Oso"];

List<String> ListaNueva =  Animales.toSet().toList();

print ("Lista 1: $Animales");
print("Lista copia: $ListaNueva");
}