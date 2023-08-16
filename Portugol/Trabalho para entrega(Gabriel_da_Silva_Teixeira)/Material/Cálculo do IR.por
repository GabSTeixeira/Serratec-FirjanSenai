/*
 * 2) Uma contabilidade precisa calcular o Imposto de Renda dos funcionários de uma empresa.
Dada a tabela do Imposto de Renda abaixo, solicite o salário de um funcionário e calcule o 
valor do imposto de renda a pagar, tendo efetuado a dedução e informe para o contador o valor 
da base de cálculo, a alíquota aplicada, o valor deduzido e o imposto a pagar.

Obs.: A parcela a deduzir deve ser multiplicada pelo número de dependentes.

IR na fonte
--------------------------------------------------------------------------------------
Base de cálculo¹ (R$)		Alíquotas em %		Parcela a deduzir do IR (R$)
--------------------------------------------------------------------------------------
Até 2.112,00				 0,00			  0,00
De 2.112,01 até 2.826,65		 7,50			158,40
De 2.826,66 até 3.751,05		15,00			370,40
De 3.751,06 até 4.664,68		22,50			651,73
Acima de 4.664,68			27,50			884,96

Exemplo:

Entrada:

Salário: R$ 3.500,00
Número de dependentes: 1

Processamento:

(3.500 * 0,15) - (370,40 *1) = 154,60

Saída:

Base de Cálculo: R$ 3.500,00
Alíquota IR: 15,00%
Parcela a deduzir: R$ 370,40
Imposto a pagar: R$ 154,60

Obs.: Caso o valor do imposto seja negativo, apresentar valor a pagar igual a zero.
Obs2.: O exercício acima é apenas para treinamento e não representa o cálculo do imposto oficial.
 * 
 */

programa
{
	
	funcao inicio()
	{
		real salario
		inteiro nrDependente
		real aliquota, deducao, IR

		escreva("Informe o salário base: ")
		leia(salario)
		escreva("Informe o número de dependentes: ")
		leia(nrDependente)

		se (salario <= 2112) {
			aliquota = 0.0
			deducao = 0.0
		} senao se (salario <= 2826.65) {
			aliquota = 0.075 // corresponde a 7.5%
			deducao = 158.40
		} senao se (salario <= 3751.05) {
			aliquota = 0.15  // corresponde a 15%
			deducao = 370.40
		} senao se (salario <= 4664.68) {
			aliquota = 0.225 // corresponde a 22.5%
			deducao = 651.73
		} senao {
			aliquota = 0.275 // corresponde a 27.5%
			deducao = 884.96
		}

		deducao = deducao * nrDependente

		IR = (salario * aliquota) - (deducao)

		se(IR < 0.0) IR = 0.0

		escreva("\n------------------------")
		escreva("\n      Cálculo do IR")
		escreva("\n------------------------")
		escreva("\nSalário base = R$ ", salario)
		escreva("\nAlíquota IR = ", aliquota * 100, "%")
		escreva("\nDedução = R$ ", deducao)
		escreva("\nIR a pagar = R$ ", IR)
	}
}








/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2032; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {salario, 47, 7, 7}-{nrDependente, 48, 10, 12}-{aliquota, 49, 7, 8}-{deducao, 49, 17, 7}-{IR, 49, 26, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */