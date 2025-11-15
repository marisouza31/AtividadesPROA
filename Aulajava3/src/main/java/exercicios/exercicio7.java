package exercicios;

import java.util.Scanner;

public class exercicio7 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 0;
        int somaIdades = 0;
        double media;
        int idade;
        int numPessoas = 20;


        System.out.println("coloque a idade das 20 pessoas: ");

        while (contador < numPessoas){
            System.out.println("idade da pessoa " + (contador + 1));
            idade = entrada.nextInt();
            somaIdades = somaIdades + idade;
            contador++;
        }

        media = somaIdades / numPessoas;

        System.out.println("media: " + media);
    }
}
