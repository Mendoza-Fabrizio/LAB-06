<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProductosApp.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card cardContainer mt-4">
        <div class="card-header">
            <h1>LISTA DE PRODUCTOS </h1>
        </div>
        <div class="p-3">
            <!-- FORMULARIO PARA BUSCAR -->
            <div>
                <asp:Label class="form-label" ID="Label2" runat="server" Text="Codigo"></asp:Label>
                <asp:TextBox class="form-control" ID="txtCodigo" runat="server"></asp:TextBox>

                <div class="row">

                    <div class="col-4 d-grid gap-2">
                        <asp:Button class="btn btn-success mt-1" ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />                       
                    </div>
                    <div class="col-4 d-grid gap-2">
                         <asp:Button class="btn btn-danger mt-1" ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnMostrar_limpiar"/>
                    </div>
                    <div class="col-4 d-grid gap-2">
                        <asp:Button class="btn btn-primary mt-1" ID="btnAdd" runat="server" Text="Agregar" OnClick="btnMostrar_guardar"/>
                    </div>
                </div>

            </div>
            <!-- FORMULARIO PARA AGREGAR -->
            <div class="row">
                <div class="col-12">
                    <asp:Label class="form-label" ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                

                    <asp:Label class="form-label" ID="Label3" runat="server" Text="Precio"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtPrecio" runat="server" type="number" step="0.01" min="0"></asp:TextBox>
                    

                    <asp:Label class="form-label" ID="Label4" runat="server" Text="Stock"></asp:Label>
                    <asp:TextBox class="form-control" ID="txtStock" runat="server" type="number" step="0.01" min="0"></asp:TextBox>
                   
                </div>
            </div>

            <div class=" d-grid gap-2">
                <asp:Button  class="btn btn-dark mt-1 mb-1" ID="btnMostrar" runat="server" Text="Mostrar todos los productos" OnClick="btnMostrar_Click" />
            </div>
            <!-- LABEL DE RESULTADOS -->
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            <!-- TABLA -->
            <asp:GridView class="table" ID="GridView1" runat="server"></asp:GridView>
        </div>
    </div>

</asp:Content>
