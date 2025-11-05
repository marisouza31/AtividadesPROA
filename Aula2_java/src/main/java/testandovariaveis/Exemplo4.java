package testandovariaveis;

import java.util.Scanner;

public class Exemplo4 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o seu peso em Kg: ");
        float peso = entrada.nextFloat();
        System.out.println("Digite a sua altura em metros: ");
        float altura = entrada.nextFloat();

        float imc = peso / (altura * altura);

        System.out.printf("Seu IMC é: %.2f", imc);
    }
}
