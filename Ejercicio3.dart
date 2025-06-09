class Empleado {

  final String nombre;
  final String puesto;
  final double salario;

  Empleado(this.nombre, this.puesto, this.salario);
}

double salarioTotal (List<Empleado> empleados){

  double total=0;
  
  for (int i = 0; i < empleados.length; i++) {
    total += empleados[i].salario;
  }

  return total;
}

double salarioPromedio (List<Empleado> empleados){
  
  if (empleados.isEmpty) return 0.0;

  return salarioTotal(empleados)/empleados.length;
}


void main(){

  List<Empleado> empleados=
  [Empleado('Maria', 'RRHH', 25000.0),
   Empleado('Jorge', 'IT', 20000.0),
   Empleado('Camila', 'Operario', 10000.0)];

   double total=salarioTotal(empleados);
   double promedio=salarioPromedio(empleados);

   print('El salario total de todos los empleados es:  $total');
   print('El salario promedio de todos los empleados es:  $promedio');  

}