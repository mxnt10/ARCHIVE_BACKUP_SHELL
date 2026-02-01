#!/bin/sh

# 1. Sem declare nem arrays
numero=42
# arrays não existem

# 2. Simulando array com set
set -- um dois tres
echo "Primeiro elemento: $1"
# Adicionar um elemento: reatribuindo todos
set -- "$@" quatro

# 3. Expressão aritmética com test
x=10
if [ "$x" -gt 5 ]; then
    echo "x é maior que 5"
fi

# 4. Comparação com case
var="foobar"
case "$var" in
    foo*) echo "Começa com foo" ;;
esac

# 5. Substituição indireta com eval
varname="USER"
eval "valor=\$$varname"
echo "Usuário atual: $valor"

# 6. Expressão composta usando case
foo=""
bar="-x"
if [ -z "$foo" ] || case "$bar" in -*) true ;; *) false ;; esac; then
    echo "Expressão composta simulada"
fi

# 7. Concatenando string
str="Hello"
str="$str World"
echo "$str"

args="primeiro"
args="$args segundo"
echo "Args: $args"

# 8. Função POSIX
minha_funcao() {
    echo "Função POSIX funcionando"
}
minha_funcao

# 9. Redirecionamento POSIX
comando_qualquer() {
    echo "stdout"
    echo "stderr" >&2
}
comando_qualquer > saida.log 2>&1

# 10. Substituição de processo com arquivos temporários
echo a > tmp1.txt
echo b > tmp2.txt
diff tmp1.txt tmp2.txt
rm -f tmp1.txt tmp2.txt
