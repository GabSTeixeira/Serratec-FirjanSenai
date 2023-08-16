/*  Atividade 3
 *  2) Escrever um algoritmo que leia uma quantidade desconhecida de números 
 *  e conte quantos deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. 
 *  A entrada de dados deve terminar quando for lido um número negativo.
 */

programa
{
	
	funcao inicio()
	{
		inteiro numero
		inteiro int_0_25 = 0, int_26_50 = 0, int_51_75 = 0, int_76_100 = 0, outros = 0
		
		faca {
			escreva("Escreva um número: ")
			leia(numero)

			se (numero < 0) pare

			se (numero <= 25)
				int_0_25++ 
			senao se (numero <= 50)
				int_26_50++
			senao se (numero <= 75)
				int_51_75++
			senao se (numero <= 100) // números maiores que 100 não entram
				int_76_100++		
			senao 
				outros++	
		} enquanto (numero >= 0)

		escreva("\nQuantidade de números no intervalo 0-25  : ", int_0_25)
		escreva("\nQuantidade de números no intervalo 26-50 : ", int_26_50)
		escreva("\nQuantidade de números no intervalo 51-75 : ", int_51_75)
		escreva("\nQuantidade de números no intervalo 76-100: ", int_76_100)
		escreva("\nQuantidade de números no intervalo >100: ", outros, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 572; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 12, 10, 6}-{int_0_25, 13, 10, 8}-{int_26_50, 13, 24, 9}-{int_51_75, 13, 39, 9}-{int_76_100, 13, 54, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */