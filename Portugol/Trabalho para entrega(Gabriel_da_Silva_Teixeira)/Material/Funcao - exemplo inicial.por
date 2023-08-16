programa
{	
	cadeia usuario = "", senha = ""
	
	funcao inicio()
	{
		cadeia var1 = "abc", var2 = "def"
		logico continua = verdadeiro
	
		enquanto(continua) {			
			solicitarLogin()
			login(usuario, senha)
		}
		
		escreva("Seja bem vindo," + usuario)
	}

	funcao login(cadeia pUsuario, cadeia pSenha) {
		
		const cadeia USUARIO = "leonardo"
		const cadeia SENHA = "1a2b"
	
		se (pUsuario!=USUARIO ou pSenha!=SENHA)
			escreva("Usuario ou senha incorreta.\n")
	}

	funcao solicitarLogin(){
		escreva("Digite o usuario: \n")
		leia(usuario)
		escreva("Digite a senha: \n")
		leia(senha)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 179; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */