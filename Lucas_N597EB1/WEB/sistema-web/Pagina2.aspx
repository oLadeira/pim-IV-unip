<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina2.aspx.cs" Inherits="PIM.Pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link  href="CSS.css"rel="stylesheet"/>
    <title>RESERVAS</title>
</head>
<body >
    <form id="form1" runat="server">
       <div>
              <header>
            <div class="logo">
              <a href="Pagina3.aspx">
                  <img src="imagens/banner.hotel.jpg" />
              </a>  
            </div>
            <nav>
                <ul>
                    <li><a href="Pagina3.aspx">INICIO</a></li>
                    <li><a href="Pagina1.aspx">LOGIN</a></li>
                    <li><a href="#topo">RESERVAS</a></li>
                </ul>
            </nav>
        </header>
             <div class="divLogin">
              <h1 class="nomeReserva">RESERVAS</h1>
              
          
              <asp:TextBox cssClass="txtNome" ID="TextBox2" runat="server" placeholder="Nome"></asp:TextBox>
        
             
              <asp:TextBox cssClass="txtTelefone" ID="TextBox3" runat="server"  placeholder="Celular" ></asp:TextBox>
             
              <asp:TextBox cssClass="txtRG" ID="TextBox1" runat="server"  placeholder="RG" ></asp:TextBox>
              
              <asp:Button cssClass="btnReservar" ID="btn_Reservar" runat="server" Text="Reservar"  />
              
                 <asp:Calendar  ID="Calendar2" runat="server"></asp:Calendar>
                 <asp:Calendar  ID="Calendar1" runat="server"></asp:Calendar>
    
              
          </div>    
        </div>
       
    </form>
</body>
</html>
