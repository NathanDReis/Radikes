# Pilares do Projeto

## 1. Mundo em Mapas Separados

Cada reino é uma cena própria — carregada inteira ao entrar nela, sem a complexidade de streaming de um mundo contínuo.

**Objetivos**

- Exploração livre dentro de cada mapa
- Liberdade para o jogador
- Reinos visualmente e mecanicamente distintos
- Novos reinos = novas cenas adicionadas, nunca uma edição do que já existe

## 2. Sensação de Mundo Grande, num Mapa Pequeno

Em top-down 2D não dá pra contar com horizonte distante ou montanhas altas. A sensação de imensidão vem de outro lugar:

- névoa de guerra / áreas não exploradas no mapa;
- parallax e camadas de fundo (montanhas distantes, nuvens) atrás do mapa jogável;
- transições de bioma bem marcadas dentro do próprio mapa (a mata escurece, o chão muda de cor antes de revelar a próxima área);
- um mapa por reino não precisa ser pequeno — só precisa ser fechado, sem streaming.

## 3. Multiplayer Cooperativo

- até 4 jogadores;
- modelo Host + Clientes;
- rede local (LAN) primeiro;
- Godot já traz uma API de alto nível (`MultiplayerAPI`/ENet) que cobre esse escopo sem infraestrutura extra.

## 4. Identidade Visual: Pixel Art Top-Down

Pixel art top-down consistente entre os reinos, com paleta de cor própria por região (ver [ESTILO_VISUAL.md](../ARQUITETURA/ESTILO_VISUAL.md)).

O foco é leitura clara e consistência de estilo — não fidelidade visual.

## 5. Escalabilidade

Cada sistema permite expansão futura.

- novos reinos = novas cenas;
- novos NPCs, missões, itens, profissões, habilidades;
- adicionar um reino nunca deve exigir mexer nos que já existem.
