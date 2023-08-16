programa
{
	/*
		3) Fatorial: Escreva um algoritmo que leia um valor 
		inicial A e imprima a seqüência de valores do cálculo de A! e o 
		seu resultado. Ex: 5! = 5 X 4 X 3 X 2 X 1 = 120

		Gabriel Teixeira
		
	*/

	funcao cadeia fatorial (inteiro inputNumero) {
		
		inteiro resultado = inputNumero
		cadeia retorno = inputNumero+"! = "
		
		para (inteiro i = inputNumero; i > 0; i--) {
			se (i == 1) {
				retorno = retorno + (i)
				pare			
			}
			resultado = resultado * (i-1)
			retorno = retorno + (i + " x ")		
		}
		se (inputNumero == 0) resultado = 1
		retorne retorno + (" = "+resultado)
	}


	funcao inteiro fatorialRecursivo (inteiro inputNumero) {
		retorne conta(inputNumero -1, inputNumero * (inputNumero-1))	
	}

	funcao inteiro conta (inteiro inputNumero, inteiro resultado) {
		inteiro resultadoAtual = resultado
		cadeia parada
		se (inputNumero <= 1) {
			escreva("InputNum: "+inputNumero)
			escreva("\nResultado: "+resultado)
			escreva("\nparei")
			leia(parada)
			
			retorne resultado
		} senao {
			resultadoAtual = resultadoAtual * (inputNumero - 1)
			
			escreva("InputNum: "+inputNumero)
			escreva("\nResultado: "+resultado)
			escreva("\nparei")
			leia(parada)
			retorne conta(inputNumero -1, resultadoAtual)	
		}
	}

	
	funcao inicio()
	{

		inteiro numero

		escreva("\nInforme um numero: ")
		leia(numero)

		//escreva(fatorial(numero))
		escreva(fatorialRecursivo(numero))

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {inputNumero, 12, 33, 11}-{resultado, 14, 10, 9}-{retorno, 15, 9, 7}-{resultadoAtual, 35, 10, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */