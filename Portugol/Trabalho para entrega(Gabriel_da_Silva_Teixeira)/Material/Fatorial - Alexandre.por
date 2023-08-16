programa {
    
    funcao inicio() {
        inteiro A, sequencia = 1
        
           escreva("Digite um valor maior que zero: ")
           leia(A)
        
      enquanto  (A > 0) {
           
           escreva(" x ", A)
           sequencia = sequencia * A
           A-- 
        }
        
        escreva(" = ", sequencia)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 335; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */