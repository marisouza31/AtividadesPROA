package exercicios;

import java.util.Scanner;

public class exercicio6 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int somaIdades = 0;
        int numPessoas = 20;

        System.out.println("coloque a idade de "+ numPessoas + " pessoas: ");
        for(int i = 0; i < numPessoas; i++){
            System.out.println("idade: ");
            int idade = entrada.nextInt();
            somaIdades = somaIdades + idade;
        }
        System.out.println("a soma das idades é: " + somaIdades);
    }
}
