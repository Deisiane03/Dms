#!/bin/bash

# Diretório onde os scripts estão localizados
DIR="sistema_de_arquivos"

# Função para testar o sistema de arquivos
test_sistema_de_arquivos() {
    # Criar um arquivo
    "$DIR/criar_arquivo.sh" "teste.txt"

    # Listar arquivos e verificar se "teste.txt" está na lista
    lista_arquivos="$("$DIR/listar_arquivos.sh")"
    if [[ "$lista_arquivos" == *"teste.txt"* ]]; then
        echo "Teste de criação e listagem de arquivos passou!"
    else
        echo "Teste de criação e listagem de arquivos falhou."
        exit 1
    fi

    # Excluir o arquivo
    "$DIR/excluir_arquivo.sh" "teste.txt"

    # Verificar se o arquivo foi excluído
    if [ ! -e "sistema_de_arquivos/teste.txt" ]; then
        echo "Teste de exclusão de arquivo passou!"
    else
        echo "Teste de exclusão de arquivo falhou."
        exit 1
    fi
}
# Executar o teste de sistema de arquivos
test_sistema_de_arquivos
