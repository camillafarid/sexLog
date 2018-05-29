# encoding: utf-8

Dado("Usuário Efetua Login no Sexlog preenchendo os dados") do
    @user.load
    @user.login
 end
  
  Quando("Abrir Modal de Assinatura e selecionar um plano") do
    find('div[class="navbar-actions ng-scope"]').click
    plans = find('ul[class="plans"]').all('li')
    plans[3].click
  end
  
  Quando("Escolher forma de Pagamento por Boleto") do
    find('button[ng-click="$subscribe.setPlan(selected, $event)"]').click
    payment = find('ul[class="nav nav-tabs nav-stacked"]').all('li')
    payment[2].click
  end
  
  Então("Conclui a assinatura") do
    find('input[name="cpf"]').send_keys("388.547.258-97")
    find('button[ng-click="$subscribe.save()"]').click
    find('button[ng-click="closeSubscribe()"]').click
  end
  
  Quando("selecionar em Avatar") do
    find('ul[class="profile dropdown"] li').click
  end
  
  Então("efetuará Logout") do
    find('a[href="https://www.sexlog.com/auth/logout"]').click
  end