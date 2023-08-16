/*
 * Crie um programa que leia 3 números e informe qual número é o maior e qual é o menor
 * 
 */

programa
{
	
	funcao inicio()
	{
		inteiro numero1, numero2, numero3

		numero1 = 30
		numero2 = 20
		numero3 = 10

		se(numero1 > numero2 e numero1 > numero3) {
			escreva("Numero 1 é maior") 
		} senao {
			se(numero2 > numero3) {
				escreva("Numero 2 é maior") 
			} senao
				escreva("Numero 3 é maior") 
		}

		escreva("\n")

		se(numero1 < numero2 e numero1 < numero3) {
			escreva("Numero 1 é menor") 
		} senao {
			se(numero2 < numero3) {
				escreva("Numero 2 é menor") 
			} senao
				escreva("Numero 3 é menor") 
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 414; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */