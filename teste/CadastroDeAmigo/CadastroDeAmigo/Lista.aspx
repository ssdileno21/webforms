<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="CadastroDeAmigo.Lista" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
            text-align: center;
        }
        .container {
            width: 300px;
            margin: 20px auto;
        }

    </style>
</head>
<body>
    <h1>Lista de amigos</h1>
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr>
                    <th>Nome</th>
                    <th>E-mail</th>
                    <th>Whats</th>
                </tr>
                <asp:ListView runat="server" ID="listaamigos">
                    <ItemTemplate>
                        <tr>
                            <td><%# DataBinder.Eval(Container.DataItem,"Nome") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"Email") %></td>
                            <td><%# DataBinder.Eval(Container.DataItem,"Whats") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </table>
        </div>
    </form>
</body>
</html>
