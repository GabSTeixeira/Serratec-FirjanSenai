programa
{
	
	funcao inicio()
	{
		real numero1, numero2
		caracter operador, controle
		logico continuar = verdadeiro		

		enquanto(continuar) {
			limpa()
			escreva("Programa de operações matemáticas\n")
			escreva("---------------------------------\n\n")
			escreva("Informe a operação matemática (+ - / *): ")
			leia(operador)
			
			escreva("Informe o primeiro número: ")
			leia(numero1)
			escreva("Informe o segundo número: ")
			leia(numero2)
	
			escolha(operador) {
				caso '+': 
					escreva("\nOperação de soma\n")
					escreva("--------------------------\n")
					escreva(numero1, " + ", numero2, " = ", numero1 + numero2)
					pare
				caso '-': 
					escreva("\nOperação de subtração\n")
					escreva("--------------------------\n")
					escreva(numero1, " - ", numero2, " = ", numero1 - numero2)
					pare
				caso '/':
					escreva("\nOperação de divisão\n")
					escreva("--------------------------\n")
					escreva(numero1, " / ", numero2, " = ", numero1 / numero2)
					pare
				caso '*':
					escreva("\nOperação de multiplicação\n")
					escreva("--------------------------\n")
					escreva(numero1, " * ", numero2, " = ", numero1 * numero2)
					pare
				caso contrario: escreva("\nOperador inválido")
			}

			escreva("\n\nPressione 'S' para continuar.") 
			leia(controle)

			/*
			se(controle=='s' ou controle =='S')  
				continuar = verdadeiro
			senao
				continuar = falso 
			*/
			
			continuar = (controle=='s' ou controle =='S')  // simplificação se senao
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 400; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {controle, 7, 21, 8}-{continuar, 8, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */