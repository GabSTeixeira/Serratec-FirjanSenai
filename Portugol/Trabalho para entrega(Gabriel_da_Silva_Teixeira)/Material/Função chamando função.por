programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	
//******************************************************	
	funcao inicio()
	{
		real numero = 10.698633698
		inteiro novoNumero
		real numeroDividido

		numero = m.arredondar(numero, 0)
		//escreva("Arredondado: ", numero)
		novoNumero = t.real_para_inteiro(numero)
		//escreva("Número real: ", numero)
		//escreva("Número inteiro: ", novoNumero)
		novoNumero = calculaDobro(novoNumero)
		//escreva("Dobro: ", novoNumero)
		numeroDividido = numeroDividido10(novoNumero)
		escreva("Resultado 1: ", numeroDividido)

		escreva("\nResultado 2: ", 
			numeroDividido10(
				calculaDobro(
					t.real_para_inteiro(
						m.arredondar(numero, 0)
					)
				)
			))
	}
//******************************************************
	funcao inteiro calculaDobro(inteiro pNumOriginal)
	{
		retorne pNumOriginal * 2
	}
//------------------------------------------------------
	funcao real numeroDividido10(inteiro pNumero)
	{
		retorne pNumero / 10.0
	}
//------------------------------------------------------	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 737; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 9, 7, 6}-{novoNumero, 10, 10, 10}-{numeroDividido, 11, 7, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */