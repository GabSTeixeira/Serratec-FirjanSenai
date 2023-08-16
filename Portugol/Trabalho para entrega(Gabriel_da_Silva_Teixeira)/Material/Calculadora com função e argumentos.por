programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	//inteiro opcao = 0
	//real num1, num2, Resultado = 0.00
	//logico continua = verdadeiro
	//cadeia resposta
	
	funcao inicio()
	{
		calculadora()
	}

	funcao inteiro menu()
	{		
		inteiro op
		
		escreva("Opções------------\n\n")
		escreva("   1- Soma\n")
		escreva("   2- Subtração\n")
		escreva("   3- Multiplicação\n")
		escreva("   4- Divisão\n")
		escreva("   5- Resto da divisão\n")
		escreva("\nInforme uma opção: ")
		leia(op)

		retorne op
	}

	funcao informarNumeros(real &num1, real &num2) // & armazena os valores na memória
	{		
		escreva("Informe o número 1: ")
		leia(num1)
		escreva("Informe o número 2: ")
		leia(num2)
	}

	funcao real selecionarOpcao(inteiro pOpcao, real num1, real num2)
	{
		real resultado = 0.0
		
		escolha(pOpcao){
			caso 1: resultado = num1 + num2 pare
			caso 2: resultado = num1 - num2 pare
			caso 3: resultado = num1 * num2 pare
			caso 4:
				se(num2 > 0){
					resultado = m.arredondar(num1 / num2, 2)
				}senao{
					escreva("O dividendo precisa ser maior que zero")
				}
				pare              
			caso 5: resultado = t.real_para_inteiro(num1) % t.real_para_inteiro(num2)
				pare
			caso contrario: escreva("Opção inválida")
		}

		retorne resultado
	}

	funcao exibirResultado(real resultado, inteiro opcao)
	{
		se(opcao<6){
			escreva("\nO Resultado é ", resultado)
		}
	}

	funcao logico continuaMenu()
	{
		cadeia resposta
		
		escreva("\n\nDeseja continuar? 1- Sim 2- Não\n")
		leia(resposta)
		retorne resposta == "1"
	}

	funcao calculadora()
	{
		logico continua = verdadeiro
		real num1 = 0.0, num2 = 0.0
		inteiro opcao
		real resultado = 0.00
		
		faca{
			informarNumeros(num1, num2)
			opcao = menu()
			resultado = selecionarOpcao(opcao, num1, num2)
			exibirResultado(resultado, opcao)
			//exibirResultado(selecionarOpcao(opcao, num1, num2), opcao)
			continua = continuaMenu()
		}enquanto(continua)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 647; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */