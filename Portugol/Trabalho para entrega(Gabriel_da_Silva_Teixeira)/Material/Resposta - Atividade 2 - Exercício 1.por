/*
 * 1) Escreva um aplicativo que recebe um número inteiro e mostre os números inteiros que
 * existem entre 1 até esse inteiro.
 * 
 */  
programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro numero, contador = 2

		faca {
			limpa()
			escreva("Informe um número maior que 1: ")
			leia(numero)

			se (numero <= 1) {
				escreva("Número inválido!")
				u.aguarde(1500)
			}			
		} enquanto(numero <= 1)

		escreva("\nNúmeros entre 1 e ", numero, ": ")
		
		enquanto (contador < numero) {
			escreva(contador, "  ")
			contador++
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */