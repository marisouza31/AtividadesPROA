package exercicios;

import java.util.Scanner;

public class Exercicio10 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o valor do salario: ");
        float salario = entrada.nextFloat();

        float novoSalario = salario + (salario * 0.15f);
        System.out.printf("o novo salario com aumento é de:  %.2f", novoSalario);
    }
}
