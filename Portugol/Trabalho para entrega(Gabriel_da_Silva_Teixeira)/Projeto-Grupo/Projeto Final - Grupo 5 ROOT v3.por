programa
{
	//Bibliotecas
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> txt
	inclua biblioteca Calendario --> cal
	inclua biblioteca Tipos --> tp
	
	//Vetores Produto
	const cadeia vProdutoCodigo[6] = {"1","2","3","4","5","6"}
	const cadeia vProdutoNome[6] = {"Parafuso", "Arruela", "Porca", "Chave de fenda", "Broca", "Bucha"}
	real vProdutoPreco[6] = {2.00,3.00,1.00,2.00,3.00,4.00}
	real vProdutoPrecoUnitarioLiquido[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, vProdutoModificadoUnitario[] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
	inteiro vProdutoQuantidadeUnitaria[] = {0, 0, 0, 0, 0, 0}
	inteiro vProdutoEstoque[6] = {60,50,10,80,30,20}
	
	//relatorio
	cadeia usuarioAtual = ""
	inteiro dataAtual = cal.dia_mes_atual()
	real valorLiquido = 0.0, valorBruto = 0.0, descontoFinal = 0.0

	//tipo de pagamento
	const real tipoPagamento[3] = {1.05, 1.00, 0.95}
	cadeia vMetodoPagamento[3] = {"Prazo","Credito","A Vista"}

	// =========================================== main ===========================================
	funcao inicio()
	{
		menuInicial(falso)
	}
	
	// =========================================== menus ===========================================
	funcao menuInicial(logico nomeRegistrado){
	   //listar produtos
	   //calcular
		caracter opcao
		
		se (nao nomeRegistrado) {
			gerarTitulo("LOJA DE FERRAMENTAS HARD")
			escreva("Informe seu nome: ")
			leia(usuarioAtual)
			limpa()
		}
		loading("Iniciando Programa", 60)
		limpa()
		loading("Bem-vindo, " + usuarioAtual + "!", 70)
	
		gerarTitulo("LOJA DE FERRAMENTAS HARD")
		escreva ("Bem-vindo, ", usuarioAtual, ".\n")
		escreva("\nEscolha uma Opção:\n(1) Orçamento\t\t\n(2) Produtos\t\t\n(3) Sair\nOpção: ") leia(opcao)
		escolha(opcao){
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

	// =========================================== funcoes ===========================================

	//INICIAR NOVO ORCAMENTO
	funcao gerarNovoOrcamento(){
		limpa()
		caracter opcao
		logico loop = verdadeiro
		
		
		faca  {
		
			escreva("1. Prazo\n")
			escreva("2. Crédito\n")
			escreva("3. Vista\n\n")
			escreva("4. Retornar Menu\n")
			escreva("Qual será o método de pagamento?: ") leia(opcao)

			escolha (opcao) {
				caso '1':
					loop = falso
					calcular(tipoPagamento[0])
					
					pare
				caso '2':
					loop = falso
					calcular(tipoPagamento[1]) 
					
					pare
				caso '3':
					loop = falso
					calcular(tipoPagamento[2]) 
						
					pare
				caso '4':
					loop = falso
					retornarMenu("", 200)
					pare
				caso contrario:
					escreva("\nOpção invalida")
					u.aguarde(750)
					limpa()	
			}
			
		} enquanto (loop)

	}

	funcao calcular(real metodoPagamento) {
		limpa()
		zerarOrcamento()
		opcoesCompra(metodoPagamento)
		//limpa()
		//imprimirOrcamento()
	}
	
	funcao opcoesCompra(real metodoPagamento) {
		cadeia codigoInformado
		inteiro contador = 0
		cadeia opcaoLoop
		cadeia quantidade = ""
		
		faca {
			limpa()
			faca{
				limpa()
				gerarTitulo("	ORÇAMENTO PREVIEW")							  
				escreva("(Digite 0 Para Finalizar a lista de compras)\n")				  											  
				escreva("\n")											 
				imprimirOrcamentoPreviewComQuantidade()											  

				//limpa()
				escreva("\nInforme o código do Produto: ") leia(codigoInformado)
				se (codigoInformado == "0") {
					contador = 100
					pare
				}
				escreva("Quantidade: ") leia(quantidade)
				
			} enquanto (nao validarEntrada(codigoInformado) ou nao validarEntrada(quantidade))
			
			
														 
			escolha (tp.cadeia_para_inteiro(codigoInformado, 10)) {
				caso 1:		
						realizarCalculoVenda(0, tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
					pare
				caso 2:
						realizarCalculoVenda(1, tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
					pare
				caso 3:
						realizarCalculoVenda(2, tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
					pare
				caso 4:
						realizarCalculoVenda(3, tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
					pare
				caso 5:
						realizarCalculoVenda(4, tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
					pare
				caso 6:
						realizarCalculoVenda(5, tp.cadeia_para_inteiro(quantidade, 10), metodoPagamento)
					pare
				caso contrario:
					se (codigoInformado != "0") {
						escreva("PRODUTO NÂO ENCONTRADO")						  
						u.aguarde(900)		
					}
			}
			
			se (contador >= 99) {
				limpa()
				imprimirOrcamentoPreviewComQuantidade()
				escreva("\nDeseja gerar o orçamento? (s/n): ")
				leia(opcaoLoop)
				se (txt.caixa_baixa(opcaoLoop) == "s") pare	
				contador = 0
			}
			contador++
		} enquanto(verdadeiro)	


		imprimirRodaPe(metodoPagamento)
		pressioneEnterParaContinuar ("\n\nPressione enter para voltar ao menu")
		retornarMenu("",300)
	}

	funcao realizarCalculoVenda (inteiro indice, inteiro quantidade, real metodoPagamento) {
		real calculoBruto
		
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

	funcao imprimirRodaPe (real metodoPagamento) {
		limpa()
		loading("Verificando Método de Pagamento escolhido...\n", 150)
		limpa()
		loading("Calculando descontos...\n", 150)
		limpa()
		loading("Gerando Relatório, Aguarde...\n", 300)
		limpa()
		linha(96)
		escreva("\n  Cliente: TESTE BOTAFOGO" + "  Emissão: ")
		retornarDataAtual()
		escreva("		Validade: " + validadeEmissao() + "\n")
		linha(96)
		escreva("\n")
		imprimirOrcamentoPreview ()
		linha(96)
		
		para (inteiro i = 0; i < 6; i++) {
			valorBruto += (vProdutoPreco[i] * vProdutoQuantidadeUnitaria[i])
		}	
		
		valorLiquido = valorBruto * metodoPagamento
		
		
		descontoFinal = (valorBruto - valorLiquido) * -1
		escreva("\n| Valor Bruto: R$"+mat.arredondar(valorBruto, 2)) 
		
		se (metodoPagamento > 1) {
			escreva("\t| Acrescimo Total: +R$"	+ mat.arredondar(descontoFinal, 2)) 
		} senao se (metodoPagamento < 1) {
			escreva("\t| Desconto Total: -R$" + mat.arredondar(descontoFinal*-1, 2)) 
		} senao {
			escreva("\t| Desconto/Acrescimo: 0")
		}
		escreva("\t|\tValor Liquido: R$"+mat.arredondar(valorLiquido, 2), "\t\t|") 
		escreva("\n")
		linha(96)
		escreva("\n")
		//imprimirOrcamentoPreview ()		
	}

	funcao imprimirOrcamentoPreview () {
     	
		escreva("|    COD     |", "     PROD\t\t\t|", "     QTDE\t|","    R$(Un.)\t|","    Valor líquido\t|", "\n")
		linha(96)
		escreva("\n")
		para (inteiro i=0;i<6; i++){
			escreva(	"|    " +cEsp(vProdutoCodigo[i],8)+
				"|    "+ cEsp(vProdutoNome[i],22)+
				"|    "+ cEsp(""+vProdutoQuantidadeUnitaria[i],11)+
				"|    R$"+ cEsp(""+vProdutoModificadoUnitario[i],9),
				"|    R$"+ cEsp(""+vProdutoPrecoUnitarioLiquido[i],17),
				"|\n")
		}
	}

	funcao imprimirOrcamentoPreviewComQuantidade() {
		escreva("|    COD     |    PROD\t\t\t|    QTDE\t|    R$(Un.)\t|    Valor líquido\t|    Estoque\t      |\n\n")
		para (inteiro i=0;i<6; i++){
			escreva(	"|    " +cEsp(vProdutoCodigo[i],8)+
				"|    "+ cEsp(vProdutoNome[i],22)+
				"|    "+ cEsp(""+vProdutoQuantidadeUnitaria[i],11)+
				"|    R$"+ cEsp(""+vProdutoModificadoUnitario[i],9),
				"|    R$"+ cEsp(""+vProdutoPrecoUnitarioLiquido[i],17),
				"|    "+cEsp(""+vProdutoEstoque[i],17),
				"|\n")
		}
		/*para (inteiro i=0;i<6; i++){

			escreva("|\t", vProdutoCodigo[i], "\t|\t",
			vProdutoNome[i], "\t|\t", vProdutoQuantidadeUnitaria[i],
			"\t|\t", vProdutoModificadoUnitario[i], "\t|\t"
			, vProdutoPrecoUnitarioLiquido[i],"\t\t|\n")
		}*/
	}
     	
	funcao imprimirOrcamento() {
		
	}

	
	// =========================================== LISTAR ===========================================

	
    funcao listarProdutos(){
    			gerarTitulo("Lista de Produtos")
    			escreva("   ID \t\t NOME \t\t    PREÇO\n")
    			linha(50)
			para (inteiro i = 0 ; i < 6 ; i++) {
				escreva ("\n   "+ cEsp(vProdutoCodigo[i],13) + cEsp(vProdutoNome[i],21) +  vProdutoPreco[i])
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

	funcao pressioneEnterParaContinuar(cadeia i) { //MODIFICADO, AGORA PODE ESCOLHER A MENSAGEM PARA PLOTAR
		cadeia enter
		escreva(i)	
		leia(enter)
	}

	funcao retornarMenu(cadeia i, inteiro tempo){
		escreva(i)
		u.aguarde(tempo)
		menuInicial(verdadeiro)
	}

	funcao gerarTitulo (cadeia titulo) {
		limpa()
		escreva("==============================\n")
		escreva("   "+titulo+"\n")
		escreva("==============================\n\n")        
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

	funcao zerarOrcamento () {

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

	funcao creditos(){
		limpa()
		gerarTitulo("Agradecemos pela Preferencia!")	
		escreva("Créditos: \n\n")
		escreva("\tDouglas Maia \n\tGabriel Teixeira \n\tLucas Caldas \n\tNatally Almeida \n\tRaynan Avila \n\tTaynara Aguiar\n\n")
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
	
	// Função para listar produtos com opção de selecionar quantidade
	/*funcao listarProdutos(){
		inteiro i
		escreva("\nCódigo\tNome\t\t\tPreço\n")
		para (i = 0; i < 6; i++){
			inteiro codigoSelecionado, quantidade
			escreva("\nDigite o código do produto desejado: ")
			leia(codigoSelecionado)
			escreva("Digite a quantidade desejada: ")
			leia(quantidade)
	
			real precoTotal = vProdutoPreco[codigoSelecionado] * quantidade
			escreva("\nProduto: ", vProdutoNome[codigoSelecionado])
			escreva("\nQuantidade: ", quantidade)
			escreva("\nPreço total: R$", precoTotal)
		}
    }*/    

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1424; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */