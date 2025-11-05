package exercicios;

import java.util.Scanner;

public class Exercicio9 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite sua idade: ");
        int idade = entrada.nextInt();
        System.out.println("Digite os meses: ");
        int meses = entrada.nextInt();
        System.out.println("Digite os dias: ");
        int dias = entrada.nextInt();

        int total = (idade * 365) + (meses * 30) + dias;
        System.out.println("Dias de vida: " + total);
    }
}
