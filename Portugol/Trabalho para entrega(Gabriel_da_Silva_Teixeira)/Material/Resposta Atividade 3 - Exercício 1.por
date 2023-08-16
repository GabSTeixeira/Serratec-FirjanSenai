/* Atividade 3
 * 1) Desenvolver um algoritmo que leia um número não determinado de valores e calcule 
 * e escreva a média aritmética dos valores lidos, a quantidade de valores positivos, 
 * a quantidade de valores negativos e o percentual de valores negativos e positivos
 * 
 */
programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro numero, positivos = 0, negativos = 0
		real percentual
		logico continuar
		caracter resposta

		faca {
			escreva("Informe um numero: ")
			leia(numero)
			
			se (numero < 0)
				negativos++
			senao
				positivos++

			escreva("\nPressione 'S' para continuar: ")
			leia(resposta)

			continuar = resposta == 's' ou resposta == 'S'
	
		} enquanto(continuar)

		real rPosit = t.inteiro_para_real(positivos)
		real rNegat = t.inteiro_para_real(negativos)
		
		percentual = (rPosit/(rPosit+rNegat)) * 100
		
		escreva("\nTotal de número positivos: ", positivos, " - ", m.arredondar(percentual,3), "%")

		percentual = (rNegat/(rPosit+rNegat)) * 100
		escreva("\nTotal de número negativos: ", negativos, " - ", m.arredondar(percentual,3), "%\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 530; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */