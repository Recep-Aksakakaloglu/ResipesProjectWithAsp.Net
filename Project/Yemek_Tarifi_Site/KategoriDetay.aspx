<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style9 {
            width: 100%;
        }
        .auto-style11 {
            background-color: #CCCCCC;
            color: #6600FF;
        }
        .auto-style10 {
            font-size: x-large;
            color: #000099;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="446px">
    <ItemTemplate>
        <table class="auto-style9">
            <tr>
                <td class="auto-style11"><strong><a href="YemekDetay.aspx?Yemekid=<%# Eval ("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval ("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval ("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yemek Tarifi:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval ("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval ("YemekTarih") %>' CssClass="auto-style12"></asp:Label>
                        &nbsp;-&nbsp; <strong><em>Puan:</em></strong> <strong><em>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval ("YemekPuan") %>' CssClass="auto-style12"></asp:Label>
                    </em></strong></td>
            </tr>
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

