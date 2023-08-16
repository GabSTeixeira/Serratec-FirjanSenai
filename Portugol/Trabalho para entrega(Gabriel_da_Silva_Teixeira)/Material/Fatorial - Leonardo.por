programa
{
	
	funcao inicio()
	{
		
		inteiro numero = 0,result = 1
		
		escreva("Digite um numero para saber seu fatorial: ")
		leia(numero)	
		escreva(numero+"! ")	
		
		para(inteiro i=numero;i>=1;i--){
			se(i>1)
				escreva(i+"x")
			senao
				escreva(i)
		}
		
		para(inteiro i=1;i<=numero;i++){
			result = result*i			
		}
		
		escreva(" = "+result)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 248; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */