package exercicios;

import java.util.Scanner;

public class exercicio14 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int contador = 0;
        int contador2 = 0;
        int contador3 = 0;
        int n = 0;

        do{
            System.out.println("Digite um numero: ");
            int num = entrada.nextInt();

            if(num>= 0 && num<=100){
                contador++;
            }else if(num>=101 && num<=200){
                contador2++;
            }else if(num>200){
                contador3++;
            }
            n++;
        }while(n<20);
        System.out.println("numeros enter 0 e 100: "+contador);
        System.out.println("numeros entre 101 e 200: "+contador2);
        System.out.println("numeros maiores que 200: "+contador3);
    }
}
