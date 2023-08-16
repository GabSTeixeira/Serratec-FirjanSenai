programa
{
	funcao inicio()
	{		
		real impostoRenda, salario, base, porcentagemAliquota = 0.0, valorDeduzido = 0.0, impostoPagar
		inteiro dependentes

		escreva("\nSalario: ")
		leia(salario)
		escreva("\nDependestes: ")
		leia(dependentes)

			se (salario <= 2112.00) {
				porcentagemAliquota = 0.00
				valorDeduzido = 0.00
			} senao
			se (salario <= 2826.65) {
				porcentagemAliquota = 0.075
				valorDeduzido = 158.40
			} senao
			se (salario <= 3751.05) {
				porcentagemAliquota = 0.15
				valorDeduzido = 370.40
			} senao
			se (salario <= 4664.68) {
				porcentagemAliquota = 0.225
				valorDeduzido = 651.73
			} senao
			se (salario >= 4664.68) {
				porcentagemAliquota = 27.5
				valorDeduzido = 884.96
			}

		impostoPagar = (salario * porcentagemAliquota) - (valorDeduzido * dependentes)

		se (impostoPagar < 0) impostoPagar = 0.0

		escreva("\nBase de Cálculo: R$"+ salario)
		escreva("\nAlíquota IR: "+ (porcentagemAliquota * 100)+"%")
		escreva("\nParcela a deduzir: R$"+valorDeduzido)
		escreva("\nImposto a pagar: R$"+impostoPagar)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 722; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */