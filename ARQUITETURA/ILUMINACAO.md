# Iluminação e Atmosfera por Região

## Objetivo

Cada região deve poder ter sua própria identidade visual — mais fria e azulada, mais quente e avermelhada, com neblina densa, etc. Isso reforça o Pilar 2 (Sensação de Imensidão) e o Pilar 3 (a paisagem conta a história): o jogador deve reconhecer uma região só pela atmosfera dela.

## Como isso funciona na UE5

- **Post Process Volume por região** — controla Color Grading (temperatura, white balance). É o jeito mais direto de dar o tom quente-vermelho ou frio-azulado, e permite transição suave nas bordas.
- **Directional Light (sol) com cor/intensidade própria por região** — combinado ao Post Process, reforça o efeito de luz local.
- **Exponential Height Fog por região** — densidade, cor e altura próprias resolvem a neblina.
- **Sky Atmosphere** — controla o céu de forma global, mas pode ser ajustado em conjunto com os overrides locais.

## Estratégia recomendada

Usar Data Layers do World Partition: cada região é um Data Layer, e dentro dele mora seu próprio Post Process Volume + Fog + luz local. Quando o jogador entra na região, o Data Layer correspondente ativa e a atmosfera muda automaticamente, sem afetar as outras regiões carregadas — segue o mesmo princípio de "região = pacote isolado" já definido na arquitetura de mundo.

## Trade-off

Regiões vizinhas terão uma transição visual na fronteira entre elas. Isso pode ser suavizado com blend distance no Post Process Volume, e inclusive reforça a sensação de "cruzar uma divisa natural" entre biomas/povos.

## Preenchimento

Os valores concretos de cada região (cor, neblina, temperatura) ficam em [ILUMINACAO_HISTORIA.md](ILUMINACAO_HISTORIA.md).
