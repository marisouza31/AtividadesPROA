package rotinabancaria;

import java.util.Scanner;
import java.util.Random;

public class Conta {
    int numero_conta;
    String titular_conta;
    double saldo;

    Scanner entrada = new Scanner(System.in);

    public Conta(String nome_titular, double saldo_inicial){
        this.titular_conta = nome_titular;
        this.saldo = saldo_inicial;

        Random gerador_numero = new Random();
        this.numero_conta = gerador_numero.nextInt(1000);

    }

    public void VerSaldo(){
        System.out.println("O numero da conta é: "+ numero_conta);
        System.out.println("O titular da conta é: "+ titular_conta);
        System.out.println("O saldo atual é: "+ saldo);
    }

    public void Saque(double valor_saque){
        if(saldo >= valor_saque){
            saldo = saldo - valor_saque;
            System.out.println("O saldo atual é: "+ saldo);
        }else{
            System.out.println("Saldo insuficiente");
    }
}
public void Deposito(double valor_deposito){
        if(valor_deposito <=0){
            System.out.println("deposito invalido");
        }else{
            saldo = saldo + valor_deposito;
            System.out.println("o saldo atual é: "+ saldo);
        }
    }

    public void Iniciar(){
        int opcao;
        do{
            Exibir_menu();
            opcao = entrada.nextInt();
            Escolher_funcao(opcao);
        }while(opcao != 5);
    }

    public void Emprestimo(){
        if(saldo >= 5000){
            System.out.println("emprestimo aprovado!");
            saldo -= 5000;
            System.out.println("saldo atual com o emprestimo: "+ saldo);
        }else{
            System.out.println("emprestimo negado!");
        }
    }
    public void Exibir_menu(){
        System.out.println("Bem vindo ao Proa Bank");
        System.out.println("Escolha a sua operação desejada:");
        System.out.println("1 - Ver Saldo");
        System.out.println("2 - Sacar");
        System.out.println("3 - Depositar");
        System.out.println("4 - Emprestimo");
        System.out.println("5 - Finalizar");
    }

    public void Escolher_funcao(int opcao){
        double saque;
        double deposito;

        switch(opcao){
            case 1: VerSaldo();
            break;
            case 2:
                System.out.println("digite o valor a ser sacado:");
                saque = entrada.nextDouble();
                Saque(saque);
                break;
            case 3:
                System.out.println("digite o valor a ser depositado:");
                deposito = entrada.nextDouble();
                Deposito(deposito);
                break;
            case 4:
                Emprestimo();
                break;
            case 5:
                System.out.println("operaççao finalizada, obrigado!");
                break;
            default:
                System.out.println("opção invalida.");
        }
    }
}
