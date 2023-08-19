# Declaração de variáveis
menu = """

[d] Depositar
[s] Sacar
[e] Extrato
[q] Sair

"""

saldo = 0
limite = 500
extrato = ""
numero_saques = 0
LIMITE_SAQUES = 3

while True:
    opcao = input(menu)

    if (opcao == 'd'):
        valor = float(input("Informe o valor do depósito: R$"))
        if (valor > 0):
            saldo += valor
            extrato += f"C R$ {valor:.2f}\n"

        else:
            print("O valor inválido")
    
    elif opcao == "s":
        valor = float(input("informe o valor de saque: "))
        excedeu_saldo = valor > saldo

        excedeu_limite = valor > limite

        excedeu_saques = numero_saques >= LIMITE_SAQUES

        if excedeu_saldo:
            print("Saldo insuficiente")

        elif excedeu_limite:
            print(f"Valor acima do limite de R${limite:.2f} por saque")

        elif excedeu_saques:
            print("Número máximo de saques excedido")

        elif valor > 0:
            saldo -= valor
            extrato += f"D R${valor:.2f}\n"
            numero_saques += 1

        else:
            print("Valor inválido")

    elif opcao == "e":
        print("\n","*"*25, "EXTRATO", "*"*25)
        print("Sem movimentações" if not extrato else extrato)
        print(f"\nSaldo: R$ {saldo:.2f}")
        print("\n", "*"*60)

    elif opcao == "q":
        break

    else:
        print("Operação inválida. Digite novamente a operação desejada")

