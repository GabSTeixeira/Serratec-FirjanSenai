programa
{
	
	funcao inicio()
	{
		real numero1, numero2
		caracter operador
				
		escreva("Programa de operações matemáticas\n")
		escreva("---------------------------------\n\n")
		escreva("Informe o primeiro número: ")
		leia(numero1)
		escreva("Informe o segundo número: ")
		leia(numero2)

		escreva("Informe a operação matemática (+ - / *): ")
		leia(operador)		

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
			caso contrario: escreva("Operador inválido")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */