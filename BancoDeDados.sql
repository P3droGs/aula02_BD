Table EventoRelatado [headercolor: #175e7a] {
	idRelato integer [ pk, increment, not null, unique ]
	Data integer
	Localização integer
	Tipo integer

	indexes {
		() [ name: 'Evento Relatado_index_0' ]
	}
}

Table Usuário [headercolor: #175e7a] {
	CPF integer [ pk, increment, not null, unique ]
	Nome varchar
	Telefone integer
	email varchar
}

Table RelatorioUsuario [headercolor: #175e7a] {
	idRelatorio integer [ pk, increment, not null, unique ]
	descricao 
	data 
	foto 
}

Ref fk_Usuário_CPF_RelatorioUsuario {
	Usuário.CPF < RelatorioUsuario.idRelatorio [ delete: no action, update: no action ]
}

Ref fk_RelatorioUsuario_idRelatorio_EventoRelatado {
	RelatorioUsuario.idRelatorio < EventoRelatado.idRelato [ delete: no action, update: no action ]
}
