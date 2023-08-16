programa{

	funcao inicio(){

		real numero, contaAtual = 0.0, resultado = 0.0
		caracter operacaoAtual = ' ', opcaoSelecionada
		cadeia pausa
	
		para (inteiro i = 0;i <= 1000; i++) {
			escreva("------Calculadora simples------\n")
			escreva("informe a operacao: (resultado atual: "+resultado+")\n")
			escreva("1 - adição\n")
			escreva("2 - subtracao\n")
			escreva("3 - multiplacacao\n")
			escreva("4 - divisao\n")
			escreva("5 - resetar numero\n")
			escreva("0 - encerrar programa\n")
			escreva("selecionar opcao: ")
			leia(opcaoSelecionada)

			limpa()
		
			se (opcaoSelecionada == '0') {
				pare
			}

			se (opcaoSelecionada=='1' ou opcaoSelecionada=='2' ou opcaoSelecionada=='3' 
			ou opcaoSelecionada=='4' ou opcaoSelecionada=='5') {
 
				se (opcaoSelecionada == '5') {
					resultado = 0.0
				} senao {
					escreva("opcao selecionada: "+opcaoSelecionada+"\n")
					escreva("informe um numero: ")
					leia(numero)
		
					limpa()
		
					escolha (opcaoSelecionada) {
						caso	'1':
							contaAtual = resultado + numero
							operacaoAtual = '+'
							pare
						caso	'2':
							contaAtual = resultado - numero
							operacaoAtual = '-'
							pare
						caso	'3':
							contaAtual = resultado * numero
							operacaoAtual = '*'
							pare
						caso	'4':
							operacaoAtual = '/'
							
							se (numero == 0 ou resultado == 0) {
								escreva("\nNão é possível dividir por zero!!!\n")
								pare
							}
							contaAtual = resultado / numero			
							pare
					}

					escreva("Resultado atual: "+resultado+" "+operacaoAtual+" "+numero+" = "+contaAtual+"\n")	
					resultado = contaAtual

					escreva("\npressione enter para continuar")
					leia(pausa)
					limpa()
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
 * @POSICAO-CURSOR = 1487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */