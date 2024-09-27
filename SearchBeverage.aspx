<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultPageMaster.Master" AutoEventWireup="true" CodeBehind="SearchBeverage.aspx.cs" Inherits="de1.SearchBeverage" %>

<%@ Register Src="~/UserControl/ucSearchProduct.ascx" TagPrefix="uc1" TagName="ucSearchProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ucSearchProduct runat="server" id="ucSearchProduct" />
</asp:Content>
