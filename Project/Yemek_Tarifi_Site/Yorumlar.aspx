<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style10 {
            background-color: #6699FF;
        }

        .auto-style16 {
            width: 33px;
        }

        .auto-style15 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style17 {
            width: 34px;
        }

        .auto-style11 {
            text-align: left;
            width: 254px;
        }

        .auto-style14 {
            font-size: large;
        }

        .auto-style13 {
            text-align: right;
            width: 82px;
        }

        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style8">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button1_Click1" />
                </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button2_Click1" />
                </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style14" Text='<%# Eval ("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/icons/indir.jpg" Width="30px" />
                        </td>
                        <td class="auto-style12">
                            <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/icons/update.jpg" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style8">
            <tr>
                <td class="auto-style16"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px" Text="+" Width="30px" OnClick="Button3_Click1" />
                </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px" Text="-" Width="30px" OnClick="Button4_Click1" />
                </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style14" Text='<%# Eval ("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/indir.jpg" Width="30px" />
                        </td>
                        <td class="auto-style12">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.jpg" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

