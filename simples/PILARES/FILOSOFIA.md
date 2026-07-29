# Pilar 2 — Mundo Vivo e Evolução Livre (Simples)

Adaptação de [FILOSOFIA.md](../../PILARES/FILOSOFIA.md) original. O conteúdo é quase todo independente de engine — o que muda é só a técnica de implementação, indicada em notas **(Simples:)** ao longo do texto.

## Filosofia

O jogador não escolhe uma classe.

Ele constrói sua identidade através das ações que realiza.

O mundo não define quem o personagem é; suas escolhas e práticas definem.

Não existirão classes fixas como Guerreiro, Mago ou Ferreiro.

Todo personagem poderá aprender qualquer profissão ou habilidade.

A evolução ocorrerá naturalmente conforme a prática.

## Sistema de Progressão

Toda habilidade evolui pelo uso.

Exemplos:

- Minerar melhora Mineração.
- Construir melhora Construção.
- Cozinhar melhora Culinária.
- Cortar árvores melhora Exploração Florestal.
- Trabalhar madeira melhora Marcenaria.
- Fabricar ferramentas melhora Ferraria.
- Lutar melhora Combate.
- Pescar melhora Pesca.
- Plantar melhora Agricultura.

Quanto maior a experiência em determinada atividade:

- menor consumo de energia;
- maior velocidade;
- menor desperdício;
- melhor qualidade dos produtos;
- possibilidade de criar itens exclusivos;
- novas técnicas.

O jogador nunca perde a liberdade de aprender outra profissão.

**(Simples:)** cada profissão é um contador de experiência (Resource do Godot: `id`, `xp`, `nível`) com uma tabela de limiares. Sem árvore de talentos complexa — cada nível só destrava um bônus numérico ou uma receita nova.

## Profissões

As mesmas do original: Agricultura, Pecuária, Mineração, Marcenaria, Carpintaria, Ferraria, Construção Civil, Cozinha, Caça, Pesca, Comércio, Medicina, Alquimia (mais tarde), Navegação (caso exista), Soldado, Guarda, Explorador.

Novas profissões poderão surgir durante o desenvolvimento.

## Especialização Regional

As características físicas e habilidades naturais de cada povo definem em quais profissões esse povo se destaca.

Um reino especializado em determinada profissão deve oferecer estrutura melhor para quem quer se desenvolver naquela área — mestres, ferramentas, oficinas.

O jogador pode praticar qualquer profissão em qualquer lugar, mas evoluirá com mais facilidade se buscar o reino mais especializado naquela atividade.

## Economia Viva

Toda profissão produz bens utilizados por outras profissões. Nenhuma profissão existe isoladamente — todas participam da economia do mundo.

```
Madeira → Marcenaria → Tábuas → Construção → Casas
Mineração → Minério → Ferraria → Ferramentas → Todas as outras profissões
```

**(Simples:)** sem simulação de oferta/demanda em tempo real entre NPCs. Preços de compra/venda em cada mapa são valores fixos por reino (lidos de uma tabela), ajustados manualmente conforme a especialização daquele reino — quem quiser adicionar oferta/demanda dinâmica depois, adiciona sem quebrar essa base (mesmo princípio de evolução progressiva do original).

## Mercado

Todo bem produzido pode ser comercializado: madeira, pedra, alimentos, ferramentas, armas, móveis, roupas, minérios, animais.

## Construção

Os jogadores podem modificar permanentemente o mundo: casas, oficinas, fazendas, minas, mercados e, depois, vilas, fortalezas, cidades, portos, castelos.

**(Simples:)** construção em grade (tile-based) em vez de posicionamento livre em 3D — mais rápido de implementar, mais fácil de sincronizar em multiplayer, e ainda transmite a sensação de marca permanente no mundo.

## Organização Social

Jogadores podem formar organizações: famílias, grupos, companhias, clãs, guildas, reinos. Essas organizações administram construções, territórios e recursos.

## Exploração

O mundo incentiva constantemente a exploração. Novas regiões revelam plantas desconhecidas, animais únicos, minérios raros, ruínas, cavernas, construções antigas, tecnologias perdidas.

**(Simples:)** como cada reino é uma cena fechada (não um mundo contínuo), a exploração acontece dentro do mapa daquele reino — névoa de guerra, áreas trancadas até certa condição, e sub-áreas (cavernas, ruínas) como cenas conectadas por uma porta/entrada.

## O Mistério do Mundo

À primeira vista, o mundo parece comum, inspirado na realidade. Com o tempo, o jogador descobre uma história muito mais antiga escondida sob a superfície — ver [HISTORIA.md](HISTORIA.md).

## Habilidades Raras

Alguns indivíduos nascem com predisposições especiais — não são classes nem escolhas na criação do personagem, mas características extremamente incomuns numa pequena parcela da população.

Cada povo domina apenas uma habilidade extraordinária específica, ligada ao reino em que ela é descoberta (ver HISTORIA.md). Os seres humanos são a exceção: alguns nascem com a capacidade de aprender todas as habilidades extraordinárias, não só a do próprio povo.

Essas habilidades coexistem com as profissões comuns, sem substituí-las — um excelente ferreiro, agricultor ou construtor continua tão relevante para a sociedade quanto alguém com uma habilidade rara.

## Princípio Central

O jogo não é, desde o início, sobre "salvar o mundo". O jogador começa vivendo uma vida aparentemente normal — aprende uma profissão, constrói uma casa, vende produtos, funda uma vila, coopera com outros jogadores — e só depois de muitas horas percebe que existe algo muito maior escondido naquele mundo.

A origem exata das habilidades raras permanece um mistério do próprio universo, revelado pela história do jogo (ver "O Mestre Caído" em HISTORIA.md) — não uma predisposição genética explicada de forma simples.
