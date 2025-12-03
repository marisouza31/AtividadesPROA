package comandoscondicionais;

import java.util.Scanner;

public class Exercicio1 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("Digite um numero: ");
        int numero = entrada.nextInt();

        if(numero % 10 == 0){
            System.out.println("o nuemro é divisivel por 10");
        }else if(numero % 5 == 0){
            System.out.println("o nuemro é divisivel por 5");
        }else if(numero % 2 == 0){
            System.out.println("o nuemro é divisivel por 2");
        }else{
            System.out.println("o nuemro nao é divisivel por nenhum.");
        }
    }
}
