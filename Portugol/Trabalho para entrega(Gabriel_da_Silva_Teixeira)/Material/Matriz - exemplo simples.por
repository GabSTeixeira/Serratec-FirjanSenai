programa
{
	
	funcao inicio()
	{             // 3 , 5
		inteiro matrizInt[][] = {
								{10, 20, 30, 40, 50},
								{20, 60, 90, 120, 8},
								{1, 2, 3, 4, 5}
							}
		inteiro matrizInt2[3][5]

		matrizInt[2][0] = 1000
		matrizInt2[2][0] = 56

		inteiro valor
		escreva("Informe um valor: ")
		leia(matrizInt2[1][3])

		//matrizInt2[1][3] = valor

		para (inteiro linha = 0; linha < 3; linha++) {
			matrizInt2[linha][4] = linha * 10
		}

		para (inteiro coluna = 0; coluna < 5; coluna++) {
			matrizInt2[0][coluna] = 100
		}

		para (inteiro linha = 0; linha < 3; linha++) {
			para (inteiro coluna = 0; coluna < 5; coluna++) {
				matrizInt2[linha][coluna] = linha + coluna
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 330; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizInt, 6, 10, 9}-{matrizInt2, 11, 10, 10}-{linha, 22, 16, 5}-{coluna, 26, 16, 6}-{linha, 30, 16, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */