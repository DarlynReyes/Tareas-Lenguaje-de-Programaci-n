class CuentaBancaria{
final String titular;
 double saldo;

CuentaBancaria(this.titular, this.saldo);

void depositarDinero(double monto){
  if (monto>0){
    saldo+=monto;
    print("Monto depositado correctamente");
  }
  else print("Monto debe de ser mayor a cero");
}

void retirarDinero(double monto){
  if(monto>0 && monto<=saldo){
    saldo-=monto;
    print("Monto retirado correctamente");
  }

  else {
    print("El monto a retirar no es correcto");
  }
}

void consultarSaldo(){
  print("Saldo actual de $titular es $saldo");
}
}

void main(){

CuentaBancaria Maria=CuentaBancaria('Maria', 1000.1);
Maria.depositarDinero(7000);
Maria.retirarDinero(100);
Maria.consultarSaldo();

CuentaBancaria Jose=CuentaBancaria('Jose', 10000);
Jose.retirarDinero(3000);
Jose.consultarSaldo();
Jose.depositarDinero(1203.33);
Jose.consultarSaldo();




}