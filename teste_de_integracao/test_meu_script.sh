#!/bin/bash

# Caminho para o script que você deseja testar
SCRIPT="./meu_script.sh"

# Função para verificar se a saída do script é igual ao esperado
test_addition() {
    resultado="$($SCRIPT 2 3)"
    esperado="5"
    if [ "$resultado" = "$esperado" ]; then
        echo "Teste de adição passou!"
    else
        echo "Teste de adição falhou. Esperado: $esperado, Obtido: $resultado"
        exit 1
    fi
}

# Executar o teste de adição
test_addition
