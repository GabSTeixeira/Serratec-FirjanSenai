/*
 * Crie um programa que leia 4 notas.
 * Faça a média das notas e informe se o aluno está aprovado, em recuperação ou reprovado.
 * Aprovado = média maior ou igual a 6
 * Recuperação = média maior ou igual a 5
 * Reprovado = média menor que 5
 * 
 * 
 * (10 + 5 + 7 + 8) / 4
 * 
 * Entradas
 * 	nota1
 * 	nota2
 * 	nota3
 * 	nota4
 * 	media
 * Processamento
 *   calcular a media
 *   verificar as condições
 * Saída
 *   imprimir a informação de acordo com as condições
 *   
 */


programa
{
	const real MINIMA = 7.0
	const real RECUPERA = 6.0
	
	funcao inicio()
	{
		real nota1, nota2, nota3, nota4, media

		nota1 = 9.9
		nota2 = 8.5
		nota3 = 5.6
		nota4 = 7.0

		media = (nota1 + nota2 + nota3 + nota4) / 4

		se(media >= MINIMA) {
			escreva("Parabéns! Aluno aprovado!")
			escreva("Vá ao próximo pólo para pegar seu certificado")
		}			
		senao se(media >= RECUPERA)
			escreva("Nos vemos na recuperação.") 
		senao
			escreva("Que pena... aluno reprovado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 946; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media, 33, 35, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */