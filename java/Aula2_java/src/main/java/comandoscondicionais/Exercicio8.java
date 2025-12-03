package comandoscondicionais;

import java.util.Scanner;

public class Exercicio8 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.print("Digite um valor para A: ");
        int A = entrada.nextInt();

        System.out.print("Digite um valor para B: ");
        int B = entrada.nextInt();

        System.out.print("Digite um valor para C: ");
        int C = entrada.nextInt();

        int maior, meio, menor;

        if (A >= B && A >= C) {
            maior = A;
            if (B >= C) {
                meio = B;
                menor = C;
            } else {
                meio = C;
                menor = B;
            }
        } else if (B >= A && B >= C) {
            maior = B;
            if (A >= C) {
                meio = A;
                menor = C;
            } else {
                meio = C;
                menor = A;
            }
        } else {
            maior = C;
            if (A >= B) {
                meio = A;
                menor = B;
            } else {
                meio = B;
                menor = A;
            }
        }

        System.out.println("valores em ordem decrescente: " + maior + ", " + meio + ", " + menor);

    }
}
