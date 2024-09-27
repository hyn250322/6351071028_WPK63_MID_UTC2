<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucProductListByCategory.ascx.cs" Inherits="de1.UserControl.WebUserControl2" %>
<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="ProductListByCategoryEntityDataSource">
    <ItemTemplate>
      <div>
          <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label><br />
          <asp:Image ID="Image1" runat="server" ImageURL='<%# "~/images/Beverages/" + Eval("ImageFilePath") %>'/><br />
          <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>'></asp:Label><br />
          <asp:HyperLink ID="HyperLink1" runat="server">View Details</asp:HyperLink><br />
      </div>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    <asp:NumericPagerField />
                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
</asp:ListView>
<asp:EntityDataSource ID="ProductListByCategoryEntityDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Beverages"
    Include="Category"
    where="it.Category.CatID = @CategoryId"  >
    <WhereParameters>
        <asp:QueryStringParameter Name="CategoryId" QueryStringField="id" Type="Int32" />
    </WhereParameters>
</asp:EntityDataSource>

