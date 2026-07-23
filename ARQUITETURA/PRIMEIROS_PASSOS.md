# Primeiros Passos (Checklist)

Ordem recomendada pra começar, evitando o erro comum de terminar toda a arte no Blender antes de ver algo funcionando na engine. Regra geral: **jogável com asset genérico antes de arte final.**

## 1. Personagem jogável primeiro, com asset genérico

Abra o Third Person Template da própria UE5 — já vem com um personagem rigged, animações básicas (idle/andar/correr/pular) e o sistema de movimento funcionando. Isso dá algo jogável em minutos, sem terminar nenhuma arte ainda.

## 2. Terreno na própria UE5

Não precisa vir do Blender — criar um Landscape simples direto na engine e testar a escala do personagem nele.

## 3. Grama com vento (fácil, sem código)

Usar uma malha de grama pronta (Quixel Bridge, gratuito e já integrado à UE5) ou algo simples feito no Blender. O balanço com o vento é resolvido no Material, não em animação: a Epic tem uma função pronta chamada *Simple Grass Wind*, conectada no *World Position Offset* do material — ela desloca só o topo da grama (usando vertex color pra diferenciar raiz de ponta), baseada em seno + tempo.

## 4. Grama reagindo ao personagem (mais avançado — só depois do item 3)

Técnica padrão: uma câmera (*Scene Capture 2D*) olhando de cima pra baixo captura a posição do personagem numa textura (*render target*). O material da grama lê essa textura pela posição no mundo e empurra os vértices pra longe daquele ponto. É a mesma lógica usada em Valheim e Ghost of Tsushima — funciona bem, mas é bem mais complexa que o vento sozinho.

## 5. Só depois disso, personalizar a arte

Com o personagem-placeholder andando e a grama já reagindo, modelar/ajustar o personagem no Blender, exportar como FBX, importar na UE5, e fazer o *retargeting* das animações do template pro esqueleto novo (a UE5 reaproveita as animações mesmo com um mesh diferente, se o esqueleto for compatível).

## 6. Animação customizada só quando precisar de algo único

Pra movimentos humanos padrão, usar Mixamo (gratuito) em vez de animar à mão. Reservar o trabalho manual no Blender pras habilidades extraordinárias (telecinese, velocidade, etc.), que exigem algo sob encomenda.
