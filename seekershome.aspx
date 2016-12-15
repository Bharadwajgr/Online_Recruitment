<%@ Page Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="seekershome.aspx.cs" Inherits="myjob.seekershome" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




  
    
    
    
    
    
    
    
    <table cellpadding="0" cellspacing="0" style="width: 100%; height: 321px">
        <tr>
            <td style="height: 57px; width: 511px;" valign="top" >
                <asp:Label ID="Label1" runat="server" Text="Hi  !!  " Font-Size="xx-large" 
                    Font-Bold="True" Font-Color="orange" ForeColor="#0000CC" font-family= "MS Reference Sans Serif"></asp:Label>
                <span 
                    
                    style="font-family: 'MS Reference Sans Serif'; color: #0000CC; font-size: x-large; font-weight: bold;">&nbsp;&nbsp;&nbsp; Welcome 
                to jobs.com<br />
                <br />
                            <asp:Menu ID="Menu2" runat="server" ForeColor="Blue" Height="12px" 
                                StaticSubMenuIndent="" Width="193px">
                                <DynamicItemTemplate>
                                    <%# Eval("Text") %>
                                </DynamicItemTemplate>
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/Searchjob.aspx" Text="Search Jobs" 
                                        Value="Search Jobs"></asp:MenuItem>
                                </Items>
                            </asp:Menu>
                        </span></td>
            <td style="height: 57px" valign="top" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Label ID="lbl1" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Monotype Corsiva" Font-Size="Medium"></asp:Label>
            </td>
        </tr>
        </table>



</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .style4
    {
        height: 22px;
    }
</style>
</asp:Content>

