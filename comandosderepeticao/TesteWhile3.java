package comandosderepeticao;

import java.util.Scanner;

public class TesteWhile3 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int pares = 0;
        int impares = 0;
        int n =1;

        while(n<=10){
            System.out.println("Digite um numerp: ");
            int numero = entrada.nextInt();

            if(numero%2==0){
                pares++;
            }else{
                impares++;
            }
            n++;
        }

        System.out.println("qtde de numeros pares: "+pares);
        System.out.println("qtde de numeros impares: "+impares);
    }
}
