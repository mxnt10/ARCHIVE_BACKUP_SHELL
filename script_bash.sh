#!/bin/bash

# 1. declare com tipos e array
declare -i numero=42
declare -a array=(a b c)

# 2. Trabalhando com arrays
arr=(um dois tres)
echo "Primeiro elemento: ${arr[0]}"
arr+=(quatro)

# 3. Expressões aritméticas com (( ))
x=10
if (( x > 5 )); then
    echo "x é maior que 5"
fi

# 4. Comparadores com [[ ]]
var="foobar"
if [[ "$var" == foo* ]]; then
    echo "Começa com foo"
fi

# 5. Substituição indireta de variáveis
varname="USER"
echo "Usuário atual: ${!varname}"

# 6. Operador [[ e expressões compostas
foo=""
bar="-x"
if [[ -z $foo || $bar == -* ]]; then
    echo "Expressão composta com [[ ]] funcionou"
fi

# 7. Atribuição com +=
str="Hello"
str+=" World"
echo "$str"

args=("primeiro")
args+=("segundo")
echo "Args: ${args[*]}"

# 8. Função com 'function'
function minha_funcao {
    echo "Função Bash funcionando"
}
minha_funcao

# 9. Redirecionamento com &>
comando_qualquer() {
    echo "stdout"
    echo "stderr" >&2
}
comando_qualquer &> saida.log

# 10. Substituição de processo com <( )
diff <(echo a) <(echo b)
