package exercicios;

import java.util.Scanner;

public class Exercicio1 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o primeiro numero inteiro: ");
        int num1 = entrada.nextInt();
        System.out.println("Digite o segundo numero inteiro: ");
        int num2 = entrada.nextInt();

        int soma = (num1 + num2);
        int sub = (num1 - num2);
        int mult = (num1 * num2);
        int div = (num1 / num2);

        System.out.println("A soma dos numeros é: "+soma);
        System.out.println("A subtração dos numeros é: "+sub);
        System.out.println("A multiplicação dos numeros é: "+mult);
        System.out.println("A divisão dos numeros é:  "+div);
    }
}
