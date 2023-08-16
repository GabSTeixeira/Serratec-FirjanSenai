programa
{
	
	funcao inicio()
	{

		real imc, altura, peso


		escreva("\nInforme a altura(Metros):")
		leia(altura)
		
		escreva("\nInforme o peso(Kilogramas):")
		leia(peso)
		

		imc = peso / (altura * altura)


		se (imc < 18.5) 
			escreva("\nbaixo peso")
		senao se (imc >= 18.5 e imc < 24.9)
			escreva("\nsaudavel")
		senao se (imc >= 25 e imc < 29.9)
			escreva("\nsobrepeso")
		senao 
			escreva("\nobesidade")

		escreva("\nSeu IMC é: " + imc)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 101; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */