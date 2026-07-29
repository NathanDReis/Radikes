# Primeiros Passos (Checklist) — Godot

Regra geral: **jogável com asset genérico antes de arte final.**

## 1. Personagem jogável primeiro, com asset genérico

`CharacterBody2D` + `AnimatedSprite2D` com um sprite placeholder (um quadrado ou um asset gratuito qualquer) e movimento top-down em 4 ou 8 direções via `Input`/`move_and_slide()`. Isso dá algo jogável em minutos.

## 2. Terreno com TileMap

Usar o nó `TileMap` do Godot com um tileset placeholder (pode ser gerado ou baixado gratuito) para montar o mapa do primeiro reino e testar a escala do personagem nele.

## 3. Vegetação com vento simples (fácil, sem código de gameplay)

Um shader simples de vertex offset (seno + tempo) no material do sprite da grama/vegetação, ou — ainda mais simples — uma `AnimatedSprite2D` de 2–3 quadros balançando. Não precisa de física real de vento pra pixel art 2D.

## 4. Vegetação reagindo ao personagem (opcional, mais avançado — só depois do item 3)

Um `Area2D` ao redor da vegetação detecta a entrada do personagem e dispara uma animação de "afastar" (squash/tilt) nos sprites próximos.

## 5. Só depois disso, personalizar a arte

Com o personagem-placeholder andando e o tilemap funcionando, substituir por sprites e tileset finais — mesma resolução de tile definida em [ESTILO_VISUAL.md](ESTILO_VISUAL.md). O sprite de mundo (o que anda no mapa) vem primeiro; o retrato de diálogo detalhado de cada personagem (ver "Dois Níveis de Arte" em [ESTILO_VISUAL.md](ESTILO_VISUAL.md)) só é necessário quando aquele personagem ganhar uma cena de diálogo — não precisa estar pronto pra ter o mapa jogável.

## 6. Animação customizada só quando precisar de algo único

Para movimento padrão (andar, correr, atacar básico), sprites simples de 3-4 quadros por direção bastam. Reservar atenção extra pras habilidades extraordinárias (telecinese, domínio do fogo, etc.), que precisam de efeitos visuais próprios (partículas, shaders) em vez de só troca de sprite.
