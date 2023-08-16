programa
{
	
	
	funcao inicio()
	{
		const cadeia USUARIO = "Supervisor"
		const cadeia SENHA = "123"
		
		cadeia usuario, senha
				
		escreva("\nInforme o usuário: ")
		leia(usuario)

		escreva("\nInforme a senha: ")
		leia(senha)

		/*se(usuario == USUARIO){
			se(senha == SENHA) {
				escreva("\nBem vindo")
			}
			senao {
				escreva("Senha inválida")
			}
		} senao {
			escreva("Acesso negado")
		}*/

		se(usuario!=USUARIO ou senha!=SENHA) {
			escreva("Acesso negado")
		} senao {			
			escreva("\nBem vindo")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 267; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {USUARIO, 7, 15, 7}-{SENHA, 8, 15, 5}-{usuario, 10, 9, 7}-{senha, 10, 18, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */