package exercicios;

import java.util.Scanner;

public class exercicio8 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 0;
        int maiorIdade = 0;
        int totalIdades = 20;
        int idade;

        System.out.println("coloque o idade das 20 pessoas: ");

        while(contador < totalIdades){
            System.out.println("idade da pessoa " + (contador + 1));
            idade = entrada.nextInt();

            if(idade > maiorIdade){
                maiorIdade++;
            }
            contador++;
        }
        System.out.println("numero de dpessoas maiores de iddes: " + maiorIdade);
    }
}
