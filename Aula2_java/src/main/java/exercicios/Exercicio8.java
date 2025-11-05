package exercicios;

import java.util.Scanner;

public class Exercicio8 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite um numero: ");
        int num1 = entrada.nextInt();

        for(int i=1; i <= 10; i++){
            int result = num1*i;
            System.out.println(num1 + "x" + i + "=" + result);
        }

    }
}
