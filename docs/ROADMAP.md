# Roteiro de Desenvolvimento

Passo a passo prático para sair da documentação e chegar num jogo jogável, seguindo as [Recomendações para Facilitar o Desenvolvimento](README.md#recomendações-para-facilitar-o-desenvolvimento) do README.md: fatia vertical, multiplayer depois, sucessão simplificada no início.

## Fase 0 — Setup

1. Instalar o Godot (4.x estável).
2. Instalar o LibreSprite — ferramenta de arte do projeto (ver [ESTILO_VISUAL.md](ARQUITETURA/ESTILO_VISUAL.md)).
3. Criar o projeto Godot (pode ser uma pasta separada dos documentos de design, ou um subdiretório dentro deste repositório — a decidir).
4. Configurar renderização pixel-perfect: `Project Settings → Rendering → Textures → Default Texture Filter = Nearest`, e um viewport de resolução baixa fixa com stretch mode `viewport` (ver [ESTILO_VISUAL.md](ARQUITETURA/ESTILO_VISUAL.md)).

## Fase 1 — Fundação jogável

Seguir o checklist de [PRIMEIROS_PASSOS.md](ARQUITETURA/PRIMEIROS_PASSOS.md): personagem placeholder com movimento, `TileMap` de terreno, vegetação com vento simples. Só depois arte final.

Construir **um único mapa: Aurenor** — nenhum outro reino ainda.

## Fase 2 — Loop principal (ainda single-player)

5. Uma profissão completa, ponta a ponta (ex.: mineração ou agricultura), como modelo do Sistema de Progressão: contador de XP, limiares de nível, uma receita/produto no fim. Só depois de validado, replicar para as demais profissões.
6. Inventário básico + mercado simples (preços fixos por enquanto, ver Economia Viva em [PILARES/FILOSOFIA.md](PILARES/FILOSOFIA.md)).
7. Construção em grade (colocar/remover uma casa ou oficina).

## Fase 3 — Primeiro gancho de história

8. 1-2 ruínas/inscrições no mapa de Aurenor como fragmentos de lore descobríveis (ver "A Descoberta" em [PILARES/HISTORIA.md](PILARES/HISTORIA.md)).
9. Diário/codex simples que coleta esses fragmentos (ver "Sugestões para Melhorar a Experiência" no README.md) — valida cedo o loop de descoberta.

## Fase 4 — Semente do Conhecimento

10. A leitura da língua dos sábios em miniatura: um manuscrito cujo texto vai se revelando conforme uma habilidade evolui (ver "A Língua dos Sábios" em HISTORIA.md) — é o núcleo do Conhecimento e é bem implementável como um efeito de texto progressivo ligado a um contador de XP.

## Fase 5 — Expandir

11. Só depois do loop de Aurenor estar estável e divertido: adicionar um segundo reino como cena nova, validando a arquitetura de "reino = cena" pelo menos duas vezes antes de continuar.
12. Multiplayer, sucessão completa (herdeiro/parente temporário) e os reinos/habilidades restantes entram depois disso — não antes.

## Fase 6 — Playtest

13. Jogar só a "vida comum" (profissão + construção + comércio), sem tocar no mistério, por um tempo — se isso já for divertido sozinho, o resto do jogo tem uma base sólida por baixo (ver Princípio Central em FILOSOFIA.md).
