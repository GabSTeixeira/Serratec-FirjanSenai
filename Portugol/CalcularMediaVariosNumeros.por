programa
{
	/*
		1) Desenvolver um algoritmo que leia um número não determinado
		de valores e calcule e escreva a média aritmética dos valores lidos, 
		a quantidade de valores positivos,a quantidade de valores negativos e 
		o percentual de valores negativos e positivos
	*/
	funcao inicio()
	{
		inteiro qtdNumeros = 0
		real percentualPositivos=0.0, percentualNegativos=0.0, media = 0.0,
			numerosNegativos=0.0, numerosPositivos=0.0, numero
		cadeia controle
	
		
		faca {
			limpa()
			escreva("\nInforme um numero: ")
			leia(numero)

			se(numero > 0) numerosPositivos++
			se(numero < 0) numerosNegativos++
			
			//soma de todas os numeros
			media += numero
			qtdNumeros++
			
			escreva("\nNumero registrado!!\nDigite (c ou C) para realizar o calculo, ou Enter para continuar: ")
			leia(controle)

			se (controle == "c" ou controle == "C") pare
			
		} enquanto(verdadeiro)
		limpa()
		/*
			qtdNum --> 100%
			(NumPos/NumNeg) --> percentual
			percentual = (((numPos ou numNeg) * 100) / qtdNum) 
		*/
		se (numerosPositivos > 0) percentualPositivos = (numerosPositivos * 100) / qtdNumeros
		se (numerosNegativos > 0) percentualNegativos = (numerosNegativos * 100) / qtdNumeros
		se (qtdNumeros > 0) media = media / qtdNumeros

		escreva("\nTotal de numeros: "+qtdNumeros+"\n")
		escreva("\nQuantidade de numeros positivos: "+numerosPositivos)
		escreva("\nQuantidade de numeros negativos: "+numerosNegativos)
		escreva("\nPercentual de numeros (positivos: "+percentualPositivos+"% || negativos: "+percentualNegativos+"%)\n")
		escreva("\nMedia calculada: "+media)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */