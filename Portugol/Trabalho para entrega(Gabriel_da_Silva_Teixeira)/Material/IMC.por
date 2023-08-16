/**
 * Ricardo de Jesus Oliveira
 * 
 * 1) Uma clínica tem necessidade de informar o IMC (Índice de Massa Corporal) dos seus pacientes.
Sabendo que o IMC se calcula da seguinte forma: divide-se o peso (em kg) pelo quadrado da altura 
(em metros), crie um programa que faça o cálculo do IMC de um dado paciente.

Informe o IMC do paciente.
Caso o IMC seja menor que 18,5, informe que a classificação é Baixo peso.
Caso o IMC seja maior que 18,5 e menor que 24,9, informe que a classificação é Peso saudável.
Caso o IMC seja maior ou igual a 25 e menor que 29,9, informe que a classificação é Sobrepeso.
Caso o IMC seja maior ou igual a 30, informe que a classificação é Obesidade.
 
 */

programa
{
	inclua biblioteca Matematica --> m
		
	funcao inicio()
	{
		// Declaração de variáveis, conforme entrada		
		real peso, altura, imc

		//Entradas de dados
		escreva("===========================\n")
		escreva("      Cálculo do IMC\n")
		escreva("===========================\n\n")
		escreva("Informe o seu peso: ")
		leia(peso)
		escreva("\nInforme a sua altura: ")
		leia(altura)

		//Processamento		
		//imc = peso / m.potencia(altura, 2.0) 
		imc = peso / (altura * altura)
		imc = m.arredondar(imc, 2)

		//Saída de informação
		escreva("\nSeu IMC é ", imc)
		
		se (imc <= 18.5)
			escreva("\n\nBaixo peso")
		senao se (imc < 25)
			escreva("\n\nPeso saudável")
		senao se (imc < 30) 
			escreva("\n\nSobrepeso")
		senao
			escreva("\n\nObesidade")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1231; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */