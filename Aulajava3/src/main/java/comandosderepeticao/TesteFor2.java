package comandosderepeticao;

import java.util.Scanner;

public class TesteFor2 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite um numero: ");
        int tabuada = entrada.nextInt();

        for (int n = 1; n<=10; n++){
            int resultado = tabuada * n;
            System.out.println(tabuada + "X" + n + "=" + resultado);
        }
    }
}
