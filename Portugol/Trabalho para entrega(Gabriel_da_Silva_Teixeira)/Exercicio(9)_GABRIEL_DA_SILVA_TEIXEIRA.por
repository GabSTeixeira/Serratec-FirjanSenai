programa
{
	// GABRIEL DA SILVA TEIXEIRA
	funcao inicio()
	{


		inteiro vetor2[20], vetor1[10] = {50,20,90,80,60,10,70,40,30,01}


		para (inteiro i = 0; i < 10; i++) {

			vetor2[i] = vetor1[i]
		}


		imprimirVetor (vetor1, 10, verdadeiro)
		imprimirVetor (vetor2, 20, verdadeiro)
		
		
	}




	funcao imprimirVetor (inteiro vetor[], inteiro tam, logico somenteMaiorQueZero) {
		
		para (inteiro i = 0; i < tam; i++) {
			se (somenteMaiorQueZero) {
				se (vetor[i] > 0) {
					escreva(vetor[i]+" ")
				}
			} senao {
				escreva(vetor[i]+" ")	
			}
		}	
		
		escreva("\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 288; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */