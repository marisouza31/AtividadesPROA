package exercicios;

import java.util.Scanner;

public class Exercicio6 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o primeiro numero: ");
        int num1 = entrada.nextInt();
        System.out.println("Digite o segundo numero: ");
        int num2 = entrada.nextInt();

        System.out.println("Antes da troca:");
        System.out.println("numero 1: "+num1);
        System.out.println("numero 2: "+num2);

        int auxiliar;
        auxiliar = num1;
        num1 = num2;

        System.out.println("Depois da troca:");
        System.out.println("numero 1: "+num1);
        System.out.println("numero 2: "+num2);
    }
}
