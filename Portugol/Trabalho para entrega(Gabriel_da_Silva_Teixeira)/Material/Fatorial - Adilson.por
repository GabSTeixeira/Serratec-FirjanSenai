
// Fatorial(5) = 5! = 5 x 4 x 3 x 2 x 1 = 120

programa
{
	
	funcao inicio()
	{
		inteiro numero
		
		escreva("Digite um número inteiro maior que zero: ")
		leia(numero)
		escreva("\nFatorial(" + numero + ") = ")
		escreva(fatorial(numero))
		escreva("\n")
	}

	funcao inteiro fatorial(inteiro numero) {	
		inteiro conta = 1

		se (numero == 0) {
			conta = 1
		} senao {
			faca {
				escreva(numero, " * ")
				conta = conta * numero
				numero--
			} enquanto(numero > 1)
		}
		escreva(" 1 = ")
		retorne conta
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 356; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */