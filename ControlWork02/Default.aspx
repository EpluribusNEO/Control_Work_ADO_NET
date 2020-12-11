<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ControlWork02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2>Пирогов Денис Сергеевич ИБ-76с</h2>
        <p class="lead">Контрольная Работа по "Автоматизации Управления Жизненным Циклом Изделия"</p>
    </div>

    <div class="jumbotron">
        <h2>Изделия:</h2>
        <asp:GridView ID="TechObjectTable" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Наименование" />
                <asp:BoundField DataField="ProductionDate" HeaderText="Дата производства" />
                <asp:BoundField DataField="ShippingDate" HeaderText="Дата отгрузки" />
                <asp:BoundField DataField="WarrantyPeriod" HeaderText="Гарантийный срок" />
                <asp:TemplateField HeaderText="Редактировать">
                    <ItemTemplate>
                        <a href="TechObjectEdit.aspx?TechObjectID=<%# Eval("Id") %>">Редактировать</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br>
        <table>
            <tr> 
                <td>Наименование:</td>  
                <td><asp:TextBox ID="Name" runat="server"></asp:TextBox></td> 
            </tr>
            <tr> 
                <td>Дата производства:</td>  
                <td><asp:TextBox ID="ProductionDate" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td>Дата отгрузки:</td>
                <td><asp:TextBox ID="ShippingDate" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Гарантийный срок:</td>
                <td><asp:TextBox ID="WarrantyPeriod" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr> <td colspan="2" style="text-align:right">
                <asp:Button ID="AddTechObject" runat="server" Text="Добавить Изделие" OnClick="AddTechObject_Click" /></td>
            </tr>
        </table>
    </div>

   

    <!--
    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>
    -->
</asp:Content>
