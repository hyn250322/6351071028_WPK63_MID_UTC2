<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCategory.ascx.cs" Inherits="de1.UserControl.WebUserControl1" %>
<asp:DataList ID="DataList1" runat="server" DataKeyField="CatID" DataSourceID="CategoryEntityDataSource">
    <ItemTemplate>
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Category.aspx?id=" +Eval("CatID")  %>' Text='<%# Eval("CatName") + "("+ Eval("Beverages.Count")+")" %>'></asp:HyperLink>
    </div>
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="CategoryEntityDataSource" runat="server" ConnectionString="name=QLDoUongEntities" DefaultContainerName="QLDoUongEntities" EnableFlattening="False" EntitySetName="Categories" Include="Beverages">
</asp:EntityDataSource>

