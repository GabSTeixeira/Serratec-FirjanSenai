programa
{

	funcao inicio()
    	{
     	inteiro dia, mes, ano
		inteiro ultimoDia = 0
		
		escreva("\ndigite o dia: ")
		leia(dia)
		
		escreva("\ndigite o mes: ")
		leia(mes)
		
		escreva("\ndigite o ano: ")
		leia(ano)
		/*
		se (mes <= 0 ou mes > 12 ou ano <= 0) {
		  escreva("\nData inválida!")
		} senao {            
		  se (mes == 2) {
		      ultimoDia = 28
		  } senao se (mes == 1 ou mes == 3 ou mes == 5 ou mes == 7 ou mes == 8 ou mes == 10 ou mes == 12) {
		      ultimoDia = 31
		  } senao {
		      ultimoDia = 30
		  }
		  se (dia <= 0 ou dia > ultimoDia) {
		      escreva("\nData inválida!")
		  } senao {
		      escreva("\nData válida!")
		  }
		}*/

		escolha(ano){
			caso 0: escreva("\nData inválida!") pare
			caso contrario: {
				escolha(mes){
					caso 1:
					caso 3:
					caso 5:
					caso 7:
					caso 8:
					caso 10:
					caso 12: ultimoDia = 31 pare
					caso 2: ultimoDia = 28 pare
					caso 4: 
					caso 6:
					caso 9:
					caso 11: ultimoDia = 30 pare
					caso contrario: escreva("\nData inválida!")
				}
			}
		}
		
		se (ultimoDia == 0 e dia <= 0 ou dia > ultimoDia) {
			escreva("\nData inválida!")
		} senao {
		     escreva("\nData válida!")
		}
        
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1040; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */