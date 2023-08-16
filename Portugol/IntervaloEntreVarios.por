programa
{
	/*
		2) Escrever um algoritmo que leia uma quantidade desconhecida de números e conte quantos 
		deles estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. A entrada de dados 
		deve terminar quando for lido um número negativo.
	*/
	funcao inicio()
	{

		real numero
		inteiro intervalo1 = 0, intervalo2 = 0, intervalo3 = 0, intervalo4 = 0, qtdNegativos = 0


		faca {
			
			limpa()
			escreva("\nInforme um numero: ")
			leia(numero)
			
			se (numero < 0) pare
			se (numero >= 0 e numero <= 25) intervalo1++
			se (numero >= 26 e numero <= 50) intervalo2++
			se (numero >= 51 e numero <= 75) intervalo3++
			se (numero >= 76 e numero <= 100) intervalo4++
			
		} enquanto (verdadeiro)


		escreva("\nPrograma finalizado\n")
		
		escreva("\nIntervalo um: "+intervalo1)
		escreva("\nIntervalo dois: "+intervalo2)
		escreva("\nIntervalo três: "+intervalo3)
		escreva("\nIntervalo quatro: "+intervalo4)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */