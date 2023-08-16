programa
{	
	 // Gabriel da Silva Teixeira
	 /* 3) Faça um programa que leia um nome de usuário e a sua senha e não aceite se o usuário 
	 *  a a senha forem diferentes, mostrando uma mensagem de erro e voltando a pedir as informações.
	 */
	
	funcao inicio()
	{
		const cadeia NOME = "Gabriel",SENHA = "123"
		cadeia nome, senha 
		logico controle = verdadeiro

		
		escreva("\nInforme um nome: ")
		leia(nome)
		escreva("\nInforme uma senha: ")
		leia(senha)

		
		enquanto (controle) {
			
			se (nome == NOME e senha == SENHA) {
				escreva("\nUsuario valido !!")			
				controle = falso
				//pare	
			} senao {
				escreva("\nUsuario invalido !!\n")
				escreva("\nInforme um nome: ")
				leia(nome)
				escreva("\nInforme uma senha: ")
				leia(senha)
			} 
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 242; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */