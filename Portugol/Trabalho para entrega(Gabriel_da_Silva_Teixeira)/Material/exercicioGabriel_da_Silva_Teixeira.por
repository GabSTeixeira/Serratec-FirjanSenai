programa
{	
	inclua biblioteca Matematica --> mat

	// GABRIEL DA SILVA TEIXEIRA
	funcao inicio()
	{	
		
		inteiro opcao
		cadeia pressioneEnter
		
		
		faca {
			limpa()
			escreva("-----------menu-exercicios-----------")
			escreva("\n-------------------------------------")
			escreva("\nInforme o numero do exercicio (max:15)")
			escreva("\n0 - Encerrar aplicação")

			escreva("\nOpcao: ")
			leia(opcao)

			se (opcao == 0) pare
		  	escolha (opcao) {
				caso 1:
					/*	1) Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
						a) A quantidade de pessoas em cada faixa etária;
						b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 
				
						Até 15 anos
						De 16 a 30 anos
						De 31 a 45 anos
						De 46 a 60 anos
						Acima de 61 anos */
					const inteiro TAMANHO_EXE1 = 15
					inteiro idade16_30_exe1=0, idade31_45_exe1=0, idade46_60_exe1=0, idade_exe1
					real percentualIdade0_15_exe1, percentualIdadeAcimaDe61_exe1, idade0_15_exe1=0.0, idadeAcimaDe61_exe1=0.0
			
					para (inteiro i = 1; i <= TAMANHO_EXE1; i++) {
					limpa()
					escreva("\nInforme uma idade("+i+"/"+15+"): ")
					leia(idade_exe1)
		
					se (idade_exe1 >= 0) {
						se (idade_exe1 < 16) idade0_15_exe1++
						senao
						se (idade_exe1 < 31) idade16_30_exe1++
						senao
						se (idade_exe1 < 46) idade31_45_exe1++
						senao
						se (idade_exe1 < 61) idade46_60_exe1++
						senao idadeAcimaDe61_exe1++
						}	
					}
					limpa()
					
					percentualIdade0_15_exe1 = (idade0_15_exe1 * 100) / TAMANHO_EXE1
					percentualIdadeAcimaDe61_exe1 = (idadeAcimaDe61_exe1 * 100) / TAMANHO_EXE1

					escreva("-----------Exercicio-1-----------")
					escreva("\nPessoas na faixa etaria(0-15): "+idade0_15_exe1)
					escreva("\nPessoas na faixa etaria(16-30): "+idade16_30_exe1)
					escreva("\nPessoas na faixa etaria(31-45): "+idade31_45_exe1)
					escreva("\nPessoas na faixa etaria(46-60): "+idade46_60_exe1)
					escreva("\nPessoas na faixa etaria(acima de 60): "+idadeAcimaDe61_exe1)
					escreva("\n--------------------------------------------------------")
					escreva("\nPercentual na faixa etaria (0-15): "+mat.arredondar(percentualIdade0_15_exe1, 2)+"%")
					escreva("\nPercentual na faixa etaria (acima de 60): "+mat.arredondar(percentualIdadeAcimaDe61_exe1,2)+"%")

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso 2:
					/*2) Faça um programa que verifique e mostre os números entre 1.000 e 2.000 (inclusive) que,  
					 	quando divididos por 11 produzam resto igual a 2.*/

					escreva("-----------Exercicio-2-----------\n")
					inteiro labelParaOsNumeros = 1, corte = 0

					para (inteiro i = 1001; i <= 2000; i++) {
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
				caso 3:
				     /*3) Faça um programa que leia três valores (A, B, C) e mostre-os na ordem lida.  Em seguida, 
				         mostre-os em ordem crescente e decrescente.*/

					real a_exe3, b_exe3, c_exe3, maiorNum_exe3, numEntre_exe3, menorNum_exe3 

					escreva("\nInforme o A: ")
					leia(a_exe3)
					escreva("\nInforme o B: ")
					leia(b_exe3)
					escreva("\nInforme o C: ")
					leia(c_exe3)

					se (a_exe3 > b_exe3 e a_exe3 > c_exe3){
						maiorNum_exe3 = a_exe3
						se(b_exe3 >= c_exe3) {
							numEntre_exe3 = b_exe3
							menorNum_exe3 = c_exe3
						} senao {
							numEntre_exe3 = c_exe3
							menorNum_exe3 = b_exe3
						}
					}
					senao se (b_exe3 > a_exe3 e b_exe3 > a_exe3){
						maiorNum_exe3 = b_exe3
						se(a_exe3 >= c_exe3) {
							numEntre_exe3 = a_exe3
							menorNum_exe3 = c_exe3
						} senao {
							numEntre_exe3 = c_exe3
							menorNum_exe3 = a_exe3
						}
					}
					senao se (c_exe3 > a_exe3 e c_exe3 > b_exe3){
						maiorNum_exe3 = c_exe3
						se(b_exe3 >= a_exe3) {
							numEntre_exe3 = b_exe3
							menorNum_exe3 = a_exe3
						} senao {
							numEntre_exe3 = a_exe3
							menorNum_exe3 = b_exe3
						}
					} senao {
						maiorNum_exe3 = a_exe3
						numEntre_exe3 = b_exe3
						menorNum_exe3 = c_exe3
					}

					limpa()
					escreva("-----------Exercicio-3-----------")
					escreva("\nOrdem de insersão")
					escreva("\n"+mat.arredondar(a_exe3, 2)+"    "+mat.arredondar(b_exe3, 2)+"    "+mat.arredondar(c_exe3, 2))
					escreva("\n------------------------")
					escreva("\nOrdem crescente")
					escreva("\n"+mat.arredondar(menorNum_exe3, 2)+"    "+mat.arredondar(numEntre_exe3, 2)+"    "+mat.arredondar(maiorNum_exe3, 2))
					escreva("\n------------------------")
					escreva("\nOrdem decrescente")
					escreva("\n"+mat.arredondar(maiorNum_exe3, 2)+"    "+mat.arredondar(numEntre_exe3, 2)+"    "+mat.arredondar(menorNum_exe3, 2))
					
					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
				    	leia(pressioneEnter)
				    	pare
				caso 4:
					/* 4)Uma loja tem tem uma política de descontos de acordo com o valor da compra 
						do cliente. Os descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00 o cliente ganha 
						1% de desconto cumulativo até 25%. Por exemplo: R$500 = 1% || R$600,00 = 2% … etc…
 						Faça um programa que exiba essa tabela de descontos no seguinte formato:  
 						Valordacompra – porcentagem de desconto – valor final
						O total da compra deverá ser armazenado num vetor e a apresentação das compras realizadas e seus descontos,
						deve ser a partir desse vetor.
					*/
					const inteiro TAMANHO_EXE4 = 15 // altere para aumentar ou diminuir o número maximo de clientes 
					const real DESCONTO_MAXIMO_EXE4 = 25.0
					real vetorVendaCliente[TAMANHO_EXE4][3], valorCompra_exe4, valorFinal_exe4, desconto_exe4 = 0.0
					inteiro qtdCliente_exe4 = 0

					faca {
						limpa()
						escreva("-----------Exercicio-4-----------")
						escreva("\n-------MAX("+qtdCliente_exe4+"/"+TAMANHO_EXE4+") VENDAS-------  -> pode ser alterado no código")
						escreva("\n1 - Realizar compra")
						escreva("\n2 - Exibir vendas")
						escreva("\n0 - Voltar ao menu de exercicios")
						escreva("\nEscolha a opção: ")
						leia(opcao)

						se(opcao == 0) pare
						escolha (opcao) {
							caso 1:
								se (qtdCliente_exe4 < TAMANHO_EXE4) {
								limpa()
								escreva("\nInforme o valor da compra: ")
								leia(valorCompra_exe4)

								valorFinal_exe4 = valorCompra_exe4
								se (valorCompra_exe4 >= 500) {

									para (inteiro i = 500;i <= valorCompra_exe4 e desconto_exe4 < DESCONTO_MAXIMO_EXE4; i += 100) {
										desconto_exe4++
									}
									// 100% -> valorCompra
									// 5%  -> x
									// 100 / x = 5*valorCompra --> (5*valorCompra) / 100
									valorFinal_exe4 = (valorCompra_exe4 - ((desconto_exe4*valorCompra_exe4) / 100))
								} 

								vetorVendaCliente[qtdCliente_exe4][0] = valorCompra_exe4
								vetorVendaCliente[qtdCliente_exe4][1] = desconto_exe4
								vetorVendaCliente[qtdCliente_exe4][2] = valorFinal_exe4

								
								escreva("\nValor compra: "+valorCompra_exe4)
								escreva("\nDesconto: "+desconto_exe4+"%")
								escreva("\nValor final: "+valorFinal_exe4)

								qtdCliente_exe4++
								desconto_exe4 = 0.0
								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)
								} senao {
									escreva("\nQUANTIDADE MAXIMA DE CLIENTES ATINGIDA!!!")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)
								}
								pare
						
							caso 2:
								se (qtdCliente_exe4 < 1) {
									escreva("\nNão há vendas registradas")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)	
									
									pare
								}

								para (inteiro i = 0; i < qtdCliente_exe4; i++) {
									escreva("\nVenda: "+(i+1)+"| Valor Compra: "+vetorVendaCliente[i][0]+
									"| desconto: "+vetorVendaCliente[i][1]+"| Valor Final: "+vetorVendaCliente[i][2])
								}

								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)
								
								pare	
						}		
					} enquanto (verdadeiro)
					
					pare
				caso 5:
					/*5)Escreva um programa que lê o tamanho do lado de um quadrado e imprime um quadrado daquele 
					 * tamanho com asteriscos. Seu programa deve usar laços de repetição e funcionar para quadrados com 
					 * lados de todos os tamanhos entre 1 e 20.*/

					inteiro ladoDoQuadrado_exe5
					cadeia vetorQuadrado_exe5[20][20]
					
					escreva("\nInforme o lado do quadrado(max:20): ")
					leia(ladoDoQuadrado_exe5)
					
					limpa()
					escreva("\n-----------Exercicio-5-----------\n")
					se (ladoDoQuadrado_exe5 < 1 ou ladoDoQuadrado_exe5 > 20) {
						escreva("\nLado Ivalido!!")
							
						escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
						leia(pressioneEnter)
						pare
					}
					
					para(inteiro i = 0; i < ladoDoQuadrado_exe5; i++) {
						para (inteiro j = 0; j < ladoDoQuadrado_exe5; j++){
							escreva(vetorQuadrado_exe5[i][j] = "* ")	
						}
						escreva("\n")	
					}

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso 6:
					/*6) Escreva um programa que lê o tamanho do lado de um quadrado e imprime um quadrado daquele tamanho 
					 * com asteriscos e espaços em branco. Seu programa deve funcionar para quadrados com lados de todos 
					 * os tamanhos entre 1 e 20.*/
					inteiro ladoDoQuadro_exe6
					cadeia vetorQuadro_exe6[20][20]
					
					escreva("\nInforme o lado do quadro(max:20): ")
					leia(ladoDoQuadro_exe6)

					limpa()
					escreva("\n-----------Exercicio-6-----------\n")
					se (ladoDoQuadro_exe6 < 1 ou ladoDoQuadro_exe6 > 20) {
						escreva("\nLado Ivalido!!")
							
						escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
						leia(pressioneEnter)
						pare
					}
					
					para(inteiro i = 0; i < ladoDoQuadro_exe6; i++) {
						
						
						para (inteiro j = 0; j < ladoDoQuadro_exe6; j++){
							
							se(i==0 ou i==(ladoDoQuadro_exe6 -1) ou j==0 ou j==(ladoDoQuadro_exe6-1))
								escreva(vetorQuadro_exe6[i][j] = "* ")
							senao 
								escreva(vetorQuadro_exe6[i][j] = "  ")
						}
						escreva("\n")	
					}

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso 7:
					inteiro alturaDoTriangulo_exe7
					cadeia vetorTriangulo_exe7[20][20]
					
					escreva("\nInforme a altura do triangulo(max:20): ")
					leia(alturaDoTriangulo_exe7)

					limpa()
					escreva("\n-----------Exercicio-7-----------\n")
					se (alturaDoTriangulo_exe7 < 1 ou alturaDoTriangulo_exe7 > 20) {
						escreva("\nAltura Ivalida!!")
							
						escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
						leia(pressioneEnter)
						pare
					}
					
					para(inteiro i = 0; i < alturaDoTriangulo_exe7; i++) {
						
						para (inteiro j = 0; j < (i+1); j++){
							escreva(vetorTriangulo_exe7[i][j] = "* ")
							
						}
						escreva("\n")	
					}

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso 8: 
					/*8) Faça um programa que peça um número inteiro e determine se 
					ele é ou não um número primo. Um número primo é aquele que é divisível somente por 
					ele mesmo e por 1. */

					inteiro numPrimo_exe8, divisores_exe8 = 0
					limpa()
					escreva("Informe um numero: ")
					leia(numPrimo_exe8)

					para(inteiro i = 1; i < numPrimo_exe8; i++) {
						
						se(numPrimo_exe8 % i == 0) {
							divisores_exe8++
						}	
						
					}
					limpa()
					se(divisores_exe8 < 2) escreva(numPrimo_exe8+" é primo!!")
					senao escreva(numPrimo_exe8+" não é primo")


					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso 9:
					/*9) Faça um programa que peça o nome de 10 pessoas e a sua idade.
						Armazene os nomes num vetor e a idade em outro vetor.
						Crie um laço para fazer essas soliciações.
						Crie um menu que permita ao usuário deicidir se quer incluir, alterar ou excluir os dados dos vetores.
						Excluir significa limpar os dados (colocar vazio ou zero).
						A edição somente será permitida se o nome não estiver vazio. Nesse caso, deverá efetuar a inclusão.
						Crie um menu para organizar as funções.
					 */
					
					const inteiro TAMANHO_EXE9 = 10 // pode ser alterado 
					cadeia vetorNome_exe9[TAMANHO_EXE9], nome_exe9
					inteiro vetorIdade_exe9[TAMANHO_EXE9], idade_exe9, qtdPessoaInclusa=0, qtdPessoaParaIncluir_exe9, AlterarOuExcluir_exe9

					para (inteiro i = 0; i < TAMANHO_EXE9; i++) {
						vetorNome_exe9[i] = ""
					}
					faca {
						limpa()
						escreva("-----------Exercicio-9-----------")
						escreva("\n-------MAX("+qtdPessoaInclusa+"/"+TAMANHO_EXE9+") PESSOAS -------  -> pode ser alterado no código")
						escreva("\n1 - incluir pessoa")
						escreva("\n2 - alterar pessoa")
						escreva("\n3 - excluir pessoa")
						escreva("\n4 - imprimir todas as pessoas")
						escreva("\n0 - Voltar ao menu de exercicios")
						escreva("\nEscolha a opção: ")
						leia(opcao)

						se(opcao == 0) pare
						escolha (opcao) {
							caso 1:
								
								escreva("\nQuantas pessoas deseja incluir: ")
								leia(qtdPessoaParaIncluir_exe9)

								se(qtdPessoaParaIncluir_exe9 <= (TAMANHO_EXE9 - qtdPessoaInclusa)) {
									
									para (inteiro i = 0; (i < TAMANHO_EXE9); i++) {
										limpa()
										se (qtdPessoaParaIncluir_exe9 <= 0) {
													
											pare	
										}
										
										se (vetorNome_exe9[i] == "") {

											escreva("-----------("+(i+1)+")-----------")
											escreva("\nInforme um nome: ")
											leia(nome_exe9)
											escreva("Informe uma idade: ")
											leia(idade_exe9)
										
											vetorNome_exe9[i] = nome_exe9
											vetorIdade_exe9[i] = idade_exe9
											qtdPessoaInclusa++
											qtdPessoaParaIncluir_exe9--
										}	
									}	

									limpa()
									escreva("\nPessoas cadastradas com sucesso!!")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)
									
								} senao {
									
									escreva("\nQuantidade invalida, ("+(TAMANHO_EXE9 - qtdPessoaInclusa)+") vagas disponiveis")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)
									
								}
								pare
							caso 2:
								limpa()
								escreva("-------------Pessoas disponiveis-------------")
								
								para (inteiro i = 0; i < TAMANHO_EXE9; i++) {

									se(vetorNome_exe9[i] != "") {
										escreva("\nPessoa \t"+(i+1)+"\t| disponivel para alteracao")
									} senao {
										escreva("\nPessoa \t"+(i+1)+"\t| não cadastrada")
									}
								}
			
								escreva("\nInforme o numero da pessoa que deseja alterar: ")
								leia(AlterarOuExcluir_exe9)
				
								

								se(vetorNome_exe9[AlterarOuExcluir_exe9-1] == ""){
									limpa()
									escreva("A pessoa selecionanda não esta disponivel para alteracão pois ela não foi cadastrada ainda!!!")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)
										
									pare	
									
								}
								limpa()
								escreva("Informe um novo nome: ")
								leia(nome_exe9)
								escreva("\nInforme uma nova idade: ")
								leia(idade_exe9)
								
								vetorNome_exe9[AlterarOuExcluir_exe9-1] = nome_exe9
								vetorIdade_exe9[AlterarOuExcluir_exe9-1] = idade_exe9
								
								limpa()
								escreva("Pessoa alterada com sucesso!!!")
								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)

								pare
							caso 3:
								limpa()
								escreva("-------------Pessoas disponiveis-------------")
								
								para (inteiro i = 0; i < TAMANHO_EXE9; i++) {

									se(vetorNome_exe9[i] != "") {
										escreva("\nOpcao \t"+(i+1)+"\t| disponivel para exclusão")
									} senao {
										escreva("\nOpcao \t"+(i+1)+"\t| não esta cadastrada")
									}
								}
			
								escreva("\nInforme um numero de pessoas para excluir: ")
								leia(AlterarOuExcluir_exe9)
				
								

								se(vetorNome_exe9[AlterarOuExcluir_exe9-1] == ""){
									limpa()
									escreva("A pessoa selecionanda não esta disponivel para exclusão pois ela não foi cadastrada ainda!!!!!!")

									escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
									leia(pressioneEnter)
										
									pare	
									
								}
								limpa()
							
								
								vetorNome_exe9[AlterarOuExcluir_exe9-1] = ""
								vetorIdade_exe9[AlterarOuExcluir_exe9-1] = 0
								
								limpa()
								escreva("Pessoa Excluida com sucesso!!!")
								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)

								pare
							caso 4:
								limpa()
								escreva("-------------Pessoas Cadastradas-------------")
								
								para (inteiro i = 0; i < TAMANHO_EXE9; i++) {

									se(vetorNome_exe9[i] != "") {
										escreva("\nPessoa:\t"+(i+1)+"\t|Nome: \t"+vetorNome_exe9[i]+"\t\t\t|Idade: "+vetorIdade_exe9[i]+"\t")
									} senao {
										escreva("\nPessoa:\t"+(i+1)+"\t|Nome: \tnão cadastrado\t\t|Idade: não cadastrado\t")
									}
								}
			
								escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
								leia(pressioneEnter)
								pare
						}
							
					}enquanto (verdadeiro)
					
					pare
				caso 10:
					//10) Crie um algoritmo que peça ao usuário que informe oito números inteiros e os armazene-os em um
					//vetor. Apresente o maior elemento e a posição em que ele se encontra no vetor. 
					const inteiro TAMANHO_EXE10 = 8
					inteiro numero_exe10, vetor_exe10[TAMANHO_EXE10], maiorNum_exe10 = 0, posicao_exe10 = 0
					
					para (inteiro i = 0; i < TAMANHO_EXE10; i++) {
						limpa()

						escreva("--------Numero("+(i+1)+"/"+TAMANHO_EXE10+")")						
						escreva("\nForneça um numero: ")
						leia(numero_exe10)

						
						vetor_exe10[i] = numero_exe10
						se (i == 0) maiorNum_exe10 = vetor_exe10[i]
						
						se (numero_exe10 > maiorNum_exe10) {
							maiorNum_exe10 = numero_exe10
							posicao_exe10 = i
						}

						
					}
					limpa()
					escreva("-----------Exercicio-10-----------")
					escreva("\nMaior Numero: "+maiorNum_exe10)
					escreva("\nPosicao: "+(posicao_exe10))

					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
					
				caso 11:
					//11) Crie um algoritmo que peça ao usuário que informe 10 números inteiros, armazene-os em um vetor
					//    e apresente a soma de todos os valores. 
					const inteiro TAMANHO_EXE11 = 10
					inteiro numero_exe11, vetor_exe11[TAMANHO_EXE11], soma_exe11 = 0
					
					para (inteiro i = 0; i < TAMANHO_EXE11; i++) {
						limpa()

						escreva("--------Numero("+(i+1)+"/"+TAMANHO_EXE11+")--------")						
						escreva("\nForneça um numero: ")
						leia(numero_exe11)

						vetor_exe11[i] = numero_exe11

						soma_exe11 += numero_exe11
					}

					limpa()
					escreva("-----------Exercicio-11-----------")
					escreva("\nSoma dos numeros: "+soma_exe11)
					
					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
				caso 12:
					/*12) Faça um algoritmo que leia e mostre um vetor de 10 números inteiros. A seguir, peça ao usuário para
						informar um valor inteiro e positivo e mostre todos os números do vetor que são divisíveis por esse
						número*/
					const inteiro TAMANHO_EXE12 = 10
					inteiro numero_exe12, vetor_exe12[TAMANHO_EXE12]
					
					para (inteiro i = 0; i < TAMANHO_EXE12; i++) {
						limpa()

						escreva("--------Numero("+(i+1)+"/"+TAMANHO_EXE12+")--------")						
						escreva("\nForneça um numero: ")
						leia(numero_exe12)

						vetor_exe12[i] = numero_exe12
					}
					
					limpa()
					escreva("Forneca um numero para verificar quais numeros sao divisiveis por ele: ")
					leia(numero_exe12)

					limpa()
					escreva("-----------Exercicio-12-----------\n")
					para (inteiro i = 0; i < TAMANHO_EXE12; i++) {

						se (vetor_exe12[i] % numero_exe12 == 0) {
							escreva(vetor_exe12[i]+" ")
						}
						
						
					}

					
					escreva("\ndivisor: "+numero_exe12)
					
					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
					
				caso 13:
					/*13) Faça um algoritmo que leia e mostre um vetor de 5 números inteiros. A seguir, inverta os valores desse
						vetor, trocando o primeiro elemento pelo último, segundo pelo penúltimo, e assim sucessivamente
						exibindo novamente o vetor invertido. */
					const inteiro TAMANHO_EXE13 = 5
					inteiro numero_exe13, vetor_exe13[TAMANHO_EXE13], temp_exe13


					para (inteiro i = 0; i < TAMANHO_EXE13; i++) {
						limpa()

						escreva("--------Numero("+(i+1)+"/"+TAMANHO_EXE13+")--------")						
						escreva("\nForneça um numero: ")
						leia(numero_exe13)

						vetor_exe13[i] = numero_exe13
					}
					limpa()
					escreva("-----------Exercicio-13-----------\n")
					
					para(inteiro i = 0; i < TAMANHO_EXE13; i++) {
						
						escreva(vetor_exe13[i]+" ")	
						
					}
					
					escreva("\nInvertido\n")
					
					para (inteiro i = 0; i < (TAMANHO_EXE13/2); i++) {
						inteiro j = (TAMANHO_EXE13-1) - i
						
						temp_exe13 = vetor_exe13[i]
						vetor_exe13[i] = vetor_exe13[j]
						vetor_exe13[j] = temp_exe13
					}


					para(inteiro i = 0; i < TAMANHO_EXE13; i++) {
						
						escreva(vetor_exe13[i]+" ")	
						
					}
					
					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare

				caso 14:
					/*14) Crie um algoritmo que peça ao usuário que informe 10 números inteiros e armazene-os em um vetor.
						A seguir, apresente a multiplicação de todos os elementos pares e a soma de todos os elementos
						ímpares.*/
					const inteiro TAMANHO_EXE14 = 10
					inteiro numero_exe14, vetor_exe14[TAMANHO_EXE14], soma_exe14=0, multiplicacao_exe14=1
					logico contemZero_exe14 = falso, naoPossuiPares_exe14 = verdadeiro
					
					para (inteiro i = 0; i < TAMANHO_EXE14; i++) {
						limpa()

						escreva("--------Numero("+(i+1)+"/"+TAMANHO_EXE14+")--------")						
						escreva("\nForneça um numero: ")
						leia(numero_exe14)

						vetor_exe14[i] = numero_exe14
					}
					
					limpa()
					escreva("-----------Exercicio-14-----------")
					para (inteiro i = 0; i < TAMANHO_EXE14; i++) {
						
						se (vetor_exe14[i] % 2 == 0) {
							multiplicacao_exe14 *= vetor_exe14[i]
							naoPossuiPares_exe14 = falso
						} senao {
							soma_exe14 += vetor_exe14[i]
						}
					}
					se (naoPossuiPares_exe14) {
						escreva("\nMultiplicacão de numeros pares: "+0)
					} senao {
						escreva("\nMultiplicacão de numeros pares: "+multiplicacao_exe14)
					}
					
					escreva("\nSoma dos numeros impares: "+soma_exe14)
					
					escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
					pare
			  	
			  	caso 15: 
			  		/* 15) Escreva um algoritmo que solicite ao usuário a entrada de 5 números, e que exiba o somatório desses números na tela.
						Após exibir a soma, o programa deve mostrar também os números que o usuário digitou, um por linha.
			  		 */
					const inteiro TAMANHO_EXE15 = 5
					inteiro numero_exe15, vetor_exe15[TAMANHO_EXE15], soma_exe15 = 0
					
			  		 
					para (inteiro i = 0; i < TAMANHO_EXE15; i++) {
						limpa()

						escreva("--------Numero("+(i+1)+"/"+TAMANHO_EXE15+")--------")						
						escreva("\nForneça um numero: ")
						leia(numero_exe15)

						vetor_exe15[i] = numero_exe15
					}
					limpa()

					escreva("-----------Exercicio-15-----------")
						
					para (inteiro i = 0; i < TAMANHO_EXE15; i++) {

						
						escreva("\n"+vetor_exe15[i])

						soma_exe15 += vetor_exe15[i] 
					
					}

					escreva("\nSoma: "+soma_exe15)
					
			  		escreva("\n\nPRESIONE ENTER PARA CONTINUAR")
					leia(pressioneEnter)
			  		pare		
		  	} 
			  		
		} enquanto (verdadeiro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 97; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */