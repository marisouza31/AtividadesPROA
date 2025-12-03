package comandoscondicionais;

import java.util.Scanner;

public class Exercicio5 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        int prato = 0, sobremesa = 0, bebida = 0;
        int caloriasPrato = 0, caloriasSobremesa = 0, caloriasBebida = 0;

        System.out.println("Escolha seu praato:");
        System.out.println("1 - Vegetariano (180 cal)");
        System.out.println("2 - Peixe (230 cal)");
        System.out.println("3 - Frango (250 cal)");
        System.out.println("4 - Carne (350 cal)");
        System.out.print("Opção: ");
        prato = entrada.nextInt();

        switch (prato) {
            case 1: caloriasPrato = 180; break;
            case 2: caloriasPrato = 230; break;
            case 3: caloriasPrato = 250; break;
            case 4: caloriasPrato = 350; break;
            default: System.out.println("opcao de prato invalida"); return;
        }

        System.out.println("\nEscolha sua sobremesa:");
        System.out.println("1 - Abacaxi (75 cal)");
        System.out.println("2 - Sorvete diet (110 cal)");
        System.out.println("3 - Mouse diet (170 cal)");
        System.out.println("4 - Mouse chocolate (200 cal)");
        System.out.print("Opção: ");
        sobremesa = entrada.nextInt();

        switch (sobremesa) {
            case 1: caloriasSobremesa = 75; break;
            case 2: caloriasSobremesa = 110; break;
            case 3: caloriasSobremesa = 170; break;
            case 4: caloriasSobremesa = 200; break;
            default: System.out.println("opcao de sobremesa invalida!"); return;
        }

        // Escolha da bebida
        System.out.println("\nEscolha sua bebida:");
        System.out.println("1 - Chá (20 cal)");
        System.out.println("2 - Suco de laranja (70 cal)");
        System.out.println("3 - Suco de melão (100 cal)");
        System.out.println("4 - Refigerante diet (65 cal)");
        System.out.print("Opção: ");
        bebida = entrada.nextInt();

        switch (bebida) {
            case 1: caloriasBebida = 20; break;
            case 2: caloriasBebida = 70; break;
            case 3: caloriasBebida = 100; break;
            case 4: caloriasBebida = 65; break;
            default: System.out.println("opcao de bebida inbalida!"); return;
        }

        int totalCalorias = caloriasPrato + caloriasSobremesa + caloriasBebida;

        System.out.println("\nTotal de calorias: " + totalCalorias + " cal");

    }
}
