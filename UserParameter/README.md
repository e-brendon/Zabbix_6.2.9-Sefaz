Primeiro, teste o comando personalizado no host onde você criará o parâmetro do usuário.
Abra o arquivo de configuração do Zabbix Agent em um editor de texto. O caminho para o arquivo pode variar, mas geralmente é /etc/zabbix/zabbix_agentd.conf.
Defina o parâmetro do usuário:
Para um parâmetro de usuário simples, adicione a linha: UserParameter=chave,comando
Para um parâmetro de usuário flexível, adicione a linha: UserParameter=chave[*],comando
A chave deve ser única e fácil de referenciar (deve ser exclusiva dentro de um host).
Reinicie o agente Zabbix ou use a opção de controle de tempo de execução do agente para atualizar o novo parâmetro, por exemplo: zabbix_agentd -R userparameter_reload.
Ao configurar um item, insira a chave para referenciar o comando do parâmetro do usuário que você deseja executar.
Aqui estão alguns exemplos de parâmetros de usuário:

Parâmetro de usuário simples:
Comando: UserParameter=ping,echo 1
O agente sempre retornará ‘1’ para um item com a chave ‘ping’.
Parâmetro de usuário flexível:
Comando: UserParameter=mysql.ping,mysqladmin -uroot ping | grep -c vivo
O agente retornará ‘1’ se o servidor MySQL estiver ativo e ‘0’ caso contrário
