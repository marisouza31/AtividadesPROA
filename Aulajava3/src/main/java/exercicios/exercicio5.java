package exercicios;

import java.util.Scanner;

public class exercicio5 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int soma =0;
        int numero;

        for (int n = 1; n<=10; n++){
            System.out.println("coloque o " + n + " numero: ");
            numero = entrada.nextInt();
            soma = soma + numero;
        }
        System.out.println("a soma dos numeros: " + soma);
    }
}
