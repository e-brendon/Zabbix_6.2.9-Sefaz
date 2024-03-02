# Configurando UserParameter
1. Acesse o zabbix_agent.conf para configurar a utilização de parametros personalizados, para isso precisamos editar o arquivo de configuração:
   Com um editor de texto abra esse arquivo
   ```
   /etc/zabbix/zabbix_agentd.conf
   ```
2. Na linha: #UnsafeUserParameter=0
   Precisa descomentar a linha (Remover o "#" da frente) e alterar de 0 para 1 para poder ser executado os comandos personalizados
3. Apos descomentar a linha UnsafeUserParameter  e deixando ativa, precisamos colocar os parametros personalizado, para isso é só colar as linhas do arquivo: UserParameter.txt contida nesse diretório para a linha abaixo que acabou de alterar, abaixo de UnsafeUserParameter=1, ficando assim:
```
...
UnsafeUserParameters=1
UserParameter=discovery[*],/usr/lib/zabbix/externalscripts/sefaznfe.discovery.sh $1
UserParameter=autstatus[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
UserParameter=retoaut[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
UserParameter=inustatus[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
UserParameter=consprot[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
UserParameter=servstatus[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
UserParameter=conscad[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
UserParameter=recevent[*],/usr/lib/zabbix/externalscripts/sefaznfe.consulta.sh $1 $2
...
```
