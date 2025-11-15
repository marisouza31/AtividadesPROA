package exercicios;

import java.util.Scanner;

public class exercicio9 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int num;
        int n = 1;

        System.out.println("Digite um numero: ");
        num = entrada.nextInt();

        System.out.println("Tabuada do " + num);

        while (n <= 10){
            System.out.println(num + " X " + n + " = " + (num * n));
            n++;
        }
    }
}
