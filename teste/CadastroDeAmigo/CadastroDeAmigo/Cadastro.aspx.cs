using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CadastroDeAmigo
{
    public partial class Cadastro : System.Web.UI.Page
    {


        //sobrescrever o metodo de iniciar na "Page", para manipular o que quiser
        //digitar "override + espaço e procurar o método que quer sobrescrever, que no caso é o OnInit,
        //após selecionar, já é criado o método automaticamente..."
        protected override void OnInit(EventArgs e)
        {
            //o sinal de += é porque o evento "Click" pode ter vários comportamentos, e esse sinal nada mais
            //é que adicionar mais um comportamento para o "Click"
            //obs += + tab tab para criar o método click.

            btnCadastrar.Click += BtnCadastrar_Click;     
        }

        private void BtnCadastrar_Click(object sender, EventArgs e)
        {
            var novoAmigo = new Models.Amigo();
            novoAmigo.NOME = txtNome.Text;
            novoAmigo.EMAIL = TxtEmail.Text;
            novoAmigo.WHATS = TxtWhats.Text;

            bool cadastrado = Dao.Amigo.Cadastrar(novoAmigo);
            if (cadastrado)
            {
                ltMensagem.Text = novoAmigo.NOME + " foi cadastrado(a) com sucesso.";
            }
            else
            {
                ltMensagem.Text = "Ocorreu um erro ao tentar cadastrar " + novoAmigo.NOME;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    }
}