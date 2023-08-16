programa
{	
	// Gabriel da Silva Texeira
	// 1) Escreva um aplicativo que recebe um número inteiro e mostre quantos números existem entre 1 até esse inteiro.
	// Gabriel da Silva Teixeira
	funcao inicio()
	{
		real numero
		inteiro contador = 2
		
		escreva("\nInforme o número: ")
		leia(numero)
		
		enquanto (contador < (numero - 2)) {
			contador++
		}

		se (numero <= 2) contador = 0	
		escreva("\nTem "+contador+" Numeros entre 1 e "+numero)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */