# Detalhamento do projeto do bloco operativo:
O bloco operativo é um módulo digital implementado em Verilog, que
consiste em um conjunto de operações lógicas e aritméticas destinadas a processar
e exibir informações.
Ele é ativado através do sinal de clock, quando acionado as operações
dentro do bloco são iniciadas. Os dados de entrada são recebidos pelos pinos "LX",
"LS", "LH", "_H", "_M0", "_M1", "_M2" e "X", onde "_M0", "_M1" e "_M2" são
entradas de controle para multiplexadores e "X" é a entrada de dados para um
registrador.
As entradas "LX", "LS" e "LH" são sinais de controle que indicam quando os
registradores devem salvar os dados de sua entrada. O registrador "regX" recebe o
dado de entrada "X" , os registradores "regS" e "regH" recebem o valor da variável
"resultado", onde o registrador "regH" é usado como um auxiliar para armazenar
valores temporários. O resultado final vai para o registrador "regS".
Os sinais "_M0", "_M1" e "_M2" são responsáveis por controlar os
multiplexadores presentes no projeto do bloco operativo. O primeiro multiplexador
tem quatro entradas: "A", "B", "C" e "D", além do sinal "_M0". Com base no valor do
sinal "_M0", o primeiro multiplexador seleciona um dos valores de entrada e o envia
como saída. Os valores de saída desse primeiro multiplexador são, então,P
encaminhados para as entradas do segundo e terceiro multiplexador, que operam
de forma semelhante ao primeiro. Assim, os sinais de controle "_M0", "_M1" e "_M2"
são essenciais para garantir o funcionamento correto dos multiplexadores no bloco
operativo
O bloco operativo também possui um módulo somador que recebe os valores
de saída dos multiplicadores e o sinal "_H" que decide a operação a ser feita soma
ou multiplicação. Então a saída é atribuída na variável "resultado", que é enviada
para o registrador "regS" ou "regH".
O bloco operativo possui um display de sete segmentos para exibir o valor
armazenado no registrador "regS". O valor de "regS" é enviado para um módulo de
exibição que converte o "resultado" em um formato que pode ser exibido no display.
# Detalhamento do bloco de controle baseada em máquina de estados finitos (FSM):
O bloco de controle é responsável por coordenar o funcionamento dos
componentes do bloco operativo, controlando o fluxo de dados e sinais. Ele é
baseado em máquinas de estados finitas, neste caso ele tem sete estados
diferentes.
1. No primeiro estado ele armazena o valor de X e configura a variável
“flag” para 0, indicando que é o início dos estados.
2. No segundo estado ele faz a operação X² e armazena no regS.
3. No terceiro estado ele multiplica o parâmetro A pelo resultado da
operação anterior, sendo armazenado no regH.
4. No quarto estado ele multiplica o parâmetro B por X e armazena o
resultado no regS.
5. No quinto estado ele soma AX² por BX e armazena no regS.
6. No sexto estado ele soma o que está no regS com o parâmetro C.
7. No sétimo estado da “flag” é atualizado para 1 informando que chegou
no último estado.
Com esses estados ele consegue operar uma equação do segundo grau.
# Explicação da conexão entre BC e BO:
O bloco operativo e o bloco de controle estão conectados para operar uma
equação do segundo grau. O bloco operativo é responsável por receber as entradas
e executar as operações lógicas e aritméticas necessárias para processar as
informações, armazenando os resultados em registradores e exibindo o resultado
final em um display de sete segmentos. Já o bloco de controle é responsável por
coordenar o funcionamento do bloco operativo, controlando o fluxo de dados e
sinais através de um conjunto de estados finitos.
# Discussão dos resultados encontrados:
Durante o desenvolvimento do trabalho foi observado que a organização e
estrutura dos módulos se torna extremamente importante para o bom
funcionamento da conexão e execução dos blocos operativo e controlador. Nas
recorrentes aulas que antecederam o trabalho final até o momento atual foi possível
implementar uma operação matemática simples com apenas multiplexadores,
registradores e um display, no qual se provou que é possível evoluir ainda mais
projetos desse tipo, sem precisar se distanciar da arquitetura e lógica já criada no
projeto.
Com a implementação atual, podemos realizar operações com o resultado
final de até 5 bits, o que retorna um resultado positivo, visto que a placa Cyclone
não é pensada para ser apenas uma calculadora.
Seguindo os apontamentos descritos nos parágrafos anteriores, podemos
concluir que o projeto obteve resultados positivos e com potencial de evolução, visto
que as implementações possíveis para a dashboard e sua implementação com a
linguagem de descrição Verilog são vastas e abertas para maiores
desenvolvimentos e pesquisas na área de descrição de hardware.