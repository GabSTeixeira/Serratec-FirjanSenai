programa
{
	inclua biblioteca Tipos
	inclua biblioteca Texto
	
	
	funcao inicio()
	{

		faca {
			
			cadeia quantidade
			inteiro entradaCorrigida
			leia(quantidade)
			
			
			se (validarEntrada(quantidade)) {
				entradaCorrigida = Tipos.cadeia_para_inteiro(quantidade, 10)
				escreva("\ninteiro Valido\n")
			} senao {
				escreva("\nNumero inteiro invalido\n")	
			}
			
		} enquanto (verdadeiro)

	
		
	}
	
	funcao logico validarEntrada (cadeia entrada) {

		inteiro tamanho = Texto.numero_caracteres(entrada)
		inteiro contador = 0
		caracter letra
		
		para (inteiro i = 0; i < tamanho; i++) {
			
			letra = Texto.obter_caracter(entrada, i)
			se (letra == '1' ou letra == '2' ou letra == '3' ou letra == '4' ou letra == '5' ou letra == '6'
				ou letra == '7' ou letra == '8' ou letra == '9' ou letra == '0') {
				contador++
			}				
		}
			
		retorne tamanho == contador
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 615; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */