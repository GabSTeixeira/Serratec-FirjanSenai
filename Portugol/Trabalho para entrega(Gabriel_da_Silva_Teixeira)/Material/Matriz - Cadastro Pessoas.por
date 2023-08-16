/*
 * Crie um algoritmo que inclua numa matriz o nome, o sobrenome e a rua de 5 pessoas
 * Crie uma função para localizar a pessoa pelo nome e outra para localizar pelo
 * sobrenome e outra pelo endereço.
 * Crie também uma função para listar todos
 * 
 */



programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia pessoas[5][3]

		incluirDados(pessoas)
		imprimirPessoa(localizarNomePessoa(pessoas), pessoas)
		imprimirPessoa(localizarSobrenomePessoa(pessoas), pessoas)
		imprimirPessoa(localizarEnderecoPessoa(pessoas), pessoas)
		listarPessoas(pessoas)
	}

	funcao incluirDados(cadeia matriz[][]) {
		cadeia opcao
		
		para (inteiro i = 0; i < 5; i++) {
			escreva("\nInforme o nome: ")
			leia(matriz[i][0])
	
			escreva("Informe o sobrenome: ")
			leia(matriz[i][1])
	
			escreva("Informe o endereço: ")
			leia(matriz[i][2])

			escreva("\nPressione 'S' para continuar?")
			leia(opcao)

			se(t.caixa_alta(opcao) != "S")
				pare
		}
	}

	funcao inteiro localizarNomePessoa(cadeia matriz[][]) {
		cadeia nome
		inteiro pos = -1

		escreva("Informe o nome a localizar: ")
		leia(nome)

		para (inteiro i = 0; i < 5; i++){
			se(matriz[i][0] == nome) {
				pos = i
				pare
			}
		}

		retorne pos
	}

	funcao inteiro localizarSobrenomePessoa(cadeia matriz[][]) {
		cadeia sobrenome
		inteiro pos = -1

		escreva("Informe o sobrenome a localizar: ")
		leia(sobrenome)

		para (inteiro i = 0; i < 5; i++){
			se(matriz[i][1] == sobrenome) {
				pos = i
				pare
			}
		}

		retorne pos
		
	}

	funcao inteiro localizarEnderecoPessoa(cadeia matriz[][]) {
		cadeia endereco
		inteiro pos = -1

		escreva("Informe o endereco a localizar: ")
		leia(endereco)

		para (inteiro i = 0; i < 5; i++){
			se(matriz[i][2] == endereco) {
				pos = i
				pare
			}
		}

		retorne pos
		
	}

	funcao listarPessoas(cadeia matriz[][]) {

		para (inteiro i = 0; i < 5; i++){
			escreva("Nome: " + matriz[i][0] + " " + matriz[i][1])
			escreva("Endereço: " + matriz[i][2] + "\n\n")
		}		
	}
	
	funcao imprimirPessoa(inteiro indice, cadeia matriz[][]) {
		se(indice >=0) {
			escreva("Nome: " + matriz[indice][0] + " " + matriz[indice][1])
			escreva("\nEndereço: " + matriz[indice][2] + "\n\n")
		} senao
			escreva("Pessoa não encontrada")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 713; 
 * @DOBRAMENTO-CODIGO = [46, 63, 81, 99, 107];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {pessoas, 17, 9, 7}-{matriz, 26, 28, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */