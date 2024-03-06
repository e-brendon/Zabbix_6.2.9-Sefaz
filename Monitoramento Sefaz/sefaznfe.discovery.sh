#!/usr/bin/env bash
#
#  sefaznfe.discovery.sh - Realiza o download da página do serviço de NFE da receita federal
#
# ------------------------------------------------------------------------ #
# - Realiza o download da página e salva em /tmp com o nome statusNFE.txt.
#  Se ele tiver sucesso no download ele retorna o valor 1, caso tenha falha ou
#  a página estiver offline ele retorna 0.
#
#  Exemplos:
#     $ ./sefaznfe.discovery.sh http://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx?versao=0.00&tipoConteudo=Skeuqr8PQBY=
#     Neste exemplo o script realiza o download do link, se o resultado for 1
#     significa que o download da página foi feito com sucesso e armaenando dentro do /tmp.
#     Caso o valor for 0 houve alguma falha no download.
# ------------------------------------------------------------------------ #
# Histórico:
#
#    - Adcionado cabeçalho e comentários ao script.
#    - Substituído curl por wget.
#
# ------------------------------------------------------------------------ #
#  Testado em:
#   bash 5.1.4
#   Wget 1.21
# ------------------------------- VARIÁVEIS ----------------------------------------- #
WGET=$(which wget)
AWK=$(which awk)
CAT=$(which cat)
EGREP=$(which egrep)
LINK=$1 # Link tem que ser adicionado na macro do host no zabbix.
ARQUIVO_TEMPORARIO="/tmp/statusNFE.txt" # Local onde será salvo as informações da página
# ------------------------------- EXECUÇÃO ----------------------------------------- #
# Download do link fornecido.
if $WGET -q -O $ARQUIVO_TEMPORARIO "$LINK"; then
  echo "1" # Download realizado com sucesso
else
  echo "0" # Falha ao realizar o download
fi
