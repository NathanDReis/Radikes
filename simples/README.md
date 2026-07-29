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

## Recomendações para Facilitar o Desenvolvimento

Sem cortar a ambição de design (a documentação continua completa) — só uma ordem de construção que reduz o risco de travar um projeto hobby:

- **Construir em fatia vertical, não em largura.** Os 10 reinos continuam sendo a meta, mas tratar Aurenor + 1-2 reinos como o alvo real de desenvolvimento inicial evita tentar produzir os 10 antes de ter um loop jogável. Os demais ficam documentados (POVOS.md), não em produção ainda.
- **Adiar o multiplayer.** Construir o loop single-player primeiro; plugar rede depois evita debugar gameplay e sincronização ao mesmo tempo — especialmente relevante pro Domínio do Tempo, que afeta todos os jogadores online.
- **Simplificar a sucessão por morte pra v1.** Um "morreu → personagem novo" simples no início, evoluindo depois pro sistema completo de herdeiro/parente temporário (ver "Sucessão e Morte" em [PILARES/HISTORIA.md](PILARES/HISTORIA.md)) — é textura de longo prazo, não o que sustenta o loop moment-a-momento.
- **Definir os níveis avançados das 8 habilidades ainda em aberto como bônus numérico primeiro** (ex.: avançado = +50% do efeito básico), em vez de esperar ter uma ideia qualitativa boa pra cada uma antes de começar (ver "Evolução das Habilidades Extraordinárias" em [PILARES/HISTORIA.md](PILARES/HISTORIA.md)).

## Sugestões para Melhorar a Experiência

Custo de implementação baixo, ganho de experiência alto:

- **Diário/codex que auto-coleta fragmentos de lenda** conforme o jogador os encontra — reforça "Revelação Gradual e Contraditória" (ver [PILARES/HISTORIA.md](PILARES/HISTORIA.md)) dando uma sensação visível de progresso montando o quebra-cabeça. Implementação: uma lista rolável de UI + um `Resource` por fragmento descoberto.
- **Mapa-múndi estilizado** mostrando os reinos já descobertos — reforça "A Paisagem Conta a História" e "O Povo Temido" (ver [PILARES/HISTORIA.md](PILARES/HISTORIA.md)), deixando visível o mundo crescendo conforme o jogador avança.
