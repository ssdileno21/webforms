using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CadastroDeAmigo
{
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            listaamigos.DataSource = Dao.Amigo.ListarAmigos();
            listaamigos.DataBind();
        }
    }
}