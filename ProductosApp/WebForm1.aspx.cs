using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ProductosApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        /* STRING DE CONEXIÓN */
        private string connectionString = "Data Source=ALEXANDER\\SQLEXPRESS;" +
            "Initial Catalog=VENTAS;Integrated Security=SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /* FUNCION PARA BUSCAR REGISTROS ESPECIFICOS */
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string sqlSelect = "SELECT * FROM PRODUCTOS WHERE codpro = " + txtCodigo.Text;
            SqlConnection connection = new SqlConnection(this.connectionString);
            SqlCommand command = new SqlCommand(sqlSelect, connection);
            SqlDataReader dr;
            try
            {
                connection.Open();
                dr = command.ExecuteReader();
                if (dr.Read())
                {
                    /* EL RESULTADO DE LA BUSQUEDA SE MUESTRA EN EL LABEL */
                    lblResult.Text = dr[1].ToString() + " - " + dr[2].ToString() + " - " + dr[3].ToString();
                }
                connection.Close();
                dr.Close();
            }
            catch (Exception err)
            {
                lblResult.Text = "Error a la hora de buscar el producto: ";
                lblResult.Text += err.Message;
            }
        }

        /* FUNCION PARA MOSTRAR TODOS LOS PRODUCTOS DE LA TABLA */
        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            string SqlSelect = "SELECT codpro AS Codigo, nompro AS Nombre, precio AS Precio, Stock FROM PRODUCTOS";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(SqlSelect, connection);
            SqlDataReader dr;
            try
            {
                connection.Open();
                dr = command.ExecuteReader();
                /* SE RELLENA LA DATA EN EL GRIDVIEW */
                GridView1.DataSource = dr;
                GridView1.DataBind();
                connection.Close();

            }
            catch (Exception err)
            {
                lblResult.Text = "Error al recuperar los productos - ";
                lblResult.Text += err.Message;
            }
        }
        /* LIMPIA LOS CAMPOS AL APRETAR EL BOTON DE LIMPIAR */
        protected void btnMostrar_limpiar(object sender, EventArgs e)
        {
            this.limpiar();
        }
        private void limpiar()
        {
            lblResult.Text = "";
            txtCodigo.Text = "";
            txtNombre.Text = "";
            txtPrecio.Text = "";
            txtStock.Text = "";
        }

        /* VALIDA LOS CAMPOS QUE NO PUEDEN SER VALIDADOS POR LOS CONTROLES DE VALIDACION */
        private bool valid()
        {

            if (txtNombre.Text != "") ;
            {
                double price;
                bool isDouble = Double.TryParse(txtPrecio.Text, out price);
                if (isDouble)
                {
                    double stock;
                    bool isDouble2 = Double.TryParse(txtPrecio.Text, out stock);
                    if (isDouble2)
                    {
                        return true;
                    }
                }
            }
            return false;
        }
        /* GUARDA LOS REGISTROS EN LA TABLA PRODUCTO */
        protected void btnMostrar_guardar(object sender, EventArgs e)
        {
            if (this.valid())
            {
                string SqlSelect = "INSERT INTO PRODUCTOS values('" + txtNombre.Text + "', " + txtPrecio.Text + "," + txtStock.Text + ")";
                SqlConnection connection = new SqlConnection(connectionString);
                SqlCommand command = new SqlCommand(SqlSelect, connection);
                SqlDataReader dr;
                try
                {
                    connection.Open();
                    command.ExecuteNonQuery();
                    lblResult.Text = "Agregado con exito...";
                    connection.Close();
                    this.limpiar();
                }
                catch (Exception err)
                {
                    lblResult.Text = "Error al agregar: ";
                    lblResult.Text += err.Message;
                }
            }
            else
            {
                lblResult.Text = "Parece que algo esta mal.";
            }

        }
    }
}