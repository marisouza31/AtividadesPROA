package testandovariaveis;

public class Exemplo5 {
    public static void main(String[] args) {
        int mes = 5;
        String nome_mes;

        switch(mes){
            case 1: nome_mes = "Janeiro"; break;
            case 2: nome_mes = "Fevereiro"; break;
            case 3: nome_mes = "Março"; break;
            case 4: nome_mes = "Abril"; break;
            case 5: nome_mes = "Maio"; break;
            case 6: nome_mes = "Junho"; break;
            case 7: nome_mes = "Julho"; break;
            case 8: nome_mes = "Agosto"; break;
            case 9: nome_mes = "Setembro"; break;
            case 10: nome_mes = "Outubro"; break;
            case 11: nome_mes = "Novembro"; break;
            case 12: nome_mes = "Dezembro"; break;
            default: nome_mes = "Mes invalido!";
        }
        System.out.println("O mes escolhido é: " + nome_mes);
    }
}
