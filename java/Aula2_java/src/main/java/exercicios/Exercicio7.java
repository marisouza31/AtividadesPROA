package exercicios;

import java.util.Scanner;

public class Exercicio7 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digiite o deposito mensal: ");
        float mensal = entrada.nextFloat();
        System.out.println("Digiite a taxa de juros mensal: ");
        float taxa = entrada.nextFloat() / 100f;

        float montante = 0f;

        for(int i= 1; i <= 12; i++){
            montante = (montante + mensal) * (1 + taxa);
        }

        System.out.printf("Apos 12 meses, o montante é: %.2f", montante);


    }
}
