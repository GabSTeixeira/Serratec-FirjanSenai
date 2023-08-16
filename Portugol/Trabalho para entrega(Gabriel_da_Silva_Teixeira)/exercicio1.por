programa
{	
	inclua biblioteca Matematica --> mat

	
	funcao inicio()
	{	
		
		caracter opcao
		cadeia pressioneEnter
		
		
		faca {
			limpa()
			escreva("-----------menu-exercicios-----------")
			escreva("\n-------------------------------------")
			escreva("\nInforme o numero do exercicio (max:15)")
			escreva("\n0 - Encerrar aplicação")

			escreva("\nOpcao: ")
			leia(opcao)

			se (opcao == '0') pare
		  	escolha (opcao) {
				caso '1':
					/*	1) Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
						a) A quantidade de pessoas em cada faixa etária;
						b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 
				
						Até 15 anos
						De 16 a 30 anos
						De 31 a 45 anos
						De 46 a 60 anos
						Acima de 61 anos */
					
					inteiro idade0_15=0, idade16_30=0, idade31_45=0, idade46_60=0,
					idadeAcimaDe61=0, idade
					real percentualIdade0_15, percentualIdadeAcimaDe61
			
					para (inteiro i = 1; i <= 15; i++) {
					limpa()
					escreva("\nInforme uma idade("+i+"/"+15+"): ")
					leia(idade)
		
					se (idade >= 0) {
						se (idade < 16) idade0_15++
						senao
						se (idade < 31) idade16_30++
						senao
						se (idade < 46) idade31_45++
						senao
						se (idade < 61) idade46_60++
						senao idadeAcimaDe61++
						}	
					}
					limpa()
					
					percentualIdade0_15 = (idade0_15 * 100) / 15
					percentualIdadeAcimaDe61 = (idadeAcimaDe61 * 100) / 15

					escreva("-----------Exercicio-1-----------")
					escreva("\nPessoas na faixa etaria(0-15): "+idade0_15)
					escreva("\nPessoas na faixa etaria(16-30): "+idade16_30)
					escreva("\nPessoas na faixa etaria(31-45): "+idade31_45)
					escreva("\nPessoas na faixa etaria(46-60): "+idade46_60)
					escreva("\nPessoas na faixa etaria(acima de 60): "+idadeAcimaDe61)
					escreva("\n--------------------------------------------------------")
					escreva("\nPercentual na faixa etaria (0-15): "+mat.arredondar(percentualIdade0_15, 2)+"%")
					escreva("\nPercentual na faixa etaria (acima de 60): "+mat.arredondar(percentualIdadeAcimaDe61,2)+"%")

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso '2':
					/*2) Faça um programa que verifique e mostre os números entre 1.000 e 2.000 (inclusive) que,  
					 	quando divididos por 11 produzam resto igual a 2.*/

					escreva("-----------Exercicio-2-----------\n")
					inteiro labelParaOsNumeros = 1, corte = 0

					para (inteiro i = 1000; i <= 2000; i++) {
						se (i % 11 == 2) {
							se(corte > 10){
								corte = 0
								escreva("\n")
							}

							corte++
							escreva(labelParaOsNumeros+"-|"+i+"| ")
							labelParaOsNumeros++
						}
					}
	

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso '3':
				     /*3) Faça um programa que leia três valores (A, B, C) e mostre-os na ordem lida.  Em seguida, 
				         mostre-os em ordem crescente e decrescente.*/

					real a, b, c, maiorNum, numEntre, menorNum 

					escreva("\nInforme o A: ")
					leia(a)
					escreva("\nInforme o B: ")
					leia(b)
					escreva("\nInforme o C: ")
					leia(c)

					se (a > b e a > c){
						maiorNum = a
						se(b >= c) {
							numEntre = b
							menorNum = c
						} senao {
							numEntre = c
							menorNum = b
						}
					}
					senao se (b > a e b > a){
						maiorNum = b
						se(a >= c) {
							numEntre = a
							menorNum = c
						} senao {
							numEntre = c
							menorNum = a
						}
					}
					senao se (c > a e c > b){
						maiorNum = c
						se(b >= a) {
							numEntre = b
							menorNum = a
						} senao {
							numEntre = a
							menorNum = b
						}
					} senao {
						maiorNum = a
						numEntre = b
						menorNum = c
					}

					limpa()
					escreva("-----------Exercicio-3-----------")
					escreva("\nOrdem de insersão")
					escreva("\n"+mat.arredondar(a, 2)+"    "+mat.arredondar(b, 2)+"    "+mat.arredondar(c, 2))
					escreva("\n------------------------")
					escreva("\nOrdem crescente")
					escreva("\n"+mat.arredondar(menorNum, 2)+"    "+mat.arredondar(numEntre, 2)+"    "+mat.arredondar(maiorNum, 2))
					escreva("\n------------------------")
					escreva("\nOrdem decrescente")
					escreva("\n"+mat.arredondar(maiorNum, 2)+"    "+mat.arredondar(numEntre, 2)+"    "+mat.arredondar(menorNum, 2))
					
					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
				    	leia(pressioneEnter)
				    	pare
				caso '4':
					/* 4)Uma loja tem tem uma política de descontos de acordo com o valor da compra 
						do cliente. Os descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00 o cliente ganha 
						1% de desconto cumulativo até 25%. Por exemplo: R$500 = 1% || R$600,00 = 2% … etc…
 						Faça um programa que exiba essa tabela de descontos no seguinte formato:  
 						Valordacompra – porcentagem de desconto – valor final
						O total da compra deverá ser armazenado num vetor e a apresentação das compras realizadas e seus descontos,
						deve ser a partir desse vetor.
					*/
					const inteiro TAMANHO = 15 // altere para aumentar ou diminuir o número maximo de clientes 
					const real DESCONTO_MAXIMO = 25.0
					real vetorVendaCliente[TAMANHO][3], valorCompra, valorFinal
					inteiro qtdCliente = 0, desconto = 0

					faca {
						limpa()
						escreva("-----------Exercicio-4-----------")
						escreva("\n-------MAX("+qtdCliente+"/"+TAMANHO+") VENDAS-------  -> pode ser alterado no código")
						escreva("\n1 - Realizar compra")
						escreva("\n2 - Exibir vendas")
						escreva("\n0 - Voltar ao menu de exercicios")
						escreva("\nEscolha a opção: ")
						leia(opcao)

						se(opcao == '0') pare
						escolha (opcao) {
							caso '1':
								se (qtdCliente < TAMANHO) {
								limpa()
								escreva("\nInforme o valor da compra: ")
								leia(valorCompra)

								valorFinal = valorCompra
								se (valorCompra >= 500) {

									para (inteiro i = 500;i <= valorCompra e desconto < DESCONTO_MAXIMO; i += 100) {
										desconto++
									}
									// 100% -> valorCompra
									// 5%  -> x
									// 100 / x = 5*valorCompra --> (5*valorCompra) / 100
									valorFinal = (valorCompra - ((desconto*valorCompra) / 100))
								} 

								vetorVendaCliente[qtdCliente][0] = valorCompra
								vetorVendaCliente[qtdCliente][1] = desconto
								vetorVendaCliente[qtdCliente][2] = valorFinal 

								
								escreva("\nValor compra: "+valorCompra)
								escreva("\nDesconto: "+desconto+"%")
								escreva("\nValor final: "+valorFinal)

								qtdCliente++
								desconto = 0
								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)
								} senao {
									escreva("\nQUANTIDADE MAXIMA DE CLIENTES ATINGIDA!!!")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)
								}
								pare
						
							caso '2':
								se (qtdCliente < 1) {
									escreva("\nNão há vendas registradas")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)	
									
									pare
								}

								para (inteiro i = 0; i < qtdCliente; i++) {
									escreva("\nVenda: "+(i+1)+"| Valor Compra: "+vetorVendaCliente[i][0]+
									"| desconto: "+vetorVendaCliente[i][1]+"| Valor Final: "+vetorVendaCliente[i][2])
								}

								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)
								
								pare
						}		
					} enquanto (verdadeiro)
					
					pare
				caso '5':
					/*5)Escreva um programa que lê o tamanho do lado de um quadrado e imprime um quadrado daquele 
					 * tamanho com asteriscos. Seu programa deve usar laços de repetição e funcionar para quadrados com 
					 * lados de todos os tamanhos entre 1 e 20.*/

					inteiro ladoDoQuadrado
					cadeia vetorQuadrado[20][20]
					
					escreva("\nInforme o lado do quadrado(max:20): ")
					leia(ladoDoQuadrado)
					
					limpa()
					escreva("\n-----------Exercicio-5-----------\n")
					se (ladoDoQuadrado < 1 e ladoDoQuadrado > 20) {
						escreva("\nLado Ivalido!!")
							
						escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
						leia(pressioneEnter)
						pare
					}
					
					para(inteiro i = 0; i < ladoDoQuadrado; i++) {
						para (inteiro j = 0; j < ladoDoQuadrado; j++){
							escreva(vetorQuadrado[i][j] = "* ")	
						}
						escreva("\n")	
					}

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso '6':
					/*6) Escreva um programa que lê o tamanho do lado de um quadrado e imprime um quadrado daquele tamanho 
					 * com asteriscos e espaços em branco. Seu programa deve funcionar para quadrados com lados de todos 
					 * os tamanhos entre 1 e 20.*/
					inteiro ladoDoQuadro
					cadeia vetorQuadro[20][20]
					
					escreva("\nInforme o lado do quadro(max:20): ")
					leia(ladoDoQuadro)

					limpa()
					escreva("\n-----------Exercicio-6-----------\n")
					se (ladoDoQuadro < 1 e ladoDoQuadro > 20) {
						escreva("\nLado Ivalido!!")
							
						escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
						leia(pressioneEnter)
						pare
					}
					
					para(inteiro i = 0; i < ladoDoQuadro; i++) {
						
						
						para (inteiro j = 0; j < ladoDoQuadro; j++){
							
							se(i==0 ou i==(ladoDoQuadro -1) ou j==0 ou j==(ladoDoQuadro-1))
								escreva(vetorQuadro[i][j] = "* ")
							senao 
								escreva(vetorQuadro[i][j] = "  ")
						}
						escreva("\n")	
					}

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso '7':
					inteiro alturaDoTriangulo
					cadeia vetorTriangulo[20][20]
					
					escreva("\nInforme a altura do triangulo(max:20): ")
					leia(alturaDoTriangulo)

					limpa()
					escreva("\n-----------Exercicio-7-----------\n")
					se (alturaDoTriangulo < 1 e alturaDoTriangulo > 20) {
						escreva("\nAltura Ivalida!!")
							
						escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
						leia(pressioneEnter)
						pare
					}
					
					para(inteiro i = 0; i < alturaDoTriangulo; i++) {
						
						para (inteiro j = 0; j < (i+1); j++){
							escreva(vetorTriangulo[i][j] = "* ")
							
						}
						escreva("\n")	
					}

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso '8': 
					/*8) Faça um programa que peça um número inteiro e determine se 
					ele é ou não um número primo. Um número primo é aquele que é divisível somente por 
					ele mesmo e por 1. */

					inteiro numPrimo, divisores = 0

					escreva("Informe um numero: ")
					leia(numPrimo)

					para(inteiro i = 1; i < numPrimo; i++) {
						
						se(numPrimo % i == 0) {
							divisores++
						}	
						
					}

					se(divisores < 2) escreva(numPrimo+" é primo!!")
					senao escreva(numPrimo+" não é primo")


					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso '9':
					/*9) Faça um programa que peça o nome de 10 pessoas e a sua idade.
						Armazene os nomes num vetor e a idade em outro vetor.
						Crie um laço para fazer essas soliciações.
						Crie um menu que permita ao usuário deicidir se quer incluir, alterar ou excluir os dados dos vetores.
						Excluir significa limpar os dados (colocar vazio ou zero).
						A edição somente será permitida se o nome não estiver vazio. Nesse caso, deverá efetuar a inclusão.
						Crie um menu para organizar as funções.
					 */
					/*
					const inteiro TAMANHO_NOME_IDADE = 10 // pode ser alterado 
					cadeia nome[10]
					inteiro idade[10], qtdNomesIdade=0
				
					faca {
						limpa()
						escreva("-----------Exercicio-4-----------")
						escreva("\n-------MAX("+qtdNomesIdade+"/"+TAMANHO_NOME_IDADE+") VENDAS-------  -> pode ser alterado no código")
						escreva("\n1 - incluir nome e idade")
						escreva("\n2 - alterar nome e idade")
						escreva("\n3 - excluir nome e idade")
						escreva("\n0 - Voltar ao menu de exercicios")
						escreva("\nEscolha a opção: ")
						leia(opcao)

						se(opcao == '0') pare
						escolha (opcao) {
							caso '1':
								escreva("\n")
								

								pare
							caso '2':
								escreva("arroz")
								
								
								pare

							caso '3': 

								escreva("voz")
						}		
					} enquanto (verdadeiro)
					
			*/ 
			  	}
		} enquanto (verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */