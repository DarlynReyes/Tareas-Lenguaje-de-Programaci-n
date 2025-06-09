void main() {
  int cantidad = 15;
  List<int> f = [];

  for (int i = 0; i < cantidad; i++) {
    if (i == 0) {
      f.add(0);
    } else if (i == 1) {
      f.add(1);
    } else {
      int n = f[i - 1] + f[i - 2];
      f.add(n);
    }
  }

  print("Los primeros $cantidad números de Fibonacci son:");
  print(f);
}