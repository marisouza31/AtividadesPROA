package exercicios;

import java.util.Scanner;

public class exercicio15 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int num;
        int soma = 0;

        System.out.println("coloque uma seuqencia de numeros! O numero negativo encerra o programa: ");

        do{
            System.out.println("Digite um numero: ");
            num = entrada.nextInt();

            if(num >= 0){
                soma += num;
            }
        }while(num >= 0);

        System.out.println("a soma dos numeros é: " + soma);
    }
}
