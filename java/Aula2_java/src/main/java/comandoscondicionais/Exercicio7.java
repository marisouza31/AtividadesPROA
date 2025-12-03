package comandoscondicionais;

import java.util.Scanner;

public class Exercicio7 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite um nuemro inteiro: ");
        int n = entrada.nextInt();

        if (n % 2 == 0) {
            System.out.println("numero par: " + n);
        } else {
            System.out.println("numero impar:  " + n);
        }
    }
}
