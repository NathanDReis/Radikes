# Arquitetura do Mundo (Simples — Godot)

Versão adaptada de [ARQUITETURA/README.md](../../ARQUITETURA/README.md) original. Pra um projeto hobby em Godot com mapas separados por reino, a arquitetura fica bem mais simples do que a do mundo aberto contínuo em UE5 — não precisa de streaming.

## 1. Cada reino = uma cena própria

Em vez de World Partition (streaming de um mundo contínuo), cada reino é uma cena (`.tscn`) inteira, carregada ao entrar nela e descarregada ao sair. Isso resolve de graça o "reino 2 não deve exigir editar o reino 1" — cada cena é isolada por definição.

Sub-áreas de um reino (cavernas, ruínas, o reino-paraíso) são cenas menores, conectadas por uma porta/gatilho de transição.

## 2. Viagem entre reinos

Pontos de viagem (estrada, cais, portal) trocam a cena atual pela do reino de destino, com uma tela de carregamento simples entre uma e outra — sem a exigência de mundo contínuo do Pilar 1 original.

## 3. Save/persistência data-driven, não por cena

Mesmo princípio do original: cada entidade persistente tem um ID estável (não o nome do nó), e o save guarda um dicionário ID → estado (posição, inventário, flags de missão) — serializado como JSON ou `Resource` do Godot. Adicionar uma região nova nunca invalida saves antigos.

## 4. Missões/lore como dados, não como script espalhado

Definir quests, diálogos e gatilhos de história como `Resource`/`.tres` (ou JSON) — texto, condições, recompensas — em vez de lógica hardcoded em cada cena. Expandir a história é criar novos arquivos de dados, não reescrever sistemas.

## 5. Atmosfera por Região

Cada cena/reino tem sua própria paleta e iluminação 2D (`CanvasModulate` + `Light2D`), muito mais simples que Post Process Volume da UE5. Detalhes em [ATMOSFERA_REGIOES.md](ATMOSFERA_REGIOES.md).

## 6. Identidade Visual: Pixel Art

Guia de estilo, resolução de tile e paleta em [ESTILO_VISUAL.md](ESTILO_VISUAL.md) — inclui a quebra visual pontual de "Um Reino Visualmente Diferente" (ver HISTORIA.md).

## 7. Primeiros Passos

Checklist prático para começar no Godot, na mesma lógica do original (jogável com placeholder antes de arte final): [PRIMEIROS_PASSOS.md](PRIMEIROS_PASSOS.md).
