package comandoscondicionais;

import java.util.Scanner;

public class Exercicio3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o saldo medio do cliente:");
        double saldoMedio = entrada.nextDouble();

        double credito;

        if (saldoMedio <= 500){
            credito = 0;
        }else if(saldoMedio <= 1000){
            credito = saldoMedio * 0.30;
        }else if(saldoMedio <= 3000){
            credito =  saldoMedio * 0.40;
        }else {
            credito = saldoMedio * 0.50;
        }

        System.out.printf("Saldo medio:  %.2f%n", saldoMedio);
        System.out.printf("Credito:  %.2f%n", credito);
    }
}
