/* Atividade 3
 * 3) Fatorial: Escreva um algoritmo que leia um valor inicial A e imprima a seqüência 
 * de valores do cálculo de A! e o seu resultado. Ex: 5! = 5 X 4 X 3 X 2 X 1 = 120
 * 
 */
programa
{
	
	funcao inicio()
	{
		inteiro numero
		
		escreva("Digite um número inteiro positivo: ")
		leia(numero)
		escreva("\nFatorial(" + numero + ") = ")
		escreva(fatorial(numero, falso))
		escreva("\n")
	}

	funcao inteiro fatorial(inteiro numero, logico x) {	
		se (numero == 0)
			numero = 1	
		
		se (numero == 1) {			
			se (x) escreva(numero, " = ")
			retorne numero
		} senao {
			escreva(numero, " x ")		
			retorne numero * fatorial(numero-1, verdadeiro) 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 248; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 11, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */