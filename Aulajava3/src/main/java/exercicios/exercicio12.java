package exercicios;

import java.util.Scanner;

public class exercicio12 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 1;
        int contPar = 0;

        do{
            System.out.println("Digite um numero: ");
            int num =  entrada.nextInt();

            if(num % 2 == 0){
                contPar++;
            }
            contador++;
        }while(contador<=20);
        System.out.println("A qtde de numeros pares é: " + contPar);
    }
}
