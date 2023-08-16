/*  Crie um algoritmo que calcule a partir de uma quantidade de números quais são os
 *   números primos no intervalo de 1 até o número informado
 *   são números primos aqueles que são divisíveis por ele mesmo e por 1
 */

programa
{

//2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 
//61, 67, 71, 73, 79, 83, 89 e 97.
	
	funcao inicio()
	{
		logico sair = falso
		caracter opcao
		
		faca{
			escreva("Escolha uma opção: \n")
			escreva("1- Minha solução\n")
			escreva("2- Solução aluno\n")
			escreva("3- Sair\n\n")
			leia(opcao)
			
			escolha(opcao){
				caso '1': sair = primos() pare
				caso '2': sair = primosAluno() pare
				caso contrario: sair = verdadeiro pare
			}
		}enquanto(nao sair)
	}

	funcao logico primos()
	{
		inteiro num, qtDivisiveis, qtPrimos =1
		
		escreva("Quantidade de número primos: ")
		leia(num)
		
		para(inteiro i=2; qtPrimos<=num; i++){  
			qtDivisiveis = 0	
					
			para(inteiro j=i; j>=1; j--){ 
				se((i%j) == 0)   
					qtDivisiveis++ 
			}
			se(qtDivisiveis == 2){
				escreva(i, "  ")
				qtPrimos++  
			}			
		}

		retorne verdadeiro
	}

	funcao logico primosAluno()
	{
		inteiro qtdNumeros, contador = 1, numero = 2
		escreva("Informe a quantidade de numeros: ") 
		leia(qtdNumeros)

		escreva("\nNumeros Primos: ")
		enquanto (contador <= qtdNumeros) // contador = 1  qtdnumeros = 5
		{
			se (NumeroePrimo(numero)) //2 3
			{
				escreva(numero, " ")
				contador++ 
			}
			numero++ 
		}

		retorne verdadeiro
	}

	funcao logico NumeroePrimo(inteiro num) // 2
	{
		inteiro resultado = 0 
                 
		se (num % 2 == 0 e num != 2) //Gambiarra linda e funcional
		{
			retorne falso
		}
		
		para (inteiro i = 2; i <= num / 2; i++) 
		{
			se (num % i == 0) 
			{
				resultado++
				pare
			}
		}

		se (resultado == 0) 
		{
			retorne verdadeiro
		}
		senao
		{
			retorne falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1031; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {qtdNumeros, 57, 10, 10}-{contador, 57, 22, 8}-{numero, 57, 36, 6}-{num, 75, 36, 3}-{resultado, 77, 10, 9}-{i, 84, 16, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */