#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# Nome     : mkscript.sh
# Descrição: Programa criador de shell scripts 
# Versão   : 1.0
# Criado em: sáb, 02/jan/2021
#-------------------------------------------------------------------------------
# Uso: mkscript.sh <nome-do-script>
#-------------------------------------------------------------------------------

# Opções:
editor="vim"
header="#!/usr/bin/env bash
#-------------------------------------------------------------------------------
# Nome     : $1
# Descrição: 
# Versão   :
# Criado em: $(date '+%a, %d/%b/%Y')
#-------------------------------------------------------------------------------
# Uso: $(basename $1)
#-------------------------------------------------------------------------------
"
[[ $# -ne 1 ]] &&\
	printf "Erro! Informe apenas 1 (um) argumento.\n"  &&\
       	exit 1	
[[ -f $1 ]] &&\
	printf "Atenção! Arquivo já existe. Saindo...\n"  &&\
	exit 1

echo "$header" > $1
chmod +x $1
$editor $1

exit 0
