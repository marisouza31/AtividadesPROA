package exercicios;

import java.util.Scanner;

public class Exercicio4 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite a primeira nota: ");
        float nota = entrada.nextFloat();
        System.out.println("Digite a segunda nota: ");
        float nota2 = entrada.nextFloat();
        System.out.println("Digite a terceira nota: ");
        float nota3 = entrada.nextFloat();

       float media = ((nota * 2) + (nota2 * 3) + (nota3 * 5)) / 10;

        System.out.printf("Media final: %.2f", media);


    }
}
