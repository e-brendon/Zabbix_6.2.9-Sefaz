# Funcionalidade dos scripts 
# Script sefaznfe.discovery.sh usa o wget para fazer o download do site e salvar em um arquivo em /tmp
Caso retorne 0 significa que houve falha ao fazer o download 
# Script sefaznfe.consulta.sh faz a analize do que foi baixado e retorna os valos:
1 - A Bolinha está Verde Significa que está tudo funcionando devidamente
2 - A Bolinha está amarela, ou seja o funcionamento daquele módulo não está funcionando bem, ou aprensenta falta de disponibilidades 
5 - Caso retorne 5 significa que não foi encontrado nada no arquivo que foi salvo em /tmp
0 - A Bolinha está Vermelha e não está disponível naquele estado
