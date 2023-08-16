programa
{

	//GABRIEL DA SILVA TEIXEIRA	
	funcao inicio()
	{
		inteiro numero
		inteiro i=0, j=0

		escreva("\nInforme um numero: ")
		leia(numero)

		para(i = 1; i<=numero; i++){
			escreva("\n")
			para(j=1;j<=i;j++){ // só mudei a condição de saida do loop de (i <= i) para (j <= i)
				escreva(j)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */