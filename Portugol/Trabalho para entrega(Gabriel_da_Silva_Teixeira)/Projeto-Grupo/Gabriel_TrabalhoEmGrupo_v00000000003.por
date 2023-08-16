programa
{	
	//biblioteca
	inclua biblioteca Util --> u
    	inclua biblioteca Matematica --> mat
    	inclua biblioteca Tipos --> tp
    	inclua biblioteca Calendario --> cal
    	inclua biblioteca Texto --> txt
    	//inclua biblioteca Arquivos --> a
    	

	
	//Vetores 
	const cadeia vProdutoCodigo[6] = {"1","2","3","4","5","6"}
	const cadeia vProdutoNome[6] = {"Parafuso", "Arruela", "Porca", "Chave de fenda", "Broca", "Bucha"}
	const real vProdutoPreco[6] = {10.00,3.00,1.00,2.00,3.00,4.00}
	const real tipoPagamento[3] = {1.05, 1.00, 0.95}
	//const inteiro vProdutoEstoque[6] = {}
	//const cadeia vProdutoDesc[6]
	
	//relatorio
	

	//tipo de pagamento
	//const real acrescimo = 1.05
	real vProdutoPrecoUnitarioLiquido[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, vProdutoModificadoUnitario[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
	inteiro vProdutoQuantidadeUnitaria[] = {0, 0, 0, 0, 0, 0}
	real valorLiquido = 0.0, valorBruto = 0.0, descontoFinal = 0.0
	//const real decrescimo = 0.95

	// =========================================== main ===========================================
	funcao inicio()
	{	
		//inteiro vProdutoDecrescimo[]
		
		calcular(tipoPagamento[2])
	}

	funcao calcular (real metodoPagamento) {
		limpa()
		opecoesCompra(metodoPagamento)
		//limpa()
		//imprimirOrcamento()
	}
	
	funcao realizarCalculoVenda (inteiro indice, real metodoPagamento) {
		inteiro quantidade
		
		escreva("Produto Selecionado: "+vProdutoNome[indice])
		escreva("\nQuantos: ")
	     leia(quantidade)

		vProdutoQuantidadeUnitaria[indice] = quantidade
		vProdutoPrecoUnitarioLiquido[indice] = (quantidade * vProdutoPreco[indice]) * metodoPagamento
		vProdutoModificadoUnitario[indice] = (vProdutoPreco[indice] * metodoPagamento)	
	}

	funcao opecoesCompra(real metodoPagamento) {
		caracter codigoInformado
		inteiro contador = 0
		cadeia opcaoLoop
		
		faca {
			limpa()
			imprimirOrcamentoPreview()
			escreva("\nInforme o código (sair): ")
			leia(codigoInformado)
				
			escolha (codigoInformado) {
				caso '1':
						realizarCalculoVenda(0,metodoPagamento)
					pare
				caso '2':
						realizarCalculoVenda(1,metodoPagamento)
					pare
				caso '3':
						realizarCalculoVenda(2,metodoPagamento)
					pare
				caso '4':
						realizarCalculoVenda(3,metodoPagamento)
					pare
				caso '5':
						realizarCalculoVenda(4,metodoPagamento)
					pare
				caso '6':
						realizarCalculoVenda(5,metodoPagamento)
					pare
				caso contrario : {
						escreva("\nOpcao Invalida!!")	
				}
			}	
			
			se (contador >= 6) {
				limpa()
				imprimirOrcamentoPreview()
				escreva("\nDeseja imprimir este relatorio? (s/n): ")
				leia(opcaoLoop)
				se (txt.caixa_baixa(opcaoLoop) == "s") pare	
			}
			contador++
		} enquanto(verdadeiro)	


		imprimirRodaPe(metodoPagamento)
		pressioneEnterParaContinuar()
	}

	funcao imprimirRodaPe (real metodoPagamento) {
		
		para (inteiro i = 0; i < 6; i++) {
			valorBruto += (vProdutoPreco[i] * vProdutoQuantidadeUnitaria[i])
		}
		
		valorLiquido = valorBruto * metodoPagamento
		
		se (metodoPagamento > 1 ou metodoPagamento < 1)
			descontoFinal = (valorBruto - valorLiquido) * -1

		
		escreva("\nValor Bruto: "+valorBruto)
		se (metodoPagamento > 1) {
			escreva("\nAcrescimo Total: +"+descontoFinal)
		}senao se (metodoPagamento < 1) {
			escreva("\nDesconto Total: "+descontoFinal)	
		} senao {
			escreva("\nDesconto/Acrescimo atual: 0")
		}
		escreva("\nValor Liquido: "+valorLiquido)	
		

		
	}


	funcao pressioneEnterParaContinuar () {
		cadeia enter
		escreva("\n\nPressione Enter para continuar...")	
		leia(enter)
	}
	

     funcao imprimirOrcamentoPreview () {
     	
		escreva("|      COD\t|", "     PROD\t|", "     QTDE\t|","    R$(un.)\t|","    Valor líquido\t|", "\n")
		escreva ("\n")
		
		para (inteiro i=0;i<6; i++){
			escreva("|\t", vProdutoCodigo[i], "\t|\t",
			vProdutoNome[i], "\t|\t", vProdutoQuantidadeUnitaria[i],
			"\t|\t", vProdutoModificadoUnitario[i], "\t|\t"
			, vProdutoPrecoUnitarioLiquido[i],"\t\t|\n")
		}
	}
     	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */