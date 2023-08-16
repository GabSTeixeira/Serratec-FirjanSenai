programa
{
	
	const real PI = 3.145454444446246424624642646
	const cadeia VERSAO = "1.00"
	const cadeia USUARIO = "Ricardo"
	
	funcao inicio()
	{	
		
		cadeia nome_Pessoa_1
		cadeia nome_Pessoa_2 = "Pedro"
		cadeia empresa = "Serratec"  //alimenta a variável empresa com o conteúdo "Serratec"
		inteiro numero = 1
		real valor = 150.9
		cadeia sValor = "150.9"
		caracter letra = '0'		
		logico continuar = falso
		
		//nome_Pessoa_1 = "Ricardo"
		//numero = 2 
		//escreva("Meu número = ", numero)
		
		//nmPessoa = "Pedro"
		escreva("\nInforme o seu nome: ")
		leia(nome_Pessoa_1)
		//escreva("Bem vindo, ", nmPessoa, ", à ", empresa, "\n")
		//escreva("\nBem vindo à ", empresa, ", ", nome_Pessoa_2, " PI = ", PI)
		//cadeia minhaVariavel = "Qualquer coisa"
		
		//minhaVariavel = "Outra qualquer"

		se (nome_Pessoa_1 == USUARIO) {
			escreva("\nBem vindo à ", empresa, ", ", nome_Pessoa_1, "!")	
		} senao {
			escreva("\nTente novamente (2)!")
			leia(nome_Pessoa_1)
			
			se (nome_Pessoa_1 == USUARIO) {
				escreva("\nBem vindo à ", empresa, ", ", nome_Pessoa_1, "!")	
			} senao {
				escreva("\nTente novamente (3)!")
				leia(nome_Pessoa_1)
				
				se (nome_Pessoa_1 == USUARIO) {
					escreva("\nBem vindo à ", empresa, ", ", nome_Pessoa_1, "!")	
				} senao {
					
					escreva("\nAcesso negado!")	
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
 * @POSICAO-CURSOR = 1110; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {PI, 4, 12, 2}-{VERSAO, 5, 14, 6}-{nome_Pessoa_1, 11, 9, 13}-{nome_Pessoa_2, 12, 9, 13}-{empresa, 13, 9, 7}-{numero, 14, 10, 6}-{valor, 15, 7, 5}-{sValor, 16, 9, 6}-{letra, 17, 11, 5}-{continuar, 18, 9, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = vetor, matriz, funcao;
 */