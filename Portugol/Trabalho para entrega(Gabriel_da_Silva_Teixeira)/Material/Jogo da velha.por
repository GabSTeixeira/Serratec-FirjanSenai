programa
{
	inclua biblioteca Texto --> t
	
	inteiro matriz[3][3]
	inteiro vezDeQuem = 1
	
		
	funcao escreval(cadeia texto)
	{
		escreva(texto, "\n")
	}
	
	funcao inicio()
	{
		cadeia pre = ""
		
		enquanto(verdadeiro)
		{
				
			escreval("    -A---B---C-")
			escreval("1 |  "+ eX(matriz[0][0])+" | "+ eX(matriz[0][1])+" | "+ eX(matriz[0][2]))
			escreval("    -----------")
			escreval("2 |  "+ eX(matriz[1][0])+" | "+ eX(matriz[1][1])+" | "+ eX(matriz[1][2]))
			escreval("    -----------")
			escreval("3 |  "+ eX(matriz[2][0])+" | "+ eX(matriz[2][1])+" | "+ eX(matriz[2][2]))

			escreva("Agora e a vez do [ "+ eX(vezDeQuem) +" ] digite a letra e o numero : ")
			leia(pre)

			se(pre == "exit")
				pare
				
			enquanto(nao preencher(pre))
			{
				escreva("Lugar está ocupado [ "+ eX(vezDeQuem) +" ] digite novamente: ")
				leia(pre)
			}
			
			se(vencedor())
			{
				limpa()
				escreval("Parabéns o [ "+ eX(vezDeQuem) +" ] venceu! ")
				pare
			}

			se(velha())
			{
				limpa()
				escreval("Jogo terminou empatado! Deu Velha! ")
				pare
			}
			
			se(vezDeQuem == 1)
				vezDeQuem = 2
			senao
				vezDeQuem = 1
				
			limpa()
			
		}
		
	}

	funcao logico preencher(cadeia pre)
	{
			cadeia lpre

			lpre = t.caixa_alta(pre)
			
			se(lpre == "A1" e matriz[0][0] == 0)
			{
				matriz[0][0] = vezDeQuem
				retorne verdadeiro
			}
			
			se(lpre == "A2" e matriz[1][0] == 0)
			{
				matriz[1][0] = vezDeQuem
				retorne verdadeiro
			}
			
			se(lpre == "A3" e matriz[2][0] == 0)
			{
				matriz[2][0] = vezDeQuem
				retorne verdadeiro
			}

			se(lpre == "B1" e matriz[0][1] == 0)
			{
				matriz[0][1] = vezDeQuem
				retorne verdadeiro
			}
			
			se(lpre == "B2" e matriz[1][1] == 0)
			{
				matriz[1][1] = vezDeQuem
				retorne verdadeiro
			}
			
			se(lpre == "B3" e matriz[2][1] == 0)
			{
				matriz[2][1] = vezDeQuem
				retorne verdadeiro
			}
			se(lpre == "C1" e matriz[0][2] == 0)
			{
				matriz[0][2] = vezDeQuem
				retorne verdadeiro				
			}
			se(lpre == "C2" e matriz[1][2] == 0)
			{
				matriz[1][2] = vezDeQuem
				retorne verdadeiro
			}
			se(lpre == "C3" e matriz[2][2] == 0)
			{
				matriz[2][2] = vezDeQuem
				retorne verdadeiro
			}
			
		retorne falso
	}

	
	funcao caracter eX(inteiro o)
	{
		se(o == 1)
			retorne 'O'
		se(o == 2)
			retorne 'X'
			
		retorne ' '
	}

	funcao logico vencedor()
	{
		se(matriz[0][0]  == matriz[0][1] e matriz[0][0]  == matriz[0][2] e matriz[0][1] == matriz[0][2] e matriz[0][0] != 0) 		
		{
			retorne verdadeiro
		}
		se(matriz[1][0] == matriz[1][1] e matriz[1][0] == matriz[1][2] e matriz[1][1] == matriz[1][2] e matriz[1][0] != 0)
		{
			retorne verdadeiro
		}
		se(matriz[2][0] == matriz[2][1] e matriz[2][0] == matriz[2][2] e matriz[2][1] == matriz[2][2] e matriz[2][0] != 0)
		{
			retorne verdadeiro
		}
		se(matriz[0][0] == matriz[1][1] e matriz[0][0] == matriz[2][2] e matriz[1][1] == matriz[2][2] e matriz[0][0] != 0)
		{
			retorne verdadeiro
		}
		se(matriz[2][0] == matriz[1][1] e matriz[2][0] == matriz[0][2] e matriz[1][1] == matriz[0][2] e matriz[2][0] != 0)
		{
			retorne verdadeiro
		}
		se(matriz[0][0] == matriz[1][0] e matriz[0][0] == matriz[2][0]  e matriz[1][0] == matriz[2][0] e matriz[0][0] != 0)
		{
			retorne verdadeiro
		}
		se(matriz[0][1] == matriz[1][1] e matriz[0][1] == matriz[2][1] e matriz[1][1] == matriz[2][1] e matriz[0][1] != 0)
		{
			retorne verdadeiro
		}
		se(matriz[0][2] == matriz[1][2] e matriz[0][2] == matriz[2][2] e matriz[1][2] == matriz[2][2] e matriz[0][2] != 0)
		{
			retorne verdadeiro
		}
			
		retorne falso
	}

	funcao logico velha()
	{

			para(inteiro x = 0; x < 3; x++)
			{
				para(inteiro y = 0; y < 3; y++)
				{
					se(matriz[x][y] == 0)
					{
						retorne falso
					}
				}
			}

		retorne verdadeiro
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */