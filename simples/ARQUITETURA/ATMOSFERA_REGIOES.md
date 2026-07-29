# Atmosfera das Regiões (a preencher) — Simples

Substitui [ILUMINACAO.md](../../ARQUITETURA/ILUMINACAO.md) e [ILUMINACAO_HISTORIA.md](../../ARQUITETURA/ILUMINACAO_HISTORIA.md) do original. Mesmo objetivo — cada região deve ter identidade visual própria, reconhecível só pela atmosfera — com uma técnica bem mais simples que Post Process Volume/Exponential Height Fog da UE5.

## Como fazer no Godot

- **`CanvasModulate`** por cena — tinge toda a cena com uma cor (fria/azulada, quente/avermelhada), equivalente ao Color Grading do Post Process Volume original.
- **`Light2D`** (modo Ambiente ou pontual) para reforçar a luz local — sol baixo e alaranjado, luz fria de caverna, etc.
- **Partículas simples** (`GPUParticles2D`) para névoa, neve ou poeira — resolve o que a Exponential Height Fog fazia em 3D, sem custo de simular volume.
- **Paleta do tileset/sprites daquela cena** (ver [ESTILO_VISUAL.md](ESTILO_VISUAL.md)) já carrega boa parte da identidade — o `CanvasModulate` só ajusta por cima.

## Estratégia recomendada

Cada reino é sua própria cena (ver [README.md](README.md)), então a atmosfera é só mais uma propriedade configurada naquela cena — sem o problema de transição de fronteira que existia no mundo contínuo original (aqui a "fronteira" já é o carregamento entre cenas).

## Preenchimento

Os valores concretos de cada região ficam aqui, seguindo o mesmo template do original.

## Reino dos Homens (Aurenor)

- **Clima/tom:** frio, chuvoso.
- **Neblina:** sim, constante — via partículas leves + `CanvasModulate` acinzentado.
- **Cor de destaque:** a definir (referência: paleta baixa em contraste, cinzas/verdes/marrons desbotados — ver POVOS.md).
- **Povo antigo associado (se houver):** nenhum (reino dos homens comuns).
- **Notas de atmosfera/lore:** planície de pouca vegetação, rio próximo, floresta distante como fonte de madeira. Atmosfera deve reforçar a sensação de mundo comum/ordinário (Pilar 3).

---

## [Nome da Região]

- **Clima/tom:**
- **Neblina:**
- **Cor de destaque:**
- **Povo antigo associado (se houver):**
- **Notas de atmosfera/lore:**

---
