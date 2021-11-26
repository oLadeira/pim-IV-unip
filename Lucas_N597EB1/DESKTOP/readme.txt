## Sistema de Gestão Hoteleira Hotel Mountain ##
*Este projeto é uma aplicação de gestão de hóteis, especificamente para o Hotel Moutain.


## Sobre o Projeto ##
*Aplicação desenvolvida para o PIM do 4ºSemestre do curso de Análise e Desenvolvimento de Sistemas na Universidade Paulista.

*Esta aplicação permite o cadastro de hóspedes.

*Permite o cadastro de funcionários.

*Permite o cadastro de quartos, incluindo suas categorias e seus respectivos valores.

*Permite o cadastro de fornecedores.

*Permite o cadastro de produtos, incluindo valor de compra e venda, categoria do produto e atribuir ele a um fornecedor.

*Permite realizar o processo de Check-In e Check-Out de um hóspede.

*Ao realizar o Check-Out é possível incluir produtos e serviços utilizados pelos hóspedes, acarretando na alteração final do valor.

*Ao realizar o Check-In em um determinado quarto, seu status é alterado para "OCUPADO", evitando vários Check-In em um mesmo quarto. O comboBox lista apenas quartos que estão com o status "DISPONIVEL".


## ATENÇÃO!! - Observações ##
*O banco de dados da aplicação foi hospedada na plataforma somee.com, dispensando a necessidade de criar um banco de dados local, porém de qualquer forma estaremos disponibilizando os scripts sql.

*Todas parâmetros de acesso ao banco de dados encontra-se no arquivo "App.config", dentro da pasta do projeto.

*Caso houver a necessidade de criar o banco localmente, rode primeiro o arquivo "schemaScript". Logo após rode o arquivo "estadosScript", ele possui dados de todos os estados brasileiros, utilizados para preencher alguns comboBox. Logo após rode o script "cargosScript", ele possui a inserção de dados de cargos, necessários para preencher comboBox. Em seguida rode o script "loginScript", nele contém informações de usuário e senha para ter acesso ao sistema (esse script pode ser alterado de acordo com usuário e senha que deseja).

*O script de schema foi disponibilizado para duas versões do SQL Server, sendo elas a versão de 2016 e a de 2019.

*Recomendados executar o sistema pela IDE Visual Studio 2019.

*Para realizar o Check-In/Check-Out é necessário o hóspede estar previamente cadastrado.

*Para realizar o Check-In/Check-Out é necessário um quarto estar previamente cadastrado.

*Removemos as funções de alteração/exclusão das funcionalidades de Check-In/Check-Out, por conta de problemas de integridade de dados.

*Para realizar o Check-Out é necessário informar o CPF do hóspede que já tenha previamente feito o Check-In.

*Para realizar o cadastro de um produto é necessário seu fornecedor estar previamente cadastrado.


## Tecnologias utilizadas ##
*Linguagem C#
*Window Form
*Visual Studio 2019
*SQL Server 2019