local lang = {
  dmv = {
    police = {
	  check = "Checar Porte de Arma",
	  take = "Pegar Porte de Arma",
	  perm_ask = "police.ask_firearms",
	  perm_take = "police.take_license",
	  check_desc = "Verifique o porte de arma do jogador mais próximo.",
	  take_desc = "Pegue o porte de arma do jogador mais próximo.",
	  ask = "Perguntando sobre o porte de armas...",
	  request = "Deseja mostrar seu porte de arma?",
	  request_hide = "Esconda o cartão de licença.",
	  confirm = "Tem certeza de que quer tomar esta licença?",
	  license = "<em>Nome: </em>{1}<br /><em>Sobrenome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>RG n°: </em>{4}<br /><em>Telefone: </em>{5}<br /><em>Data: </em>{6}<br /><em>Porte de Arma: OK </em><br />",
	  no_license = "~r~Este jogador não tem porte de arma!",
	  took_license = "~g~O porte de arma foi removido.",
	  license_taken = "~r~Seu porte de arma foi removido!"
    },
  },
  client = {
	buy_success = "~g~Você comprou seu porte de armas",
	interact = "Pressione ~INPUT_CONTEXT~ para comprar ~y~Porte de arma",
	menu = {
	  obtain = "Porte de arma",
	  practical = "Comprar porte de arma    R$20000",
	  mreturn = "Return",
	  mclose = "Close",
	},
  },
}

return lang