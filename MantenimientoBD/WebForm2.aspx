<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="MantenimientoBD.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="header">
            <h1>BUSQUEDA DE CLIENTES</h1>
        </div>
        <div class="search">
            <asp:Label ID="Label6" runat="server" Text="Codigo"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click"/>
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpliar_Click"/>
        </div>
        <div class="form formtable">

            <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
            <asp:TextBox ID="txtNombres" runat="server" ReadOnly="True"></asp:TextBox>
           

            <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server" ReadOnly="True"></asp:TextBox>
            

            <asp:Label ID="Label7" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server" ReadOnly="True"></asp:TextBox>
            

            <asp:Label ID="Label9" runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server" ReadOnly="True"></asp:TextBox>
            

            <asp:Label ID="Label11" runat="server" Text="Edad"></asp:Label>
            <asp:TextBox ID="txtEdad" runat="server" ReadOnly="True"></asp:TextBox>
            

            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

            <asp:Button ID="btnMostrar" runat="server" Text="Mostrar todos los clientes" Onclick="btnMostrar_Click"/>

        </div>
        <div class="tablecontainer">
            <asp:GridView class="table" ID="GridView1" runat="server"></asp:GridView>
        </div>
    </div>
</asp:Content>
