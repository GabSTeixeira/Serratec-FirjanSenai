programa
{
	/*v.4 MODIFICACOES
	 * modificado: loading no menu agora só acontece quando o usuario digitar o nome
	 * adicionado: nome do cliente no orcamento
	 * adicionado: funcao estoque como limitante na hora da compra
	 * adicionado: estoque agora é atualizado após imprimir novo orçamento
	 */

	
	//Bibliotecas
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> txt
	inclua biblioteca Calendario --> cal
	inclua biblioteca Tipos --> tp
	
	//Vetores Produto 
	const cadeia V_PRODUTO_CODIGO[6] = {"1","2","3","4","5","6"}
	const cadeia V_PRODUTO_NOME[6] = {"Parafuso", "Arruela", "Porca", "Chave de fenda", "Broca", "Bucha"}
	real vProdutoPreco[6] = {2.00,3.00,1.00,2.00,3.00,4.00}

	//tipo de pagamento
	const real TIPO_PAGAMENTO[3] = {1.05, 1.00, 0.95}
	const cadeia V_METODO_PAGAMENTO[3] = {"Prazo","Credito","A Vista"}
	
	//vetores Para Compra
	real vProdutoPrecoUnitarioLiquido[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, vProdutoModificadoUnitario[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
	inteiro vProdutoQuantidadeUnitaria[] = {0, 0, 0, 0, 0, 0}, vProdutoEstoque[6] = {60,50,10,80,30,20}
	
	//resultados para Orcamento
	cadeia usuarioAtual = ""
	inteiro dataAtual = cal.dia_mes_atual()
	real valorLiquido = 0.0, valorBruto = 0.0, descontoFinal = 0.0

	// =========================================== main ==================================================
	funcao inicio()
	{
		menuInicial(falso)
	}
	
	// =========================================== menus =================================================
	funcao menuInicial(logico nomeRegistrado){
	   //listar produtos
	   //calcular
		cadeia opcao

		se (nao nomeRegistrado) {
			gerarTitulo("LOJA DE FERRAMENTAS HARD")
			escreva("Informe sua empresa: ")
			leia(usuarioAtual)
			limpa()
			loading("Iniciando Programa", 75)
			limpa()
			loading("Bem-vindo, " + usuarioAtual + "!", 100)
		}
		gerarTitulo("LOJA DE FERRAMENTAS HARD")
		escreva ("Bem-vindo, ", usuarioAtual, ".\n")
		escreva("\nEscolha uma Opção:\n(1) Orçamento\t\t\n(2) Produtos\t\t\n(3) Sair\nOpção: ") leia(opcao)

		se (opcao == "") opcaoInvalida()
		
		escolha(txt.obter_caracter(opcao, 0)){
			caso '1': gerarNovoOrcamento() pare
			caso '2': listarProdutos() pare
			caso '3': creditos() pare
			caso contrario: opcaoInvalida()
		}
	//limpa()
     }

    	funcao menuOrcamento(){}

    	funcao menuProdutos(){}

    	funcao menuClientes(){}

	// =========================================== funcoes ===============================================

	funcao gerarNovoOrcamento(){
		cadeia opcao
		logico loop = verdadeiro

		inteiro opcaoCorreta = -10
		
		
		faca  {
			limpa()
			escreva("1. Prazo\n")
			escreva("2. Crédito\n")
			escreva("3. Vista\n")
			escreva("0. Retornar Menu\n\n")
			escreva("Qual será o método de pagamento?: ") leia(opcao)

			se (opcao != "") {
			
				escolha (txt.obter_caracter(opcao, 0)) {
					caso '1':
						loop = falso
						opcaoCorreta = 0
						
						pare
					caso '2':
						loop = falso
						opcaoCorreta = 1
						
						pare
					caso '3':
						loop = falso
						opcaoCorreta = 2
							
						pare
					caso '0':
						loop = falso
						opcaoCorreta = -1
						
						pare
					caso contrario:
						escreva("\nOpção invalida")
						u.aguarde(750)
						limpa()	
				}
			}

			
		} enquanto (loop)

		//dessa forma consigo encerrar o loop antes de ir pra outra função, isso evita problemas de performance
		
		se (opcaoCorreta == -1) retornarMenu("", 200)
		senao calcularOrcamento(opcaoCorreta ,TIPO_PAGAMENTO[opcaoCorreta])
	}

	funcao calcularOrcamento (inteiro metodoPagamentoTexto, real metodoPagamento){
		
		limpa()
		zerarOrcamento()
		opcoesCompra(metodoPagamento)
		
		limpa()
		imprimirOrcamento (metodoPagamentoTexto, metodoPagamento)
	}
	
	funcao opcoesCompra (real metodoPagamento){
		cadeia codigoInformado
		inteiro contador = 0, codigoInteiro
		cadeia opcaoLoop
		cadeia quantidade = ""
		
		faca {
			limpa()
			faca{
				limpa()
				gerarTitulo("   ORÇAMENTO PREVIEW\t\t\t\t\t\t(Digite 0 Para Finalizar a lista de compras)")							  			  											  
				escreva("\n")											 
				imprimirOrcamentoPreview()											  

				//limpa()
				escreva("\nInforme o código do Produto: ") leia(codigoInformado)
				se (codigoInformado == "0") {
					contador = 100
					pare
				}
				escreva("Quantidade: ") leia(quantidade)
				
			} enquanto (nao validarEntrada(codigoInformado) ou nao validarEntrada(quantidade))
			

			codigoInteiro = tp.cadeia_para_inteiro(codigoInformado, 10)

			se (codigoInteiro > 0 e codigoInteiro <= 6) {
			
				realizarCalculoVenda((codigoInteiro - 1), tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
				
				
			} senao {
				
				se (codigoInteiro == 0)
					contador = 99
				senao{
					escreva("PRODUTO NÂO ENCONTRADO")						  
					u.aguarde(900)		
				}
				
				
			}

			
			se (contador >= 99) {
				limpa()
				linhaSimples(119) escreva("\n")
				imprimirOrcamentoPreview()
				escreva("\nDeseja gerar o orçamento? (s/n): ")
				leia(opcaoLoop)
				se (txt.caixa_baixa(opcaoLoop) == "s") pare	
				contador = 0
			}
			contador++
		} enquanto(verdadeiro)	
	
		para(inteiro i = 0; i < 6; i++) {
			vProdutoEstoque[i] = vProdutoEstoque[i] - vProdutoQuantidadeUnitaria[i]
		}
		
	}

	funcao realizarCalculoVenda (inteiro indice, inteiro quantidade, real metodoPagamento){
		real calculoBruto

		se(quantidade > vProdutoEstoque[indice]){
			escreva("estoque insuficiente")
			u.aguarde(2000)
		}
		senao{		
			calculoBruto = quantidade * vProdutoPreco[indice]
			vProdutoQuantidadeUnitaria[indice] = quantidade 
			
			se (metodoPagamento == 0) {
				vProdutoPrecoUnitarioLiquido[indice] = mat.arredondar(calculoBruto, 2)
				vProdutoModificadoUnitario[indice] = mat.arredondar(vProdutoPreco[indice], 2)
			} senao {
				vProdutoPrecoUnitarioLiquido[indice] = mat.arredondar(calculoBruto * metodoPagamento, 2)
				vProdutoModificadoUnitario[indice] = mat.arredondar((calculoBruto * metodoPagamento) / quantidade, 2)  //calculoBruto * metodoPagamento - calculoBruto
			}	
		}
	}

	// =========================================== LISTAR ================================================
	
	funcao imprimirOrcamentoPreview(){
		escreva("|    COD     |    PROD\t\t\t|    QTDE\t|    R$(Un.)\t|    Valor líquido\t|    Estoque\t      |\n\n")
		para (inteiro i=0;i<6; i++){
			escreva(	"|    " +cEsp(V_PRODUTO_CODIGO[i],8)+
				"|    "+ cEsp(V_PRODUTO_NOME[i],22)+
				"|    "+ cEsp(""+vProdutoQuantidadeUnitaria[i],11)+
				"|    R$"+ cEsp(""+vProdutoModificadoUnitario[i],9),
				"|    R$"+ cEsp(""+vProdutoPrecoUnitarioLiquido[i],17),
				"|    "+cEsp(""+vProdutoEstoque[i],17),
				"|\n")
		}
	}
     	
	funcao imprimirOrcamento(inteiro metodoPagamentoTexto, real metodoPagamento){
		
		loading("Verificando Método de Pagamento escolhido...\n", 150) limpa()
		loading("Calculando descontos...\n", 150) limpa()
		loading("Gerando Relatório, Aguarde...\n", 300) limpa()
		
		linha(97)
		escreva("\n| Cliente: " + txt.caixa_alta(usuarioAtual) + " | Emissão: ")	retornarDataAtual()
		escreva(" | Validade: " + cEsp(validadeEmissao(),35) + " |\n")	linha(97)
		escreva("\n|\t\t\t\t  -= PRODUTOS SELECIONADOS =-    \t\t\t\t|\n")	linha(97)		escreva("\n") 
		escreva("|      COD\t|", "     PROD\t\t|", "     QTDE\t|","    R$(un.)\t|","    Valor líquido\t|", "\n")	linha(97)	escreva ("\n")
		para (inteiro i=0;i<6; i++){se (vProdutoQuantidadeUnitaria[i] >= 0){
			escreva(
				"|\t#", 	V_PRODUTO_CODIGO[i], 
				"\t|  ",	cEsp(+ V_PRODUTO_NOME[i],21),
				"|\t", 	vProdutoQuantidadeUnitaria[i],
				"\t|\t", 	vProdutoModificadoUnitario[i], 
				"\t|\t",	vProdutoPrecoUnitarioLiquido[i],
				"\t\t|\n")
			}
		} linha(97)


		imprimirRodaPe(metodoPagamento)

		pressioneEnterParaContinuar ("\n\nPressione enter para voltar ao menu")
		retornarMenu("",300)
	}

	funcao imprimirRodaPe (real metodoPagamento){

		cadeia texto
		
		para (inteiro i = 0; i < 6; i++) {
			valorBruto += (vProdutoPreco[i] * vProdutoQuantidadeUnitaria[i])
		}
			
		valorLiquido = valorBruto * metodoPagamento
		descontoFinal = (valorBruto - valorLiquido) * -1
		
		texto = "\n| Valor Bruto: R$"+mat.arredondar(valorBruto, 2) 
		
		se (metodoPagamento > 1) {
			texto +="\t| Acrescimo Total: +R$"	+ mat.arredondar(descontoFinal, 2)
		} senao se (metodoPagamento < 1) {
			texto +="\t| Desconto Total: -R$" + mat.arredondar(descontoFinal*-1, 2)
		} senao {
			texto +="\t| Desconto/Acrescimo: 0"
		}
		texto +="\t|\t VALOR TOTAL: R$"+mat.arredondar(valorLiquido, 2)+"\t\t|"

		gerarTitulo(texto)
		
	}
	
	funcao listarProdutos(){
    			gerarTitulo("Lista de Produtos")
    			escreva("   ID \t\t NOME \t\t\t PREÇO \t\t QUANTIDADE \n")
    			linha(70)
			para (inteiro i = 0 ; i < 6 ; i++) {
				escreva ("\n   "+ cEsp(V_PRODUTO_CODIGO[i],13) + cEsp(V_PRODUTO_NOME[i],25) + "R$" + 
							   cEsp(tp.real_para_cadeia(vProdutoPreco[i]),18) + vProdutoEstoque[i])
			}
			pressioneEnterParaContinuar ("\n\nPressione enter para voltar ao menu")
			retornarMenu("",300)
     }

	
	// =========================================== utilitários =========================================== 
	
	funcao linha(inteiro tamanho){
			para (inteiro i=0; i<tamanho; i++)
				escreva ("=")		
	}

	funcao linhaSimples(inteiro tamanho){
			para (inteiro i=0; i<tamanho; i++)
				escreva ("-")		
	}

	funcao pressioneEnterParaContinuar(cadeia i){
		cadeia enter
		escreva(i)	
		leia(enter)
	}

	funcao retornarMenu(cadeia i, inteiro tempo){
		escreva(i)
		u.aguarde(tempo)
		menuInicial(verdadeiro)
	}

	funcao gerarTitulo (cadeia titulo){
		limpa()
		
		inteiro tamanho = txt.numero_caracteres(titulo)
		
		linha(tamanho+6)
		escreva("\n   "+titulo+"\n")
		linha(tamanho+6)
		escreva("\n")
    }

	funcao opcaoInvalida(){
		escreva("\nOpção Inválida, retornando ao menu...")
		u.aguarde(2000)
		menuInicial(verdadeiro)
	}

	funcao cadeia cEsp(cadeia texto,inteiro espaco){
		// texto se refere ao valor anterior, espaco sera o espacamento entre os valores
		inteiro x = espaco - txt.numero_caracteres(texto)
		para(inteiro j = 1; j <= x; j++){texto+= " "}
		retorne texto
	}

    	funcao retornarDataAtual(){
		escreva(cal.dia_semana_abreviado(cal.dia_semana_atual(), falso, falso), ", ", 	// Dia da Semana Abreviado
		cal.dia_mes_atual(), "/",
		cal.mes_atual(), "/",
		cal.ano_atual(), " ",
		cal.hora_atual(falso), ":",
		cal.minuto_atual(), ":",
		cal.segundo_atual()
		)
	}

	funcao zerarOrcamento (){

		para (inteiro i = 0; i < 6; i++) {
			vProdutoQuantidadeUnitaria[i] = 0
			vProdutoModificadoUnitario[i] = 0.0
			vProdutoPrecoUnitarioLiquido[i] = 0.0
		}	
		
		valorLiquido = 0.0 
		valorBruto = 0.0 
		descontoFinal = 0.0
	}
	
	funcao cadeia validadeEmissao(){
		inteiro validade
		cadeia emissaoValidade
		validade = cal.dia_mes_atual() + 30
		se (validade > 31){
			emissaoValidade = (validade - 31) + "/" +  (cal.mes_atual() + 1) + "/" + cal.ano_atual()	
		}
		senao {emissaoValidade = validade + "/" +  cal.mes_atual() + "/" + cal.ano_atual()}
		retorne emissaoValidade
	}

	funcao logico validarEntrada (cadeia entrada){

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

	funcao loading(cadeia texto, inteiro i){
		
		escreva(texto, "\n|       | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|-      | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|--     | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|---    | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|----   | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|-----  | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|------ | loading")
		u.aguarde(i)
		limpa()
		escreva(texto, "\n|-------| loading")
		u.aguarde(i)		
	}

	funcao creditos(){
		limpa()
		gerarTitulo("Agradecemos pela Preferencia!")	
		escreva("Créditos: \n\n")
		escreva("\tDouglas Maia \n\tGabriel Teixeira \n\tLucas Caldas \n\tNatally Almeida \n\tRaynan Avila \n\tTaynara Aguiar\n\n")
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7878; 
 * @DOBRAMENTO-CODIGO = [36, 42, 79, 133, 143, 206, 229, 242, 271, 297, 312, 317, 322, 328, 334, 345, 351, 358, 369, 382, 393, 411, 438];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */