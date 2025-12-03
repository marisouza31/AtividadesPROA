package testandovariaveis;

import java.util.Scanner;

public class Exemplo3 {
    static void main(String[] args) {
        float nota1;
        float nota2;
        float nota3;

        Scanner entrada = new Scanner(System.in);
        System.out.println("Digite a primeira nota: ");
        nota1 = entrada.nextFloat();
        System.out.println("Digite a segunda nota: ");
        nota2 = entrada.nextFloat();
        System.out.println("Digite a terceira nota: ");
        nota3 = entrada.nextFloat();

        float media = (nota1 + nota2 + nota3) / 3;

        System.out.printf("A media das notas é: %.2f", media);

        if(media >=6){
            System.out.println("vc esta aprovado");
        }else if(media >=5){
            System.out.println("vc esta de recuperação");
        }else{
            System.out.println("vc esta aprovado");
        }

    }
}
