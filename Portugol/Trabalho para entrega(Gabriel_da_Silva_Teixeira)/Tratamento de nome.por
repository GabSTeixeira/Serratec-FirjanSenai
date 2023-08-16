programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	
	
	funcao inicio()
	{

		cadeia nome
		faca {
			limpa()
			escreva("Escreva um nome: ") leia(nome)
			
			escreva("\nresult: "+validarNome(nome))
			u.aguarde(1000)
			se (validarNome(nome)) {
				limpa()
				escreva("\n|"+tirarEspaco(nome)+"|")	
				
				
			}
			u.aguarde(5000)
		} enquanto (nome != "parar")
	}

	funcao cadeia tirarEspaco (cadeia nome) {

		inteiro tamNome = txt.numero_caracteres(nome)
		inteiro quantidadeLetra = 0
		
		inteiro letraInicial = -1, letraFinal = -1
		
		caracter ultimaLetra = ']'
		cadeia texto = ""
	
		para (inteiro i = 1; i < tamNome - 1; i++) {

			se (txt.obter_caracter(nome,i-1) == ' ' e txt.obter_caracter(nome,i) == ' ' e  txt.obter_caracter(nome,i+1) != ' ') {
				letraInicial = i+1
			} senao
			se (txt.obter_caracter(nome,i-1) != ' ' e i-1 == 0) {
				letraInicial = i-1
				
			} senao
			se (txt.obter_caracter(nome,i-1) != ' ' e txt.obter_caracter(nome,i) == ' ' e txt.obter_caracter(nome,i+1) == ' ') {
				letraFinal = i-1
				texto+= txt.extrair_subtexto(nome, letraInicial, letraFinal+1) + " "
			} senao
			se (i+1 == tamNome-1 e txt.obter_caracter(nome,i+1) != ' ') {
				letraFinal = i+1
				texto+= txt.extrair_subtexto(nome, letraInicial, letraFinal+1)
			}
			
		}

		se (txt.obter_caracter(texto, txt.numero_caracteres(texto)-1) == ' '){
			
			retorne txt.extrair_subtexto(texto, 0, txt.numero_caracteres(texto)-1)
			
		}
		
		retorne texto
	}
	


	funcao logico validarNome (cadeia nome) {

		inteiro tamNome = txt.numero_caracteres(nome)
		inteiro quantidadeLetra = 0
		caracter ultimaLetra = '"'
		
	
		para (inteiro i = 0; i < tamNome; i++) {

			se (txt.obter_caracter(nome,i) != ' ') {
				ultimaLetra = txt.obter_caracter(nome,i)
				quantidadeLetra++
			}
		}
		
		se (quantidadeLetra >= 3 e quantidadeLetra <= 25 e ultimaLetra != '"') retorne verdadeiro

		retorne falso
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 514; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {texto, 35, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */