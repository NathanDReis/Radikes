# Atmosfera das Regiões (a preencher)

Cada região deve ter identidade visual própria, reconhecível só pela atmosfera.

## Como fazer no Godot

- **`CanvasModulate`** por cena — tinge toda a cena com uma cor (fria/azulada, quente/avermelhada).
- **`Light2D`** (modo Ambiente ou pontual) para reforçar a luz local — sol baixo e alaranjado, luz fria de caverna, etc.
- **Partículas simples** (`GPUParticles2D`) para névoa, neve ou poeira.
- **Paleta do tileset/sprites daquela cena** (ver [ESTILO_VISUAL.md](ESTILO_VISUAL.md)) já carrega boa parte da identidade — o `CanvasModulate` só ajusta por cima.

## Estratégia recomendada

Cada reino é sua própria cena (ver [README.md](README.md)), então a atmosfera é só mais uma propriedade configurada naquela cena — a "fronteira" entre regiões já é o carregamento entre cenas, sem transição visual a resolver.

## Preenchimento

Os valores concretos de cada região ficam aqui, seguindo o template abaixo.

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
