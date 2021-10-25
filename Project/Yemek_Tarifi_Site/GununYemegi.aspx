<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            height: 25px;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            font-size: large;
            text-decoration: underline;
        }
        .auto-style12 {
            text-decoration: underline;
        }
        .auto-style13 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style4">
    <tr>
        <td>
            <asp:DataList ID="DataList2" runat="server" Width="440px">
                <ItemTemplate>
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style6"><strong>
                                <asp:Label ID="Label8" runat="server" CssClass="auto-style10" Text='<%# Eval ("YemekAd") %>'></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <strong><span class="auto-style11">Malzemeler:</span></strong>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval ("YemekMalzeme") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td><strong><span class="auto-style11">Tarif:</span></strong>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval ("YemekTarif") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6">
                                <asp:Image ID="Image2" runat="server" Height="204px" Width="350px" ImageUrl='<%# Eval("YemekResim") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="auto-style4">
                                    <tr>
                                        <td class="auto-style7"><strong><span class="auto-style8"><span class="auto-style12">Puan:</span> </span></strong>
                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval ("YemekPuan") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style13"><strong><span class="auto-style11">Eklenme Tarihi:</span></strong>&nbsp;<em><asp:Label ID="Label12" runat="server" Text='<%# Eval ("YemekTarih") %>'></asp:Label>
                                            </em></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style7">&nbsp;</td>
                                        <td class="auto-style13">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    </table>
</asp:Content>

