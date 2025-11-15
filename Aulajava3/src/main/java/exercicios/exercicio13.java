package exercicios;

import java.util.Scanner;

public class exercicio13 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 0;
        int numIntervalo = 0;

        do{
            System.out.println("Digite um numero: ");
            int num = entrada.nextInt();

            if(num >= 0 && num <= 100){
                numIntervalo++;
            }
            contador++;
        }while(contador<20);
        System.out.println("A qtde de numeros entre 0 e 100 é: " + numIntervalo);
    }
}
