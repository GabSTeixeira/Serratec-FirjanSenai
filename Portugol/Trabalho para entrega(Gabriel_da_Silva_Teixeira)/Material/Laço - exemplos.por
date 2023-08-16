/*
 * Crie um programa que receba um número e faça uma tabuada de 1 a 10
 * Utilize o laço Enquanto
 * 
 */

programa
{
	
	funcao inicio()
	{
		const inteiro TAM = 5
		
		logico continuar = falso
		caracter resposta
		inteiro contador = 0
		
		enquanto(continuar) {
			escreva("Entrei no laço")

			escreva("Pressione 's' para continuar")
			leia(resposta)

			/*
			se(resposta != 's')
				continuar = falso */

			continuar = resposta == 's'
		}

		enquanto (contador < TAM) {
			contador++
			escreva(contador, "  ")			
		}

		contador = -1

		para (contador; contador < TAM; contador++) {
			escreva("\nI = ", contador)
		}

		escreva("\nContador = ", contador)

		//inicialização   condição incremento
		//---------------  ------  --------
		escreva("\n")
		para(inteiro i = 1; i < 10; i = i +2) {
			escreva(i, "  ") 			
		}

		escreva("\n")
		para(inteiro i = 10; i >= 0; i--) {   // i =  i - 1
			escreva(i, "  ")
		}

		escreva("\n")
		
		faca {
			escreva(contador, "  ")
			contador++
		} enquanto(contador < 5)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 16, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */