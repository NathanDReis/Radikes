# Rádikes (Simples)

Versão enxuta do projeto [Rádikes](../README.md), para Godot em vez de Unreal Engine 5.

Mesma história, mesmo mundo, mesma ambição de sistemas (economia, profissões, habilidades extraordinárias, sucessão por morte, os 10 reinos, o Mestre Caído) — só que com uma técnica muito mais simples de construir: pixel art top-down em vez de realismo 3D, e mapas separados por reino em vez de um mundo aberto contínuo.

- [PILARES/](PILARES/) — os mesmos pilares e a mesma história do projeto original, adaptados onde a mudança de engine/estilo exige.
- [ARQUITETURA/](ARQUITETURA/) — arquitetura técnica para Godot: cenas por reino, pixel art, atmosfera por região, primeiros passos.

## O que muda em relação ao original

- **Engine:** Godot em vez de Unreal Engine 5.
- **Estilo visual:** pixel art top-down em vez de realismo gráfico (Pilar 4 do original vira "Identidade Visual" aqui).
- **Estrutura do mundo:** cada reino é uma cena/mapa próprio, conectado por pontos de viagem (estradas, navios, portais) — não um mundo aberto contínuo com streaming.
- **Multiplayer:** continua cooperativo, até 4 jogadores, Host + Clientes.

## O que não muda

- A história completa (Reino dos Homens, os 10 reinos, o Mestre Caído, os sábios e mestres).
- Os sistemas de progressão: profissões evoluindo pela prática, economia viva, construção, sucessão por morte, as 10 habilidades extraordinárias.
- Os princípios de design do Pilar 3 (mundo comum descoberto aos poucos, nunca uma história obrigatória).
