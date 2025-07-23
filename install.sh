#!/bin/bash

echo "🔧 Aguardando VS Code estar pronto..."

for i in {1..60}; do
  code --version || echo "Erro no code"

  if code --version &> /dev/null; then
    echo "✅ VS Code CLI disponível, instalando extensão..."
    code --install-extension esbenp.prettier-vscode
    break
  else
    echo "⏳ VS Code ainda não disponível... (tentativa $i)"
  fi
  sleep 1
done
