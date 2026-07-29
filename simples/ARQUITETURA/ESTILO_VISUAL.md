# Identidade Visual: Pixel Art Top-Down

Substitui o Pilar 4 (Gráficos Realistas) do projeto original. Contexto de jogabilidade em [PILARES/README.md](../PILARES/README.md) — Pilar 4 da versão Simples.

## Objetivo

Consistência de estilo em vez de fidelidade visual. O jogador deve reconhecer um reino pela paleta e pelo tileset, do mesmo jeito que "A Paisagem Conta a História" no original.

## Parâmetros técnicos (ponto de partida, ajustável)

- **Tile:** 16×16 px (referência: Stardew Valley) ou 32×32 px (referência: Eastward, mais detalhado, mais caro de produzir). Escolher um e manter fixo em todos os reinos.
- **Personagem:** 3 a 4 quadros por direção de andar, 4 direções (cima/baixo/esquerda/direita) é o mínimo viável; 8 direções é um upgrade posterior, não bloqueante.
- **Resolução de câmera:** renderizar em baixa resolução interna (ex.: 320×180) e escalar sem suavização (`nearest`) para a tela — é o que mantém os pixels nítidos independente do tamanho de janela.

## Paleta por reino

Cada reino tem uma paleta reduzida e consistente (ex.: 16–32 cores), derivada do bioma e da atmosfera descritos em POVOS.md. Isso é o equivalente em pixel art do Post Process Volume por região do projeto original — ver [ATMOSFERA_REGIOES.md](ATMOSFERA_REGIOES.md).

## Quebra de Estilo Visual por Reino

Adaptação de [ESTILO_VISUAL.md original](../../ARQUITETURA/ESTILO_VISUAL.md) e de "Um Reino Visualmente Diferente" em [HISTORIA.md](../PILARES/HISTORIA.md).

Um reino específico pode romper com o padrão visual do resto do jogo. Em pixel art, isso não precisa de shader de cel-shading (como seria em 3D) — algumas opções bem mais simples de implementar:

- **Troca de paleta radical** — de colorida para quase monocromática (ou vice-versa) ao entrar na cena, via shader de paleta (`CanvasLayer` com um `ColorRect` + shader, ou remapeamento de paleta por LUT).
- **Mudança de resolução efetiva do pixel** — tiles/sprites muito mais grosseiros (pixelização mais forte) só naquele reino, dando a sensação de "mundo mais antigo/primitivo" ou "irreal".
- **Distorção sutil de câmera** — leve zoom, chromatic aberration ou desalinhamento de camadas de parallax, reforçando que ali as regras não são as mesmas.

## Nível de dificuldade

Bem mais simples que o equivalente em UE5 (que exigia shader de cel-shading e contorno customizado). Um shader de paleta em Godot é um exercício razoável mesmo pra quem está começando com shaders — não precisa ser tratado como marco distante, mas ainda vale deixar pra depois de ter o loop principal do jogo funcionando.
