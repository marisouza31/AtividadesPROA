package exercicios;

import java.util.Scanner;

public class Exercicio2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        float raio;

        System.out.println("Digite o raio do circulo: ");
        raio = entrada.nextFloat();

        double perimetro = 2*Math.PI*raio;
        double area = Math.PI * Math.pow(raio, 2);

        System.out.printf("area: %.2f", area);
        System.out.printf("\n perimetro: %.2f", perimetro);


    }
}
