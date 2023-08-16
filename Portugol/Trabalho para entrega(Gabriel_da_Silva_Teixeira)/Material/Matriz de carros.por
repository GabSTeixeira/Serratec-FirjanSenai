programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia carros[5][3] =  {     //  0         1          2
								{"Ford", "Vermelho", "4 portas"}, //0
								{"Fiat", "Preto", "2 portas"},    //1
								{"Volks", "Branco", "4 portas"},  //2
								{"Ford", "Preto", "2 portas"},    //3
								{"Fiat", "Branco", "4 portas"}    //4
							}

					//		0		1		2		3		4
		real precoCarros[5] = {45000.0, 50000.0, 60000.0, 46000.0, 49000.0}
		
		listarCarros(carros, precoCarros)				
	}

	funcao listarCarros(cadeia matriz[][], real precos[]) {
		inteiro opcao
		
		escreva("\n1- Marca")
		escreva("\n2- Cor")
		escreva("\n3- Portas")
		escreva("\nEscolha uma opção: ")
		leia(opcao)

		escolha(opcao){
			caso 1: listarMarcas(matriz, precos) pare
			caso 2: listarCores(matriz) pare
			caso 3: listarPortas(matriz) pare
			caso contrario: escreva("\n\nOpção inválida")
		}

		br()	
	}

	funcao listarMarcas(cadeia matriz[][], real precos[]) {
		cadeia marca
		
		escreva("\nInforme a marca: ")
		leia(marca)

		marca = txt.caixa_alta(marca)

		escreva("\n\nLista da marca ", marca)
		escreva("\n--------------------------")
		para (inteiro linha = 0; linha < 5; linha++)
			se (txt.caixa_alta(matriz[linha][0]) == marca) {
				escreva("\n", matriz[linha][0], " - ", matriz[linha][1], " - ", matriz[linha][2],
				" - ", precos[linha])
		}		
	}

	funcao listarCores(cadeia matriz[][]) {
		cadeia cor
		
		escreva("\nInforme a cor: ")
		leia(cor)

		cor = txt.caixa_alta(cor)

		escreva("\n\nLista da cor ", cor)
		escreva("\n--------------------------")
		para (inteiro linha = 0; linha < 5; linha++)
			se (txt.caixa_alta(matriz[linha][1]) == cor) {
				escreva("\n", matriz[linha][0], " - ", matriz[linha][1], " - ", matriz[linha][2])
		}		
	}

	funcao listarPortas(cadeia matriz[][]) {
		cadeia porta
		
		escreva("\nInforme a qtd portas: ")
		leia(porta)

		porta = txt.caixa_alta(porta)

		escreva("\n\nLista de portas ", porta)
		escreva("\n--------------------------")
		para (inteiro linha = 0; linha < 5; linha++)
			se (txt.caixa_alta(matriz[linha][2]) == porta) {
				escreva("\n")
				para (inteiro coluna = 0; coluna < 3; coluna++) {
					escreva(matriz[linha][coluna])
					se (coluna < 2)
						escreva(" - ")
				}
		}	
	}

	funcao br() {
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1356; 
 * @DOBRAMENTO-CODIGO = [56, 72];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */