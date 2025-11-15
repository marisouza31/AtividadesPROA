package exercicios;

import java.util.Scanner;

public class exercicio4 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("coloque seu nome: ");
        String nome = entrada.nextLine();
        System.out.println("coloque um numero: ");
        int numero = entrada.nextInt();

        for( int i = 1; i <= numero; i++ ){
            System.out.println(i + " " + nome);
        }
    }
}
