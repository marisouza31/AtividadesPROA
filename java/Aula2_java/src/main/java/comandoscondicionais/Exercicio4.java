package comandoscondicionais;

import java.util.Scanner;

public class Exercicio4 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        System.out.println("digite sua idade: ");
        int idade = entrada.nextInt();

        if(idade < 16){
            System.out.println("nao leitor");
        }else if((idade >= 18) && (idade < 65)){
            System.out.println("eleitor obrigatorio");
        }else{
            System.out.println("eleitor facultativo");
        }
    }
}
