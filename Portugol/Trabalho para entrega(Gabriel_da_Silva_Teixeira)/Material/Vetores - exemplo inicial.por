programa
{
	
	funcao inicio()
	{
		const inteiro TAM = 5
		inteiro ind = TAM-1
		
		cadeia vNomes[TAM]
		
					  //   0    1   2   3   4    5	  
		inteiro vNumeros[] = {10, 12, 39, 84, 15, 652}
		

		vNomes[0] = "Ricardo"
		vNomes[4] = "João"
		vNomes[2] = "Ana"

		escreva(vNomes[ind], "\n")
		escreva(vNumeros[5])
		escreva("\n\n")

		para(inteiro i = 0; i < 6; i++) {
			escreva(vNumeros[i], "\t")
		}

		escreva("\n")

		para(inteiro i = 5; i >= 0; i--) {
			escreva(vNumeros[i], "\t")
		}

		escreva("\n")
		
		para(inteiro i = 0; i < 6; i++) {
			vNumeros[i] *= 10
			escreva(vNumeros[i], "\t")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */