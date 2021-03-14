<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="CadastroDeAmigo.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<link href="Cadastro.css" rel="stylesheet"/>--%>
     <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Cadastro de amigos</h1>
            <div class="campo">

                <%--HTML PURO:--%>
                <%--<label for="txtNome">Nome: </label>
                <input type="text" id="txtNome"/>--%>

                <%--ASP.NET--%>
                <asp:Label runat="server" AssociatedControlID="txtNome">Nome:</asp:Label>
                <asp:TextBox runat="server" ID="txtNome"></asp:TextBox>
                
            </div>
            <div class="campo">

                <%--HTML PURO:--%>
                <%--<label for="txtEmail">Email: </label>
                <input type="text" id="txtEmail"/>--%>

                <%--ASP.NET--%>
                <asp:Label runat="server" AssociatedControlID="txtEmail">Email:</asp:Label>
                <asp:TextBox runat="server" ID="TxtEmail"></asp:TextBox>

            </div>
            <div class="campo">

                <%--HTML PURO:--%>
                <%--<label for="txtWhats">Whats: </label>
                <input type="text" id="txtWhats"/>--%>

                <%--ASP.NET--%>
                <asp:Label runat="server" AssociatedControlID="txtWhats">Whats:</asp:Label>
                <asp:TextBox runat="server" ID="TxtWhats"></asp:TextBox>

            </div>     
            <div class="campo">

                <%--HTML PURO:--%>
                <%--<input type="submit" title="Cadastrar" value="Cadastrar"  />--%>

                <%--ASP.NET--%>
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" />
            </div>
            <p>
                <%--literal: vai renderizar só texto--%>
                <asp:Literal runat="server" ID="ltMensagem"></asp:Literal>
            </p>
        </div>
    </form>
</body>
</html>
