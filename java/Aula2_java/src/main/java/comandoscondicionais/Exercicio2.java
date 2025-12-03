package comandoscondicionais;

import java.util.*;

    public class Exercicio2 {
        public static void main(String[] args) {

            Scanner entrada = new Scanner(System.in);

            System.out.println("Entre com o seu peso");
            float peso = entrada.nextFloat();

            System.out.println("Entre com a sua altura");
            float altura = entrada.nextFloat();

            float imc = peso/(altura * altura);

            System.out.println("Seu IMC é de: " + imc);

            if(imc < 18.5){
                System.out.println("Vc está abaixo do peso!");
            }else if((imc >=18.5) && (imc <=24.9)){
                System.out.println("Vc está no peso ideal");
            }else if((imc >=25) && (imc <=29.9)){
                System.out.println("Vc está levemente acima do peso");
            }else if((imc >=30) && (imc <=34.9)){
                System.out.println("Vc está na obesidade grau I");
            }else if((imc >=35) && (imc <=39.9)){
                System.out.println("Vc está na obesidade grau II");
            }else{
                System.out.println("Vc está na obesidade morbida");
            }

        }
    }
