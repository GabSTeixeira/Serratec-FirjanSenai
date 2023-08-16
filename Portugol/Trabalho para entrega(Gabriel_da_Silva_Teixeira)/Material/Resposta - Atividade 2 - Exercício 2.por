/*
 * 2) Faça um programa que peça uma nota, entre zero e dez. Mostre uma mensagem caso o valor 
 * seja inválido e continue pedindo até que o usuário informe um valor válido.
 * 
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro nota

		faca {
			limpa()
			escreva("\nInforme uma nota entre 0 e 10: ")
			leia(nota)

			se (nota < 0 ou nota > 10) {
				escreva("\nValor fora do intervalo válido.")
				u.aguarde(2000)
			}
				              
		} enquanto(nota < 0 ou nota > 10)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 471; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */