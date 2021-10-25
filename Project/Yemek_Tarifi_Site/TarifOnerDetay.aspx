<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
        }
        .auto-style15 {
        text-align: right;
        height: 29px;
    }
    .auto-style16 {
        height: 29px;
    }
    .auto-style14 {
        text-align: right;
    }
    .auto-style17 {
        font-weight: bold;
    }
        .auto-style18 {
            height: 27px;
        }
        .auto-style19 {
            height: 27px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <strong>
        <table class="auto-style10">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </strong __designer:mapid="2e6">
        <tr>
            <td class="auto-style15"><strong>Tarif Ad:</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarif Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Yapılış:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Tarif Resim:</strong></td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarif Öneren:</strong></td>
            <strong>
            <td><strong>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </strong></td>
            </strong>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Tarif Sahip Mail</strong></td>
            <td><strong>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style14"><strong>Kategori:</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style17" OnClick="Button1_Click" Text="ONAYLA" Width="200px" />
                </strong></td>
        </tr>
        </table>
    </asp:Panel>
</asp:Content>

