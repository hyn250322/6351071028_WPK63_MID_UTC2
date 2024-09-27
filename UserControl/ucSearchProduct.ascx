<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucSearchProduct.ascx.cs" Inherits="de1.UserControl.WebUserControl3" %>
<p>
    Name: <asp:TextBox ID="NameTextBox" runat="server" OnTextChanged="NameTextBox_TextChanged"></asp:TextBox><br />
    Price: <asp:TextBox ID="LowerPriceTextBox" runat="server"></asp:TextBox>-<asp:TextBox ID="UpperPriceTextBox" runat="server"></asp:TextBox><asp:Button ID="SearchButton" runat="server" Text="Search" />
    <br />
    Search Result:
    </p>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="SearchEntityDataSource" style="font-weight: 700">
    <ItemTemplate>
        <div style="float: left; margin: 20px; text-align: center;">
    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' style="color: deeppink;font-weight:bold"></asp:Label><br />
    <asp:Image 
        ID="Image1" 
        runat="server" 
        ImageURL='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>' 
        style="width: 170px; height: 80px;" />
    <br />
    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' style="color: red;font-weight:bold"></asp:Label><br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">View Details</asp:HyperLink><br />
</div>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="SearchEntityDataSource" runat="server" 
    ConnectionString="name=QLDoUongEntities" 
    DefaultContainerName="QLDoUongEntities" 
    EnableFlattening="False" 
    EntitySetName="Beverages"
    where="it.Name like '%' + @Name +'%' and it.Price >= @LowerPrice and it.Price <= @UpperPrice">
    
    <WhereParameters>
        <asp:ControlParameter ControlID="NameTextBox" PropertyName="Text" Name="Name" Type="String" />
        <asp:ControlParameter ControlID="LowerPriceTextBox" Name="LowerPrice" PropertyName="Text" Type="Decimal" />
        <asp:ControlParameter ControlID="UpperPriceTextBox" Name="UpperPrice" PropertyName="Text" Type="Decimal" />
    </WhereParameters>
</asp:EntityDataSource>

</asp:EntityDataSource>


