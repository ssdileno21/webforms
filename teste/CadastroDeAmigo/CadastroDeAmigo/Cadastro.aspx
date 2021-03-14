<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="CadastroDeAmigo.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Cadastro.css" rel="stylesheet"/>
     <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Cadastro de amigos</h1>
            <div class="campo">
                <label for="txtNome">Nome: </label>
                <input type="text" id="txtNome"/>
            </div>
            <div class="campo">
                <label for="txtEmail">Email: </label>
                <input type="text" id="txtEmail"/>
            </div>
            <div class="campo">
                <label for="txtWhats">Whats: </label>
                <input type="text" id="txtWhats"/>
            </div>     
            <div class="campo">
                <input type="submit" title="Cadastrar" value="Cadastrar"  />
            </div>

        </div>
    </form>
</body>
</html>
