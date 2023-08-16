programa
{	/*
 		* Crie um algoritmo que inclua numa matriz o nome, o sobrenome e a rua de 5 pessoas
 		* Crie uma função para localizar a pessoa pelo nome e outra para localizar pelo
 		* sobrenome e outra pelo endereço
 		* 
 		* Gabriel da silva Teixeira
 		* 
 		* 18
 	*/
	
	funcao inicio()
	{

		const inteiro LIMITE_DE_PESSOAS = 3
		
		cadeia nome, sobrenome, rua
		cadeia vetorPessoa[LIMITE_DE_PESSOAS][3]

		para (inteiro i = 0; i < LIMITE_DE_PESSOAS; i++) {
			
			escreva("\nInforme o nome: ")
			leia(nome)
			escreva("\nInforme o sobrenome: ")
			leia(sobrenome)
			escreva("\nInforme a rua: ")
			leia(rua)

			vetorPessoa[i][0] = nome
			vetorPessoa[i][1] = sobrenome
			vetorPessoa[i][2] = rua	
		}

		//exibirTodos(vetorPessoa, LIMITE_DE_PESSOAS)

		//localizarNome(vetorPessoa, LIMITE_DE_PESSOAS)

		//localizarSobrenome(vetorPessoa, LIMITE_DE_PESSOAS)

		localizarRua(vetorPessoa, LIMITE_DE_PESSOAS)
		
	}

	funcao exibirTodos (cadeia &vetor[][], inteiro limite) {

		para (inteiro i = 0; i < limite; i++) {
			escreva("\nPessoa: "+vetor[i][0]+" "+vetor[i][1]+" mora em "+vetor[i][2])
		}

	}
	
	funcao localizarNome (cadeia &vetor[][], inteiro limite) {
		inteiro posicao = -1
		cadeia nomeBuscado
		
		escreva("\nInforme um nome para ser buscado: ")
		leia(nomeBuscado)
		
		para (inteiro i = 0; i < limite; i++) {
			se(vetor[i][0] == nomeBuscado) {
				posicao = i
				pare
			}
		}
		
		se (posicao >= 0) escreva("\nPessoa: "+vetor[posicao][0]+" "+vetor[posicao][1]+" mora em "+vetor[posicao][2])
		senao escreva("\nNome não encontrado")
			
	}


	funcao localizarSobrenome (cadeia &vetor[][], inteiro limite) {
		inteiro posicao = -1
		cadeia sobreNomeBuscado
		escreva("\nInforme um Sobrenome: ")
		leia(sobreNomeBuscado)
		
		para (inteiro i = 0; i < limite; i++) {
			se(vetor[i][1] == sobreNomeBuscado) {
				posicao = i
				pare
			}
		}
		
		se (posicao >= 0) escreva("\nPessoa: "+vetor[posicao][0]+" "+vetor[posicao][1]+" mora em "+vetor[posicao][2])
		senao escreva("\nNome não encontrado")
			
	}
	
	
	funcao localizarRua (cadeia &vetor[][], inteiro limite) {
		inteiro posicao = -1
		cadeia ruaBuscada
		
		escreva("\nInforme uma Rua: ")
		leia(ruaBuscada)
		
		para (inteiro i = 0; i < limite; i++) {
			se(vetor[i][2] == ruaBuscada) {
				posicao = i
				pare
			}
		}
		
		se (posicao >= 0) escreva("\nPessoa: "+vetor[posicao][0]+" "+vetor[posicao][1]+" mora em "+vetor[posicao][2])
		senao escreva("\nNome não encontrado")
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 273; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */