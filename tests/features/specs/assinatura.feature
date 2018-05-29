#language: pt

@assinatura
Funcionalidade: Logar, Efetuar Assinatura e Deslogar
     Sendo um usuário, posso logar no Sistema. 
     Após efetuar login, Abrir modal de Assinatura.
     Selecionar plano e escolher pagar por Boleto.
     Concluir Assinatura. 
     Efetuar logout do Sexlog e encerrar o teste.

 Cenário: Logar, realizar Assinatura e Deslogar

      Dado Usuário Efetua Login no Sexlog preenchendo os dados
      Quando Abrir Modal de Assinatura e selecionar um plano
      E Escolher forma de Pagamento por Boleto
      Então Conclui a assinatura    
      Quando selecionar em Avatar
      Então efetuará Logout
  
