package exercicios;

import java.util.Scanner;

public class Exercicio5 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite o salario base: ");
        float salarioBase = entrada.nextFloat();

        float comissao = salarioBase * 0.05f;
        float salarioLiquido = salarioBase + comissao;

        System.out.printf("O salario liquido é: %.2f", salarioLiquido);
    }
}
