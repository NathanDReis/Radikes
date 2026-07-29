# Rádikes

Documentação de design de Rádikes: um jogo cooperativo em pixel art top-down, feito para Godot como hobby pessoal.

- [PILARES/](PILARES/) — pilares do projeto, filosofia, história do mundo e dos povos/reinos.
- [ARQUITETURA/](ARQUITETURA/) — arquitetura técnica para Godot: cenas por reino, pixel art, atmosfera por região, primeiros passos.
- [ROADMAP.md](ROADMAP.md) — passo a passo prático para sair da documentação e chegar num jogo jogável.

## Visão geral

- **Engine:** Godot.
- **Estilo visual:** pixel art top-down, com paleta própria por reino (ver Pilar 4 — Identidade Visual — em [PILARES/README.md](PILARES/README.md)).
- **Estrutura do mundo:** cada reino é uma cena/mapa próprio, conectado por pontos de viagem (estradas, navios, portais) — não um mundo aberto contínuo com streaming.
- **Multiplayer:** cooperativo, até 4 jogadores, Host + Clientes.
- **Ambição de sistemas:** economia viva, profissões que evoluem pela prática, sucessão por morte, os 10 reinos e suas habilidades extraordinárias, e a história oculta do Mestre Caído — tudo com uma técnica leve o bastante pra terminar sozinho.

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
