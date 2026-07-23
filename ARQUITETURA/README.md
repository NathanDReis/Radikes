# Arquitetura do Mundo

Pra um projeto hobby em UE5, dá pra pensar em quatro peças que se apoiam.

## 1. World Partition (o motor de streaming da UE5)

É o sistema que já resolve o "mundo contínuo sem loading" do Pilar 1. Ele divide o mapa em células e carrega só o que está perto do jogador. O ponto chave: não é preciso desenhar o mundo inteiro de antemão — o World Partition aceita que novas células/regiões sejam adicionadas depois sem recriar nada do que já existe.

## 2. Uma região = um "pacote" isolado

Cada paisagem/vila nova (Data Layer ou sublevel dentro do World Partition) deve carregar sua própria vegetação, NPCs, quests locais etc., sem depender de referências fixas a outra região. Assim "criar o reino 2" é literalmente adicionar um pacote novo ao mapa, não editar o reino 1.

## 3. Save/persistência data-driven, não por nível

O erro comum é salvar progresso amarrado ao nome do level ("SaveGame_Vila1"). Melhor: cada ator persistente tem um GUID estável, e o save guarda um dicionário de ID → estado (posição, inventário, flags de missão). Isso significa que adicionar uma região nova nunca invalida saves antigos — só adiciona mais entradas possíveis no dicionário.

## 4. Missões/lore como dados, não como Blueprint espalhado

Definir quests e gatilhos de história em Data Tables/Data Assets (texto, condições, recompensas) em vez de lógica hardcoded em cada nível. Assim expandir a história ("descobrir as ruínas") é criar novos assets de dados, não reescrever sistemas.

## Trade-off

World Partition + Data Layers tem uma curva de aprendizado (não é totalmente intuitivo no editor), mas é o caminho oficial da Epic pra "mundo aberto que cresce aos poucos" — vale o investimento inicial em vez de gambiarra com sublevels manuais antigos (Level Streaming clássico), que dá mais dor de cabeça pra crescer depois.

## 5. Iluminação e Atmosfera por Região

Cada região pode ter sua própria luz solar, neblina e temperatura de cor (fria/azulada, quente/avermelhada), usando Post Process Volume, Directional Light e Exponential Height Fog por Data Layer. Detalhes técnicos em [ILUMINACAO.md](ILUMINACAO.md); valores a preencher por região em [ILUMINACAO_HISTORIA.md](ILUMINACAO_HISTORIA.md).

## 6. Quebra de Estilo Visual por Reino

Exceção pontual e avançada ao Pilar 4: um reino específico pode romper com o realismo (visual cartoon/cel-shaded), como extensão do Post Process Volume por região. Detalhes em [ESTILO_VISUAL.md](ESTILO_VISUAL.md).

## 7. Primeiros Passos

Ordem prática pra começar a desenvolver: personagem jogável com asset genérico antes de arte final, terreno e grama (vento, depois interação com o personagem) direto na engine, e só depois substituir pela arte customizada. Checklist completo em [PRIMEIROS_PASSOS.md](PRIMEIROS_PASSOS.md).
