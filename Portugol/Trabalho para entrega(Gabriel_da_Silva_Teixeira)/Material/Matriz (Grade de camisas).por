programa
{
	
	funcao inicio()
	{
/*
 * considere na matriz EstoqueCamisas que as colunas representam os tamanhos e
 * as linhas representam as cores, na seguinte ordem:
 * 
 * coluna 0 = P; 1 = PP; 2 = G
 * linha 0 = Branco; 1 = Preto; 2 = Azul
 * 
 */
		
		inteiro vEstoqueCamisas[6][6] //Linhas = tamanho  Colunas = cor
		cadeia vMatrizCamisa[][] = 	{	  
									{"P", "PP", "M", "G", "GG", "XG"}, 									    
									{"BRANCO", "PRETO", "AZUL", "VERMELHO", "CINZA", "ESTAMPADO"}
								}
		cadeia vEstoqueNomes[6][6]									
		caracter iniciar
		cadeia tamanho, cor
		inteiro posLinha = 0, posColuna = 0

		escreva("Iniciar contagem de produtos? (S/N)")
		leia(iniciar)

		enquanto(iniciar == 'S'){
			escreva("Informe o Tamanho: ")
			leia(tamanho)
			escreva("\nInforme a cor: ")
			leia(cor)

			para(inteiro i=0; i<6; i++){
				se(tamanho==vMatrizCamisa[0][i]){
					posLinha = i
					pare
				}
			}

			para(inteiro i=0; i<6; i++){
				se(cor==vMatrizCamisa[1][i]){
					posColuna = i
					pare
				}
			}

			escreva("\nInforme a quantidade: ")
			leia(vEstoqueCamisas[posLinha][posColuna])
			vEstoqueNomes[posLinha][posColuna] = "Camisa " + tamanho + " " + cor

			escreva("\nInformar outro produto? (S/N)")
			leia(iniciar)
			limpa()
		}
		
		para (inteiro linha = 0; linha < 6; linha++){
			para (inteiro coluna = 0; coluna < 6; coluna++){
				escreva("[", vEstoqueCamisas[linha][coluna], "]")
			}
			escreva("\n")
		}

		para (inteiro linha = 0; linha < 6; linha++){
			para (inteiro coluna = 0; coluna < 6; coluna++){
				se (vEstoqueCamisas[linha][coluna] > 0) {
					escreva(vEstoqueNomes[linha][coluna], " - Estoque = ")
					escreva(vEstoqueCamisas[linha][coluna])
					escreva("\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 612; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vEstoqueCamisas, 15, 10, 15}-{vMatrizCamisa, 16, 9, 13}-{vEstoqueNomes, 20, 9, 13}-{tamanho, 22, 9, 7}-{cor, 22, 18, 3}-{posLinha, 23, 10, 8}-{posColuna, 23, 24, 9}-{i, 34, 16, 1}-{i, 41, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */