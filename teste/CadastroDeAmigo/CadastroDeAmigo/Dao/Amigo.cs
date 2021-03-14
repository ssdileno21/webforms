using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CadastroDeAmigo.Dao
{
    public class Amigo
    {
        public static bool Cadastrar(Models.Amigo amigo)
        {

            //Para não ficar criando uma classe para abrir a conexão, com o entity,
            //é possível utilizar o "using", que faz isso automaticamente

            try
            {
                using (var conexao = new Models.TesteWebFormsEntities())
                {
                    conexao.Amigoes.Add(amigo);
                    conexao.SaveChanges();
                    return true;
                }
            }
            catch (Exception)
            {
                return false;
                throw;
            }           
        
        }
    }
}