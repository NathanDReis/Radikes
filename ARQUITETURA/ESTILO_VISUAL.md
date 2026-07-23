# Quebra de Estilo Visual por Reino

Extensão avançada do sistema de [Iluminação e Atmosfera por Região](README.md#5-iluminação-e-atmosfera-por-região). Contexto narrativo em [HISTORIA.md](../PILARES/HISTORIA.md) — "Um Reino Visualmente Diferente".

## Objetivo

Um reino específico pode romper totalmente com o realismo do Pilar 4 — personagens e ambiente mudam de estilo (ex.: cartoon/cel-shaded) ao entrar naquela região, como a mudança de universo em Homem-Aranha: Através do Aracnoverso. É uma exceção pontual e justificada pela lore, não a regra do jogo.

## Como fazer na UE5

- **Ambiente**: o mesmo Post Process Volume por Data Layer usado para cor/neblina, mas com um Post Process Material completo (cel-shading, contornos, halftone, preto-e-branco).
- **Personagens**: dois conjuntos de material por personagem — o realista padrão e um toon/cel-shaded com Custom Lighting Model. Um trigger na entrada do reino troca o material aplicado.
- **Animação** (opcional, bem mais trabalho): poses mais exageradas exigem um segundo conjunto de animações retargetado, trocado via Linked Anim Layers.

## Nível de dificuldade

Isso é shader/material avançado — escrever um modelo de shading toon e um pass de contorno é programação de shader de verdade, bem além do nível do checklist de [Primeiros Passos](PRIMEIROS_PASSOS.md). Tratar como marco de bem mais adiante no projeto.
