# Identidade Visual: Pixel Art Top-Down

Contexto de jogabilidade em [PILARES/README.md](../PILARES/README.md), Pilar 4.

## Objetivo

Consistência de estilo em vez de fidelidade visual. O jogador deve reconhecer um reino pela paleta e pelo tileset — reforça "A Paisagem Conta a História" (ver [HISTORIA.md](../PILARES/HISTORIA.md)).

## Ferramenta

**LibreSprite** — editor de pixel art e animação, 100% gratuito, escolhido para manter o projeto sem nenhum custo (ver Fase 0 em [ROADMAP.md](../ROADMAP.md)).

## Dois Níveis de Arte: Retrato vs. Sprite de Mundo

Detalhe rico custa caro quando precisa se repetir em várias direções e quadros de animação — por isso a arte do jogo se divide em dois níveis, cada um com sua própria régua de qualidade:

- **Retrato de diálogo/menu** — um desenho só por personagem, sem animação de movimento. Aqui vale o nível de detalhe rico, com sombreamento em várias camadas de tom (a referência visual trazida para o projeto: um bartender detalhado, estilo pintura digital em baixa resolução, não pixel art de grade rígida). Cada NPC importante ganha um retrato assim — é o que carrega o "uau" visual do jogo.
- **Sprite de mundo (overworld)** — o personagem andando pelo mapa. Precisa ser simples o bastante pra existir em várias direções × vários quadros de animação × todo NPC de todo reino, então usa pixel art de grade rígida de verdade (bordas duras, sem anti-aliasing), na mesma paleta e desenho de personagem do retrato, só sem o sombreamento interno rico.

## Parâmetros técnicos (ponto de partida, ajustável)

- **Sprite de mundo:** 32×32 px por tile (referência: Stardew Valley) — no meio-termo entre simples e com alguma presença visual. 16×16 continua sendo um fallback ainda mais leve, se o volume de arte (10 reinos × NPCs × animações) pesar demais na prática.
- **Retrato de diálogo:** resolução livre, bem maior que o sprite de mundo (o objetivo é detalhe, não performance) — um PNG por personagem, sem grade de tile a respeitar.
- **Personagem (sprite de mundo):** 3 a 4 quadros por direção de andar, 4 direções (cima/baixo/esquerda/direita) é o mínimo viável; 8 direções é um upgrade posterior, não bloqueante.
- **Resolução de câmera:** renderizar em baixa resolução interna (ex.: 320×180) e escalar sem suavização (`nearest`) para a tela — é o que mantém os pixels nítidos independente do tamanho de janela.

## Paleta por reino

Cada reino tem uma paleta reduzida e consistente (32–64 cores), derivada do bioma e da atmosfera descritos em POVOS.md — ver [ATMOSFERA_REGIOES.md](ATMOSFERA_REGIOES.md). Essa paleta vale pro sprite de mundo e pro tileset; o retrato de diálogo pode extrapolar um pouco dela pra dar conta do sombreamento rico, mas mantendo as mesmas cores-base do personagem.

## Quebra de Estilo Visual por Reino

Ver "Um Reino Visualmente Diferente" em [HISTORIA.md](../PILARES/HISTORIA.md).

Um reino específico pode romper com o padrão visual do resto do jogo. Algumas opções simples de implementar em pixel art:

- **Troca de paleta radical** — de colorida para quase monocromática (ou vice-versa) ao entrar na cena, via shader de paleta (`CanvasLayer` com um `ColorRect` + shader, ou remapeamento de paleta por LUT).
- **Mudança de resolução efetiva do pixel** — tiles/sprites muito mais grosseiros (pixelização mais forte) só naquele reino, dando a sensação de "mundo mais antigo/primitivo" ou "irreal".
- **Distorção sutil de câmera** — leve zoom, chromatic aberration ou desalinhamento de camadas de parallax, reforçando que ali as regras não são as mesmas.

## Nível de dificuldade

Um shader de paleta em Godot é um exercício razoável mesmo pra quem está começando com shaders — não precisa ser tratado como marco distante, mas ainda vale deixar pra depois de ter o loop principal do jogo funcionando.
