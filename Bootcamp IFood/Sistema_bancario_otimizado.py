# para deixar a apresentação mais bonita
import textwrap


def menu():
    menu = """\n
===== MENU =====
[d] Depositar
[s] Sacar
[e] Extrato
[c] Nova conta
[l] Listar contas
[u] Novo usuário
[q] Sair
_________________
"""
    return input(textwrap.dedent(menu))

# A barra indica que os argumentos são apenas POSICIONAIS
def depositar(saldo, valor, extrato, /):
    if (valor > 0):
                saldo += valor
                extrato += f"C   R${valor:.2f}\n"
                print("\nDepósito realizado com sucesso")
    else:
        print("\nValor inválido")
    return (saldo, extrato)

# Recebe os argumentos apenas por nome (keyword only)
def sacar(*, saldo, valor, extrato, numero_saques, limite, limite_saques):

    excedeu_saldo = valor > saldo
    excedeu_limite = valor > limite
    excedeu_saques = numero_saques >= limite_saques

    if excedeu_saldo:
        print("Saldo insuficiente")

    elif excedeu_limite:
        print(f"Valor acima do limite de R${limite:.2f} por saque")

    elif excedeu_saques:
        print("Número máximo de saques excedido")

    elif valor > 0:
        saldo -= valor
        extrato += f"D   R${valor:.2f}\n"
        numero_saques += 1
        print(f"Saque realizado com sucesso no valor de R${valor:.2f}\n")

    else:
        print("Valor inválido")

    return(saldo, extrato, numero_saques)

# Recebe os argumentos de forma posicional (saldo) e nomeada (extrato)
def exibir_extrato(saldo, /, *, extrato):
    saldo = saldo
    extrato = extrato
    print("\n","*"*25, "EXTRATO", "*"*25)
    print("Sem movimentações" if not extrato else extrato)
    print(f"\nSaldo: R${saldo:.2f}")
    print("\n", "*"*60)


def criar_conta(agencia, usuarios, numero_conta):
    cpf = input("Informe o CPF do usuário (somente número): ")
    usuario = filtrar_usuario(cpf, usuarios)

    if usuario:
        print("Conta criada com sucesso")
        return {"agencia": agencia, "numero_conta": numero_conta, "usuario": usuario}

    print("Usuário não encontrado, a conta não pode ser criada")
    return None

def listar_contas(contas):
    
    print(f"Agência\t Conta\t Titular")
    for conta in contas:
        print(f"{conta['agencia']}\t {conta['numero_conta']}\t {conta['usuario']['nome']}")

def filtrar_usuario(cpf, usuarios):
    usuarios_filtrados = [usuario for usuario in usuarios if usuario["cpf"] == cpf]
    return usuarios_filtrados[0] if usuarios_filtrados else None

def criar_usuario(usuarios):
    cpf = input("Informe o CPF (somente número): ")
    usuario = filtrar_usuario(cpf, usuarios)

    if usuario:
        print("CPF já cadastrado")
        return
    
    nome = input("Informe o nome completo: ")
    data_nascimento = input("Informe a data de nascimento (dd-mm-aaaa): ")
    endereco = input("Informe o endereço (logradouro, número - bairro - cidade/sigla do estado): ")

    usuarios.append({"nome": nome, "data_nascimento": data_nascimento, "cpf": cpf, "endereco": endereco})

    print("Usuário cadastrado com sucesso")


def main():

    saldo = 0
    limite = 500
    extrato = ""
    numero_saques = 0
    LIMITE_SAQUES = 3
    AGENCIA = "0001"
    usuarios = []
    contas = []
    numero_conta = 1

    while True:
        opcao = menu()

        if (opcao == 'd'):
            valor = float(input("Informe o valor do depósito: R$"))
            saldo, extrato = depositar(saldo, valor, extrato)
            
        
        elif opcao == "s":
            valor = float(input("informe o valor de saque: "))

            valor, extrato, numero_saques = sacar(
                saldo=saldo,
                valor=valor,
                extrato=extrato,
                numero_saques=numero_saques,
                limite=limite,
                limite_saques=LIMITE_SAQUES
                )
            
        elif opcao == "e":
            exibir_extrato(saldo, extrato=extrato)

        elif opcao == "c":
            conta = criar_conta(AGENCIA, usuarios, numero_conta)

            if conta:
                contas.append(conta)
                numero_conta += 1

        elif opcao == "l":
            listar_contas(contas)

        elif opcao == "u":
            criar_usuario(usuarios)

        elif opcao == "q":
            break

        else:
            print("Operação inválida. Digite novamente a operação desejada")


main()
