package exercicios;

import java.util.Scanner;

public class exercicio10 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 0;
        String maisNovo = "";
        int idadeMaisNovo = Integer.MAX_VALUE;

        while (contador < 10) {
            System.out.println("coloque o nome da pesaos " + (contador + 1) + ":");
            String nome = entrada.nextLine();

            System.out.println("coloque a idade da pessoa " + (contador + 1) + ":");
            int idade = entrada.nextInt();
            entrada.nextLine();

            if (idade < idadeMaisNovo) {
                idadeMaisNovo = idade;
                maisNovo = nome;
            }

            contador++;
        }

        System.out.println("\nA pessoa mais nova é: " + maisNovo);
    }
}
