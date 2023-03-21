programa
{
	//Fazer um programa para um banco que deverá ter quatro usuários e senha cadastrados em um vetor ou matriz.
	//Quando executar o programa deverá pedir o nome do usuário e senha cadastrados, caso não exista deverá encerrar o programa,
	//caso o usuário esteja cadastrado deverá ser exibida a mensagem de boas vindas e um menu com as seguintes opções
	cadeia usuario = "", senha = ""
	cadeia matriz[4][2]={{"yago","111"},{"Bento","222"},{"Maria","333"},{"Timtim","444"}}
	logico acesso_liberado = falso
	inteiro opcao = 99
	real conta = 0.0
	funcao inicio()
	{
		entradaDados()
		usuario_existe()
		acesso_liberado = usuario_existe()
		se(acesso_liberado == falso){
			escreva("Usuário e senha não encontrados !!")
		}senao{
			escreva("Boas vindas !!")
			menu()
		}
	}
	funcao menu(){
		enquanto(opcao != 4){
			escreva("\n1- Depositar\n2- Sacar\n3- Saldo\n4- Sair\n")
			leia(opcao)
			escolha(opcao){
				
				caso 1: 
					depositar(conta)
				pare
				caso 2: 
					sacar(conta)
				pare
				caso 3: 
					escreva("\nO saldo é: ",conta)
				pare
				caso 4: 
					escreva("\nPrograma encerrado !!")
				pare
				caso contrario: 
					escreva("Opção inválida !!")
				pare
			}		
			
		}
	}
	funcao entradaDados(){
		escreva("Digite o usuário: ")
		leia(usuario)
		escreva("\nDigite a senha: ")
		leia(senha)
		
	}
	funcao logico usuario_existe(){
		para(inteiro i=0; i < 4; i++){
			se(matriz[i][0] == usuario e matriz[i][1] == senha){
				retorne verdadeiro
			}	
		}
		retorne falso
	}
	funcao depositar(inteiro deposito){
		escreva("\nMontante a ser depositado: ")
		leia(deposito)
		conta = conta + deposito
	}
	funcao sacar(real saque){
		escreva("\nMontate a ser sacado: ")
		leia(saque)
		conta = conta - saque
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */