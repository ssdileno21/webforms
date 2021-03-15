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
        //Diferenças entre IEnumerable e List:
        //    List : Possui métdos de inserir dados e IEnumerable não, pois é simplesmente a lista e nada pode ser alterado
        //public static List<Models.Amigo>
        public static IEnumerable<Models.Amigo> ListarAmigos()
        {
            try
            {
                using (var conexao = new Models.TesteWebFormsEntities())
                {
                    return conexao.Amigoes.ToList();                    
                }
            }
            catch
            {
                return new List<Models.Amigo>();
            }

        }

    }
}