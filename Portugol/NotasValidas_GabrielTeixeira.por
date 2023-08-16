programa
{
	/*	Gabriel da Silva Teixeira
	*	2) Faça um programa que peça uma nota, entre zero e dez. 
	*	Mostre uma mensagem caso o valor seja inválido e continue pedindo até que o usuário informe um valor válido.
	*/
	funcao inicio()
	{

		real nota
		logico continuar = verdadeiro
		
		faca {

			escreva("\nInforme uma nota(0 a 10): ")
			leia(nota)
			
			se (nota >= 0 e nota <= 10) {
				
				escreva("\nNota valida")			
				continuar = falso
				//pare	
			} senao escreva("\nNota invalida") 			
		} enquanto (continuar)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 505; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */