# Hardware (nota temporária)

## Situação atual

- Processador Ryzen razoável.
- Placa gráfica integrada (sem GPU dedicada).
- 32 GB RAM DDR5.
- Monitor de 27 polegadas.
- SSD de 240 GB, com pouco espaço livre — está deixando o Blender lento hoje.

## Plano

- Comprar um SSD M.2 de 1 TB — praticamente obrigatório, já que só a Unreal Engine 5 ocupa mais de 100 GB, e os assets do Quixel Megascans somam bastante mais.
- Comprar uma GPU dedicada mais adiante — a placa integrada será o gargalo real para Nanite e principalmente Lumen (iluminação global em tempo real), mais do que para o armazenamento.

## Enquanto isso: configurações para gráfico integrado

- Em **Settings → Engine Scalability Settings**, deixar tudo em Low/Medium (afeta o viewport do editor, não só o jogo empacotado).
- Desativar o **Lumen** por enquanto (usar iluminação estática/baked em vez de tempo real).
- Reduzir a resolução de renderização (*screen percentage*).
- Reativar Lumen e qualidade alta quando a GPU dedicada chegar.
