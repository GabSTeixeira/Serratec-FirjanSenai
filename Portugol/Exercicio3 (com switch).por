programa
{
	
	funcao inicio()
	{
		inteiro dia, mes, ano
	
		escreva("\ndia: ")
		leia(dia)
		escreva("\nmês: ")
		leia(mes)
		escreva("\nano: ")
		leia(ano)

		se (ano > 0 e dia > 0 e dia <= 31) {
			escolha (mes) {
				caso 2:
					se(dia <= 28) escreva("\ndata valida")
					senao escreva("\ndata invalida")				
					pare
				caso 4:
					se(dia <= 30) escreva("\ndata valida")
					senao escreva("\ndata invalida")
					pare
				caso 6:
					se(dia <= 30) escreva("\ndata valida")
					senao escreva("\ndata invalida")
					pare
				caso 9:
					se(dia <= 30) escreva("\ndata valida")
					senao escreva("\ndata invalida")
					pare
				caso 11:
					se(dia <= 30) escreva("\ndata valida")
					senao escreva("\ndata invalida")
					pare
				caso contrario:
					se (mes > 0 e mes < 13) escreva("\ndata valida")
					senao escreva("\ndata invalida")
			}
		} senao
			escreva("\ndata invalida")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */