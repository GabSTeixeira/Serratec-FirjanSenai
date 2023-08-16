programa
{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Texto --> txt

	
	funcao inicio()
	{
		cadeia numProtegido
		real num = -1.0

		escreva("Informe um número:(ou 'S' para sair)\n> ")
		leia(num)
		escreva("Fatorial = ", fatorial(num))

		faca{
			escreva("Informe um número:(ou 'S' para sair)\n> ")
			leia(numProtegido)
			limpa()
			
			se(txt.caixa_alta(numProtegido) == "S"){
				escreva("PROGRAMA FINALIZADO COM SUCESSO!!!\n\n")
				pare
			}
			senao se(nao tp.cadeia_e_inteiro(numProtegido, 10)){
				escreva("["+txt.caixa_alta(numProtegido)+"] Não é um número válido!\n\n")
			}senao {
				num = tp.cadeia_para_real(numProtegido)
				
				se(num < 0){
					escreva("Informe apenas números positivos!!\n\n")
				}senao se(num <= 1){
					escreva(tp.real_para_inteiro(num)+"! = 1")
				}senao{
					escreva(" = " + fatorial(num)+"\n")
				}
			}			
		}enquanto(num < 0)
	}
	
	funcao real fatorial(real num)
	{
		escreva(tp.real_para_inteiro(num)+"! = " +tp.real_para_inteiro(num))

		para(inteiro i = tp.real_para_inteiro(num -1); i > 0; i--){
			num *=i	
			escreva(" X"+i)
		}
		retorne num
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */