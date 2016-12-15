<%@ Page Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="myjob.admin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    
  
    <table cellpadding="0" cellspacing="0" style="width: 789px; height: 39px">
        <tr>
            <td rowspan="5">
    
    
    
  
                <br />
                <br />
                <asp:Menu ID="Menu2" runat="server" Height="25px" 
                    onmenuitemclick="Menu2_MenuItemClick" Width="93px">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/companydetails.aspx" Text="Companies" 
                            Value="Companies"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                <br />
            </td>
            <td style="height: 27px">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
