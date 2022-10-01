# PSIoT-SARSA

O PSIoT-SARSA é um módulo inteligente implementado na linguagem de programação JavaScript, sob a plataforma Node.js (NODE.JS, 2018) a fim de facilitar a futura integração com o framework  PSIoT-Orch (MORAES; REALE; MARTINS, 2018).

O emprego do algoritmo SARSA na resolução do problema do penhasco (SUTTON; BARTO, 1998), encontrado no repositório de pacotes Node Package Manager (NPM) do Node.js (PANCHISHIN, 2018), foi a base da implementação do PSIoT-SARSA, devido aos seguintes motivos: 

•	Padronização – o problema do penhasco foi implementado no mesmo ambiente de desenvolvimento e execução do PSIoT-Orch.

•	Facilidade de acesso ao código – disponibilidade no repositório público NPM, incentivando a colaboração para melhoria do código ou, até mesmo, para outra forma de aplicação, como no caso do PSIoT-SARSA, cujo ajuste foi promovido para que contemplasse o gerenciamento das taxas de transmissão, com base no estado dos buffers, na prioridade do fluxo de dados e nas restrições impostas pela largura de banda.

•	Trata de um problema clássico de RL – permite o claro entendimento do funcionamento e, em consequência, torna mais simples as adaptações e as transformações do código para atendimento de outras demandas.

# Instalação 

1) Fazer o download e instalar a plataforma Node.js do site https://nodejs.org/en/.
2) Fazer o download e instalar o editor de códigos-fonte Visual Studio Code do site https://code.visualstudio.com/download ou qualquer outro de sua preferência.

# Execução

1) Abrir com o editor de códigos-fonte o arquivo "psiot_sarsa_tres_buffers.js", localizado no diretório "PSIoT-SARSA\node_modules\sarsa" e configurar os fatores (b1b2b3i, T1T2T3i, epsilon) e seus respectivos níveis de estudo.
2) Executar o arquivo "psiot_sarsa_tres_buffers.js" via terminal com o comando: 

PS <diretório> node .\psiot_sarsa_tres_buffers.js

# O MÉTODO “PLANEJAMENTO DE EXPERIMENTOS”

O Planejamento de Experimentos (DoE) é uma técnica que pode ser aplicada, praticamente, em todas as áreas da ciência. A concepção é de que por intermédio de uma série de testes onde as variáveis de entrada de um sistema sejam propositalmente manipuladas, seja possível identificar as razões das mudanças nas variáveis de saída (MONTGOMERY, 2004). Portanto, destina-se a esclarecer as relações de causa e efeito de fatores e resultados, reduzindo o custo de realizar o experimento. Ele compreende várias ferramentas e conceitos estatísticos adequados para lidar com a variação e a flutuação em entradas, configurações e saídas de experimentos (MEER et al., 2018).

Dentre as fases do DOE, destaca-se a Análise estatística dos dados. Nessa fase serão aplicadas as técnicas para observação dos impactos de cada fator e da interação entre eles na variável de resposta.

Uma das ferramentas mais encontradas na literatura para esse fim, é a Análise de Variânica (ANOVA, do inglês Analysis of Variance), que pode ser aplicada sob a base consolidada dos experimentos do PSIoT-SARSA, conforme passos abaixo:

# Instalação

1) Fazer o donwnload e instalar o software RStudio Desktop do site https://www.rstudio.com/products/rstudio/download/.
2) Fazer o donwnload e instalar o software R do site https://cran.r-project.org/bin/windows/base/.
3) Fazer o donwnload e instalar do pacote Rtools do site https://cran.r-project.org/bin/windows/Rtools/rtools42/rtools.html.
4) Instalar as bibliotecas lmtest e readxl por intermédio do RStudio Desktop (Menu de Topo > Tools >  Install packages...).

# Execução

1) Abrir com o RStudio Desktop o arquivo "testes_FAV3.R", que está localizado no diretório "PSIoT-SARSA\doe\tres_buffers\FAV3".
2) Executar o código clicando no botão "Run".

Obs.: o script acessará a base de dados "testes_FAV3.xlsx", que é a consolidação das simulações realizadas pelo módulo PSIoT-SARSA, sob as condições elencadas em Souza (2019).


# REFERÊNCIAS

MEER, A. A. D. et al. Design of Experiments aided holistic testing of cyber-physical energy systems. In: WORKSHOP ON MODELING AND SIMULATION OF CYBER-PHYSICAL ENERGY SYSTEMS (MSCPES), 2018, [s.l.]. Proceedings... [s.l.]: IEEE, 2018.  p. 1-7. Disponível em: <http://dx.doi.org/10.1109/mscpes.2018.8405401>. Acesso em: 27 dez. 2018.

MONTGOMERY, D. C. Introdução ao controle estatístico da qualidade. 4. ed. Rio de Janeiro: LTC, 2004. 532 p.

MORAES, P.; REALE, R. F.; MARTINS, J. S. B. A Publish/Subscribe QoS-aware Framework for Massive IoT Traffic Orchestration. In: INTERNATIONAL WORKSHOP ON ADVANCES IN ICT INFRASTRUCTURES AND SERVICES, 6., 2018, Santiago. Proceedings... Santiago: [s. n.], 2018. p. 1-14. Disponível em: <https://www.researchgate.net/publication/321685463_A_PublishSubscribe_QoS-aware_Framework_for_Massive_IoT_Traffic_Orchestration >. Acesso em: 12 mar. 2018.

NODE.JS. Node.js is a javascript runtime built on chrome’s v8 javascript engine. 2018. Disponível em: <https://nodejs.org/en/>. Acesso em: 12 mar. 2018.

PANCHISHIN. SARSA. 2018. Disponível em: <https://www.npmjs.com/package/sarsa#example>. Acesso em: 14 abr. 2018.

SOUZA, C. E. A. Alocação inteligente de recursos para tráfego massivo da internet das coisas. Dissertação (Mestrado em Sistemas e Computação) - Universidade Salvador, Salvador, Maio 2019. 

SUTTON, R. S.; BARTO, A. G. Reinforcement Learning: an introduction. [s. l.]: Mit Press, 1998. 342 p.