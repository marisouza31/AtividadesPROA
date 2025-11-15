package exercicios;

import java.util.Scanner;

public class exercicio11 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 0;
        int maiorOito = 0;

        do{
            System.out.println("Digite um numero: ");
            int num = entrada.nextInt();
            if (num > 8){
                maiorOito++;
            }
            contador++;
        }while(contador<20);
        System.out.println("a qtde de nuemros maiores que oito é: " + maiorOito);
    }
}
