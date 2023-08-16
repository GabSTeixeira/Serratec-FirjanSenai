/* Atividade 3
 * 1) Desenvolver um algoritmo que leia um número não determinado de valores e calcule 
 * e escreva a média aritmética dos valores lidos, a quantidade de valores positivos, 
 * a quantidade de valores negativos e o percentual de valores negativos e positivos
 * 
 */
programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro numero, total = 0, positivos = 0, negativos = 0
		real percentual
		logico continuar = verdadeiro
		cadeia sNumero
		cadeia msg = "Informe um numero ('Q' para sair): "

		faca {
			escreva(msg)
			leia(sNumero) 

			se (t.cadeia_e_inteiro(sNumero, 10)) {
				numero = t.cadeia_para_inteiro(sNumero, 10)

				total = total + numero
				
				se (numero < 0)
					negativos++
				senao
					positivos++
			}
			senao {
				//continuar = sNumero != "q" e sNumero != "Q"
				continuar = txt.caixa_alta(sNumero) != "Q"

				se (continuar) 
					escreva("\nNúmero inválido! Tente novamente!\n")
			}

			msg = "Informe outro número para continuar ('Q' para sair): "
		} enquanto(continuar)

		
		se (total != 0) {
			real rPosit = t.inteiro_para_real(positivos)
			real rNegat = t.inteiro_para_real(negativos)
			real quant = rPosit + rNegat
	
			escreva("\nTotal dos números digitados = ", total)
			escreva("\nMédia aritmética = ", total / (quant))
			
			percentual = (rPosit/quant) * 100		
			escreva("\n\nTotal de número positivos: ", positivos, " - ", m.arredondar(percentual,2), "%")
	
			percentual = (rNegat/quant) * 100
			escreva("\nTotal de número negativos: ", negativos, " - ", m.arredondar(percentual,2), "%\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 706; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 15, 10, 6}-{total, 15, 18, 5}-{positivos, 15, 29, 9}-{negativos, 15, 44, 9}-{percentual, 16, 7, 10}-{sNumero, 18, 9, 7}-{rPosit, 48, 8, 6}-{rNegat, 49, 8, 6}-{quant, 50, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */