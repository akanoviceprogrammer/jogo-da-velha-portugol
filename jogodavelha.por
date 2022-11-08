programa
{
	
	funcao inicio()
	{
		cadeia tabuleiro[3][3]
		inteiro jogoGanho = 0
		cadeia vencedor = "0"

		iniciarTabuleiro(tabuleiro)

		enquanto(jogoGanho != 1){
			cadeia jogador
			inteiro x, y
			leia(jogador)
			leia(x)
			leia(y)

			se(tabuleiro[x][y] == "I"){ //Pode ocupar a posição com sua peça
				tabuleiro[x][y] = jogador
				escreverTabuleiro(tabuleiro)

				para(inteiro i = 0; i < 3; i++){
					se(tabuleiro[i][0] == jogador e tabuleiro[i][1] == jogador e tabuleiro[i][2] == jogador){
						vencedor = jogador
						jogoGanho = 1
					}
					se(tabuleiro[0][i] == jogador e tabuleiro[1][i] == jogador e tabuleiro[2][i] == jogador){
						vencedor = jogador
						jogoGanho = 1
					}
				}

				se(tabuleiro[0][0] == jogador e tabuleiro[1][1] == jogador e tabuleiro[2][2] == jogador){ //Vitória Diagonal
					vencedor = jogador
					jogoGanho = 1
				}
				se(tabuleiro[0][2] == jogador e tabuleiro[1][1] == jogador e tabuleiro[2][0] == jogador){
					vencedor = jogador
					jogoGanho = 1
				}
			} senao {
				escreva("A posição inserida é inválida ou já ocupada por outra peça. Tente novamente. \n")
			}
		}

		escreva("O jogo acabou. O vencedor foi ", vencedor)
	}

	funcao iniciarTabuleiro(cadeia tabuleiro[][]){
		para(inteiro i = 0; i < 3; i++){	
			para(inteiro j = 0; j < 3; j++){
				tabuleiro[i][j] = "I"
			}
		}
	}

	funcao escreverTabuleiro(cadeia tabuleiro[][]){
		para(inteiro i = 0; i < 3; i++){	
			para(inteiro j = 0; j < 3; j++){
				escreva(tabuleiro[i][j], " ")
			}
			escreva("\n")
		}
	}
}
