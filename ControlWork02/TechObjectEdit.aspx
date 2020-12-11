<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TechObjectEdit.aspx.cs" Inherits="ControlWork02.TechObjectEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
    <div class="jumbotron">
        <h2>Изделие - Редактировать данные:</h2>
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
                <asp:Button ID="EditTechObject" runat="server" Text="Сохранить Изменения" 
                    OnClick="EditTechObject_Click" /></td>
            </tr>
        </table>
    </div>

    <div class="jumbotron">
        <h2>Регламентные работы:</h2>
        <asp:GridView ID="MaintenanceWorksTable" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Type" HeaderText="Наименование" />
                <asp:BoundField DataField="WorkshipDate" HeaderText="Дата выполнения" />
                <asp:BoundField DataField="WorkshipTime" HeaderText="Время выполнения" />
                <asp:BoundField DataField="EngineerID" HeaderText="№ сервисного инженера" />
            </Columns>
        </asp:GridView>
        <br>
        <table>
            <tr>
                <td>Наименование регламентной работы (тип):</td><td>
                    <asp:DropDownList ID="Type" runat="server">
                        <asp:ListItem>Плановое Обслуживание</asp:ListItem>
                        <asp:ListItem>Текущий Ремонт</asp:ListItem>
                        <asp:ListItem>Срочный Ремонт</asp:ListItem>
                    </asp:DropDownList></td> </tr>
            <tr>
                <td>Дата регламентной работы:</td><td>
                    <asp:TextBox ID="WorkshipDate" runat="server"></asp:TextBox></td> </tr>
            <tr>
                <td>Время регламентной работы:</td><td>
                    <asp:TextBox ID="WorkshipTime" runat="server"></asp:TextBox></td> </tr>
            <tr>
                <td>Идентификационный номер сервисного инженера:</td><td>
                    <asp:TextBox ID="EngineerID" runat="server" TextMode="Number"></asp:TextBox></td> </tr>
            <tr>
                <td colspan="2" style="text-align:right">
                    <asp:Button ID="AddMaintenanceWorks" runat="server" Text="Добавить плановыю работу" 
                        OnClick="AddMaintenanceWorks_Click" /></td>
            </tr>
        </table>
    </div>

      <div class="jumbotron">
        <a class="btn btn-primary btn-lg" href="/">&laquo; Вернуться на главную страницу </a>
    </div>
</asp:Content>
