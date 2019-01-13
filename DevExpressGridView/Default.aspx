<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DevExpressGridView._Default" %>

<%@ Register assembly="DevExpress.Web.v18.2, Version=18.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Products</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    
    <div class="container">

        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID" Theme="Office2010Silver" Width="100%">
<SettingsAdaptivity>
<AdaptiveDetailLayoutProperties ColCount="1"></AdaptiveDetailLayoutProperties>
</SettingsAdaptivity>

            <Settings ShowHeaderFilterButton="True" ShowFilterRow="True" ShowGroupPanel="True" ShowFooter="True" ShowTitlePanel="True" />
            <SettingsBehavior AllowFocusedRow="True" />
            <SettingsSearchPanel Visible="True" />

            <SettingsText Title="Products Information" />

<EditFormLayoutProperties ColCount="1"></EditFormLayoutProperties>
            <Columns>
                <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" ShowSelectCheckbox="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" ShowInCustomizationForm="True" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" ShowInCustomizationForm="True" VisibleIndex="5">
                    <PropertiesTextEdit DisplayFormatString="c">
                    </PropertiesTextEdit>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsInStock" Caption="In Stock" ShowInCustomizationForm="True" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataCheckColumn FieldName="Discontinued" ShowInCustomizationForm="True" VisibleIndex="6">
                </dx:GridViewDataCheckColumn>
                <dx:GridViewDataSpinEditColumn FieldName="UnitsOnOrder" VisibleIndex="3">
                    <PropertiesSpinEdit DisplayFormatString="g">
                    </PropertiesSpinEdit>
                </dx:GridViewDataSpinEditColumn>
            </Columns>
            <TotalSummary>
                <dx:ASPxSummaryItem FieldName="UnitsOnOrder" ShowInColumn="Units On Order" SummaryType="Sum" />
                <dx:ASPxSummaryItem FieldName="ProductID" ShowInColumn="Product ID" SummaryType="Count" />
                <dx:ASPxSummaryItem FieldName="UnitPrice" ShowInColumn="UnitPrice" SummaryType="Average" />
            </TotalSummary>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:northwindConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Discontinued]) VALUES (@ProductName, @UnitPrice, @UnitsInStock, @UnitsOnOrder, @Discontinued)" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [Discontinued] FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [UnitPrice] = @UnitPrice, [UnitsInStock] = @UnitsInStock, [UnitsOnOrder] = @UnitsOnOrder, [Discontinued] = @Discontinued WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitsOnOrder" Type="Int16" />
                <asp:Parameter Name="Discontinued" Type="Boolean" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>
