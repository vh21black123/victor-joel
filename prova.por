programa {
  funcao inicio() {
    real transport, name, grossSalary, transport, security, incomeTax, incomeTaxBase
    inteiro children
    cadeia name, opcao = "sim"

    enquanto (opcao == "Sim" ou opcao == "sim") {
    escreva("Digite o nome do funcionário : \n")
    leia(name)

    escreva("Digite o valor do seu salário bruto: R$ \n")
    leia(grossSalary)

    escreva("Quantos filhos/dependentes você tem? \n")
    leia(children)

    transport = 350
    transport = grossSalary * 0.06

    se (grossSalary <= 1518){
      security = grossSalary * 0.075
    }
    senao se (grossSalary <= 2793.88){
      security = grossSalary * 0.09
    }
    senao se (grossSalary <= 4190.83){
      security = grossSalary * 0.12
    }
    senao se(grossSalary <= 5157.43){
      security = grossSalary * 0.14
    }
    incomeTaxBase = grossSalary - security - (children * 189.59)

    se(incomeTaxBase >= 2259.20 e incomeTaxBase <= 2826.65){
      incomeTax = (incomeTaxBase * 0.075) - 169.44
    }
    senao se (incomeTaxBase <= 3751.05){
      incomeTax = (incomeTaxBase * 0.15) - 381.44
    }
    senao se(incomeTax <= 4664.68){
      incomeTax = (incomeTaxBase * 0.225) - 662.77
    }
    senao {
      incomeTax = (incomeTaxBase * 0.275) - 896
    }
    escreva("************************************************\n")
    escreva("Nome do funcionário: " + name + "\n")
    escreva("Número de filhos/dependentes: " + children + "\n")
    escreva("************************************************\n")
    escreva("Salário Bruto: " + grossSalary + "\n")

    se (transport > transport){

      escreva("Vale transporte = " + transport + "\n")
    }
    escreva("******************************************\n")
    escreva("Descontos \n")
    escreva("*******************************************\n")
    escreva("INSS: R$ " + security + "\n")

    se(incomeTax > 0) {
      escreva("IRPF: R$ " + incomeTax + "\n")
    }
    se(transport > transport) {
      escreva("Vale Transporte: R$ " + transport + "\n")
    }
    escreva("***********************************\n")
    escreva("Total de recebido: R$ " + (grossSalary + transport) + "\n")
    escreva("Total de descontos recebidos: R$ " + (security + incomeTax + transport) + "\n")
    escreva("**************************************************\n")
    escreva("Total a receber: R$ " + ((grossSalary + transport)-(security + incomeTax + transport)) + "\n")
    escreva("**************************************************\n")



    }
    
  }
}
  }
}
